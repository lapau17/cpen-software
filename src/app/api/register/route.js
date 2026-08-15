import bcrypt from "bcrypt";
import pool from "@/lib/db";

export const runtime = "nodejs";

export async function POST(request) {
  try {
    const { studentId, email, password, confirmPassword } = await request.json();
    const normalizedStudentId = String(studentId || "").trim();
    const normalizedEmail = String(email || "").trim().toLowerCase();

    if (!normalizedStudentId || !normalizedEmail || !password || !confirmPassword) {
      return Response.json({ error: "All fields are required." }, { status: 400 });
    }
    if (password !== confirmPassword) {
      return Response.json({ error: "Passwords do not match." }, { status: 400 });
    }
    if (password.length < 8) {
      return Response.json({ error: "Password must contain at least 8 characters." }, { status: 400 });
    }

    const student = await pool.query("SELECT student_id FROM students WHERE student_id = $1", [normalizedStudentId]);
    if (student.rowCount === 0) {
      return Response.json({ error: "Student ID was not found." }, { status: 400 });
    }

    const existing = await pool.query(
      "SELECT 1 FROM users WHERE student_id = $1 OR email = $2",
      [normalizedStudentId, normalizedEmail]
    );
    if (existing.rowCount > 0) {
      return Response.json({ error: "An account already exists for this Student ID or email." }, { status: 409 });
    }

    const passwordHash = await bcrypt.hash(password, 12);
    await pool.query(
      "INSERT INTO users (student_id, email, password) VALUES ($1, $2, $3)",
      [normalizedStudentId, normalizedEmail, passwordHash]
    );
    return Response.json({ message: "Account created successfully. You can now log in." }, { status: 201 });
  } catch (error) {
    if (error.code === "23505") return Response.json({ error: "An account already exists for this Student ID or email." }, { status: 409 });
    console.error("Registration error:", error);
    return Response.json({ error: "Unable to create the account." }, { status: 500 });
  }
}
