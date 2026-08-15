import pool from "@/lib/db";
import { databaseError, failure, isValidIntegerId, success } from "@/lib/api";

export async function GET(request, { params }) {
  const { lecturer_id: lecturerId } = params;
  if (!isValidIntegerId(lecturerId)) return failure("Invalid lecturer ID.", 400);
  try {
    const lecturer = await pool.query("SELECT 1 FROM lecturers WHERE lecturer_id = $1", [lecturerId]);
    if (!lecturer.rows[0]) return failure("Lecturer not found.", 404);
    const result = await pool.query(
      `SELECT l.lecturer_id, l.name AS lecturer_name, ta.ta_id, ta.name AS ta_name, ta.email AS ta_email
       FROM lecturers l JOIN lecturer_tas lt ON lt.lecturer_id = l.lecturer_id
       JOIN teaching_assistants ta ON ta.ta_id = lt.ta_id WHERE l.lecturer_id = $1
       ORDER BY ta.ta_id`, [lecturerId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
