import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";

export async function GET() {
  try {
    const result = await pool.query("SELECT ta_id, name, email FROM teaching_assistants ORDER BY ta_id");
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
