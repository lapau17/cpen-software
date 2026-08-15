import pool from "@/lib/db";
import { databaseError, success } from "@/lib/api";
import { requireAdmin } from "@/lib/admin";

export async function GET() {
  const denied = requireAdmin(); if (denied) return denied;
  try {
    const result = await pool.query(`SELECT
      (SELECT COUNT(*) FROM students)::int AS total_students,
      (SELECT COUNT(*) FROM courses)::int AS total_courses,
      (SELECT COUNT(*) FROM enrollments)::int AS total_enrollments,
      (SELECT COUNT(*) FROM lecturers)::int AS total_lecturers,
      (SELECT COUNT(*) FROM teaching_assistants)::int AS total_teaching_assistants,
      COALESCE((SELECT SUM(amount_due) FROM fees), 0) AS total_fees_due,
      COALESCE((SELECT SUM(amount_paid) FROM payments), 0) AS total_payments,
      COALESCE((SELECT SUM(f.amount_due) - SUM(COALESCE(p.paid, 0)) FROM fees f LEFT JOIN (SELECT fee_id, SUM(amount_paid) AS paid FROM payments GROUP BY fee_id) p ON p.fee_id = f.fee_id), 0) AS total_outstanding`);
    return success(result.rows[0]);
  } catch (error) { return databaseError(error); }
}
