import bcrypt from "bcrypt";
import { NextResponse } from "next/server";
import pool from "@/lib/db";
import { setSessionCookie } from "@/lib/auth";
import { failure } from "@/lib/api";

export const runtime = "nodejs";

export async function POST(request) {
  try {
    const { email, password } = await request.json();
    if (!email || !password) return failure("Email and password are required.", 400);
    const result = await pool.query("SELECT user_id, email, password, role FROM users WHERE email = $1 AND role = 'admin'", [String(email).trim().toLowerCase()]);
    const admin = result.rows[0];
    if (!admin || !(await bcrypt.compare(password, admin.password))) return failure("Invalid admin credentials.", 401);
    return setSessionCookie(NextResponse.json({ success: true, data: { message: "Login successful." } }), { role: "admin" });
  } catch (error) {
    console.error("Admin login error:", error);
    return failure("Unable to log in.", 500);
  }
}
