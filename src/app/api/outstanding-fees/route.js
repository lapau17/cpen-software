import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";
import { requireAdmin } from "@/lib/admin";

export async function GET() {
  const denied = requireAdmin(); if (denied) return denied;
  try {
    const result = await pool.query("SELECT calculate_outstanding_fees() AS outstanding_fees");
    return success(result.rows[0]?.outstanding_fees || []);
  } catch (error) { return databaseError(error); }
}
