import pool from "@/lib/db";
import { databaseError, failure, isValidTextId, success } from "@/lib/api";
import { requireStudentOrAdmin } from "@/lib/admin";

export async function GET(request, { params }) {
  const { student_id: studentId } = params;
  if (!isValidTextId(studentId)) return failure("Invalid student ID.", 400);
  const denied = requireStudentOrAdmin(studentId); if (denied) return denied;
  try {
    const student = await pool.query("SELECT 1 FROM students WHERE student_id = $1", [studentId]);
    if (!student.rows[0]) return failure("Student not found.", 404);
    const result = await pool.query("SELECT calculate_outstanding_fees($1) AS outstanding_fees", [studentId]);
    return success(result.rows[0]?.outstanding_fees || []);
  } catch (error) { return databaseError(error); }
}
