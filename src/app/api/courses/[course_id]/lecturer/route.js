import pool from "@/lib/db";
import { databaseError, failure, isValidTextId, success } from "@/lib/api";

export async function GET(request, { params }) {
  const { course_id: courseId } = params;
  if (!isValidTextId(courseId)) return failure("Invalid course ID.", 400);
  try {
    const course = await pool.query("SELECT 1 FROM courses WHERE course_id = $1", [courseId]);
    if (!course.rows[0]) return failure("Course not found.", 404);
    const result = await pool.query(
      `SELECT c.course_id, c.course_name, l.lecturer_id, l.name AS lecturer_name, l.email AS lecturer_email
       FROM courses c JOIN course_lecturers cl ON cl.course_id = c.course_id
       JOIN lecturers l ON l.lecturer_id = cl.lecturer_id WHERE c.course_id = $1`, [courseId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
