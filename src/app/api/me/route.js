import pool from "@/lib/db";
import { databaseError, failure, success } from "@/lib/api";
import { getSession } from "@/lib/auth";
import { requireStudent } from "@/lib/admin";

export async function GET() {
  const denied = requireStudent(); if (denied) return denied;
  try {
    const session = getSession();
    const result = await pool.query(
      "SELECT student_id, name, programme, email, phone FROM students WHERE student_id = $1",
      [session.studentId]
    );
    if (!result.rows[0]) return failure("Student record not found.", 404);
    return success(result.rows[0]);
  } catch (error) { return databaseError(error); }
}
