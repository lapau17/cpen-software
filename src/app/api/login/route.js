import bcrypt from "bcrypt";
import { NextResponse } from "next/server";
import pool from "@/lib/db";
import { setSessionCookie } from "@/lib/auth";

export const runtime = "nodejs";

export async function POST(request) {
  try {
    const { studentId, password } = await request.json();
    const normalizedStudentId = String(studentId || "").trim();
    if (!normalizedStudentId || !password) {
      return Response.json({ error: "Student ID and password are required." }, { status: 400 });
    }

    const result = await pool.query(
      "SELECT student_id, password, role FROM users WHERE student_id = $1 AND role = 'student'",
      [normalizedStudentId]
    );
    const user = result.rows[0];
    if (!user || !(await bcrypt.compare(password, user.password))) {
      return Response.json({ error: "Invalid Student ID or password." }, { status: 401 });
    }

    return setSessionCookie(NextResponse.json({ message: "Login successful." }), { studentId: user.student_id, role: user.role });
  } catch (error) {
    console.error("Login error:", error);
    return Response.json({ error: "Unable to log in." }, { status: 500 });
  }
}
