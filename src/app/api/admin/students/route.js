import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";
import { requireAdmin } from "@/lib/admin";

export async function GET(request) {
  const denied = requireAdmin(); if (denied) return denied;
  const search = new URL(request.url).searchParams.get("search")?.trim() || "";
  try {
    const result = await pool.query(`SELECT s.student_id, s.name, s.programme, s.email, s.phone,
      COALESCE(SUM(f.amount_due), 0) - COALESCE(SUM(p.paid), 0) AS outstanding_balance
      FROM students s LEFT JOIN fees f ON f.student_id = s.student_id
      LEFT JOIN (SELECT fee_id, SUM(amount_paid) AS paid FROM payments GROUP BY fee_id) p ON p.fee_id = f.fee_id
      WHERE s.student_id ILIKE $1 OR s.name ILIKE $1
      GROUP BY s.student_id, s.name, s.programme, s.email, s.phone ORDER BY s.student_id`, [`%${search}%`]);
    return success(result.rows);
  } catch (error) { return databaseError(error); }
}
