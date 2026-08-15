import pool from "@/lib/db";
import { getSession } from "@/lib/auth";
import { databaseError, success } from "@/lib/api";
import { requireStudent } from "@/lib/admin";

export async function GET() {
  const denied = requireStudent(); if (denied) return denied;
  try {
    const session = getSession();
    const result = await pool.query(
    `SELECT f.fee_id, f.academic_year, f.fee_type, f.amount_due,
            COALESCE(SUM(p.amount_paid), 0) AS amount_paid,
            f.amount_due - COALESCE(SUM(p.amount_paid), 0) AS outstanding_balance
     FROM fees f
     LEFT JOIN payments p ON p.fee_id = f.fee_id AND p.student_id = f.student_id
     WHERE f.student_id = $1
     GROUP BY f.fee_id, f.academic_year, f.fee_type, f.amount_due
     ORDER BY f.fee_id`,
    [session.studentId]
    );
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
