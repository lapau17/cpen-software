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
    const result = await pool.query(
      `SELECT payment_id, student_id, fee_id, amount_paid, payment_date, payment_reference
       FROM payments WHERE student_id = $1 ORDER BY payment_date DESC NULLS LAST, payment_id DESC`, [studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
