import pool from "@/lib/db";
import { getSession } from "@/lib/auth";
import { databaseError, success } from "@/lib/api";
import { requireStudent } from "@/lib/admin";

export async function GET() {
  const denied = requireStudent(); if (denied) return denied;
  try {
    const session = getSession();
    const result = await pool.query(
    `SELECT payment_reference, amount_paid, payment_date, fee_id
     FROM payments WHERE student_id = $1
     ORDER BY payment_date DESC NULLS LAST, payment_id DESC`,
    [session.studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
