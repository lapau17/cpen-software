import { redirect } from "next/navigation";
import { getSession, isAdmin } from "@/lib/auth";
import StudentDetails from "./student-details";
export const dynamic = "force-dynamic";
export default function Page({ params }) { if (!isAdmin(getSession())) redirect("/admin/login"); return <StudentDetails studentId={params.student_id} />; }
