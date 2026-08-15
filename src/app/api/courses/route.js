import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";

export async function GET() {
  try {
    const result = await pool.query("SELECT course_id, course_name, credit_hours FROM courses ORDER BY course_id");
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
