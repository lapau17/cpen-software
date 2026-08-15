import { redirect } from "next/navigation";
import { getSession, isStudent } from "@/lib/auth";

export function requireStudentPage() {
  const session = getSession();
  if (!session) redirect("/login");
  if (!isStudent(session)) redirect("/admin/dashboard");
}
