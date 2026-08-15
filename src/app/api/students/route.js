import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";
import { requireAdmin } from "@/lib/admin";

export async function GET() {
  const denied = requireAdmin(); if (denied) return denied;
  try {
    const result = await pool.query("SELECT student_id, name, email, phone, programme FROM students ORDER BY student_id");
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
