import pool from "@/lib/db";
import { databaseError, failure, isValidTextId, success } from "@/lib/api";
import { requireStudentOrAdmin } from "@/lib/admin";

export async function GET(request, { params }) {
  const { student_id: studentId } = params;
  if (!isValidTextId(studentId)) return failure("Invalid student ID.", 400);
  const denied = requireStudentOrAdmin(studentId); if (denied) return denied;
  try {
    const result = await pool.query("SELECT student_id, name, email, phone, programme FROM students WHERE student_id = $1", [studentId]);
    if (!result.rows[0]) return failure("Student not found.", 404);
    return success(result.rows[0]);
  } catch (error) { return databaseError(error); }
}
