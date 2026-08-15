import { redirect } from "next/navigation";
import { getSession, isAdmin } from "@/lib/auth";
import StudentDirectory from "./student-directory";
export const dynamic = "force-dynamic";
export default function Page() { if (!isAdmin(getSession())) redirect("/admin/login"); return <StudentDirectory />; }
