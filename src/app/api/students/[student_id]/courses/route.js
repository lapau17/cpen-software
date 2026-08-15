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
      `SELECT e.student_id, c.course_id, c.course_name, c.credit_hours, e.enrollment_date
       FROM enrollments e JOIN courses c ON c.course_id = e.course_id
       WHERE e.student_id = $1 ORDER BY c.course_id`, [studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
