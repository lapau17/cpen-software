import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";

export async function GET() {
  try {
    const result = await pool.query("SELECT lecturer_id, name, email FROM lecturers ORDER BY lecturer_id");
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
