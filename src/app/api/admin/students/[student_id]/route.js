import pool from "@/lib/db";
import { databaseError, failure, isValidTextId, success } from "@/lib/api";
import { requireAdmin } from "@/lib/admin";

export async function GET(request, { params }) {
  const denied = requireAdmin(); if (denied) return denied;
  const studentId = params.student_id;
  if (!isValidTextId(studentId)) return failure("Invalid student ID.", 400);
  try {
    const student = await pool.query("SELECT student_id, name, programme, email, phone FROM students WHERE student_id = $1", [studentId]);
    if (!student.rows[0]) return failure("Student not found.", 404);
    const [courses, fees, payments] = await Promise.all([
      pool.query("SELECT c.course_id, c.course_name, c.credit_hours, e.enrollment_date, COALESCE(string_agg(DISTINCT l.name, ', '), 'Unassigned') AS lecturer FROM enrollments e JOIN courses c ON c.course_id=e.course_id LEFT JOIN course_lecturers cl ON cl.course_id=c.course_id LEFT JOIN lecturers l ON l.lecturer_id=cl.lecturer_id WHERE e.student_id=$1 GROUP BY c.course_id,e.enrollment_date ORDER BY c.course_id", [studentId]),
      pool.query("SELECT f.fee_id, f.academic_year, f.fee_type, f.amount_due, COALESCE(SUM(p.amount_paid),0) AS amount_paid, f.amount_due-COALESCE(SUM(p.amount_paid),0) AS outstanding_balance FROM fees f LEFT JOIN payments p ON p.fee_id=f.fee_id WHERE f.student_id=$1 GROUP BY f.fee_id ORDER BY f.fee_id", [studentId]),
      pool.query("SELECT payment_id, fee_id, payment_reference, amount_paid, payment_date FROM payments WHERE student_id=$1 ORDER BY payment_date DESC NULLS LAST", [studentId])
    ]);
    return success({ student: student.rows[0], courses: courses.rows, fees: fees.rows, payments: payments.rows });
  } catch (error) { return databaseError(error); }
}
