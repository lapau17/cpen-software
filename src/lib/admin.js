import { getSession, isAdmin, isStudent } from "@/lib/auth";
import { failure } from "@/lib/api";

export function requireAdmin() {
  const session = getSession();
  if (!session) return failure("Authentication is required.", 401);
  return isAdmin(session) ? null : failure("Administrator access is required.", 403);
}

export function requireStudent() {
  const session = getSession();
  if (!session) return failure("Authentication is required.", 401);
  return isStudent(session) ? null : failure("Student access is required.", 403);
}

export function requireStudentOrAdmin(studentId) {
  const session = getSession();
  if (!session) return failure("Authentication is required.", 401);
  if (isAdmin(session) || (session.role === "student" && session.studentId === studentId)) return null;
  return failure("You are not authorized to access this student record.", 403);
}
