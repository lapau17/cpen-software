import pool from "@/lib/db";
import { getSession } from "@/lib/auth";
import { databaseError, success } from "@/lib/api";
import { requireStudent } from "@/lib/admin";

export async function GET() {
  const denied = requireStudent(); if (denied) return denied;
  try {
    const session = getSession();
    const result = await pool.query("SELECT calculate_outstanding_fees($1) AS fees", [session.studentId]);
    const fees = result.rows[0]?.fees || [];
    const totalOutstanding = fees.reduce((sum, fee) => sum + Number(fee.outstanding_balance || 0), 0);
    return success({ fees, totalOutstanding });
  } catch (error) { return databaseError(error); }
}
