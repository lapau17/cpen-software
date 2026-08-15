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
      `SELECT f.student_id, f.fee_id, f.academic_year, f.fee_type, f.amount_due,
              COALESCE(SUM(p.amount_paid), 0) AS amount_paid,
              f.amount_due - COALESCE(SUM(p.amount_paid), 0) AS outstanding_amount
       FROM fees f LEFT JOIN payments p ON p.fee_id = f.fee_id AND p.student_id = f.student_id
       WHERE f.student_id = $1
       GROUP BY f.student_id, f.fee_id, f.academic_year, f.fee_type, f.amount_due
       ORDER BY f.fee_id`, [studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
