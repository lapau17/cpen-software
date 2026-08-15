import pool from "@/lib/db";
import { getSession } from "@/lib/auth";
import { databaseError, success } from "@/lib/api";
import { requireStudent } from "@/lib/admin";

export async function GET() {
  const denied = requireStudent(); if (denied) return denied;
  try {
    const session = getSession();
    const result = await pool.query(
    `SELECT c.course_id, c.course_name, c.credit_hours, e.enrollment_date,
            COALESCE(string_agg(DISTINCT l.name, ', '), 'Not assigned') AS lecturer
     FROM enrollments e
     JOIN courses c ON c.course_id = e.course_id
     LEFT JOIN course_lecturers cl ON cl.course_id = c.course_id
     LEFT JOIN lecturers l ON l.lecturer_id = cl.lecturer_id
     WHERE e.student_id = $1
     GROUP BY c.course_id, c.course_name, c.credit_hours, e.enrollment_date
     ORDER BY c.course_id`,
    [session.studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
