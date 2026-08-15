"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";

export default function AdminShell({ children }) {
  const router = useRouter(); const pathname = usePathname();
  async function logout() { await fetch("/api/logout", { method: "POST" }); router.replace("/admin/login"); }
  const links=[["/admin/dashboard","Dashboard"],["/admin/students","Students"],["/admin/courses","Courses"],["/admin/enrollments","Enrollments"],["/admin/lecturers","Lecturers"],["/admin/teaching-assistants","Teaching Assistants"],["/admin/lecturer-courses","Lecturer-Course Assignments"],["/admin/lecturer-tas","Lecturer-TA Assignments"],["/admin/fees","Fees"],["/admin/payments","Payments"],["/admin/outstanding-balances","Outstanding Balances"],["/admin/users","Users"],["/admin/roles","Roles / Access"],["/admin/reports","Reports"],["/admin/settings","Settings"]];
  return <div className="portal-shell admin-shell"><aside className="sidebar"><div className="sidebar-brand"><p className="eyebrow">CPEN Department</p><h1>Admin Portal</h1></div><nav>{links.map(([href,label])=><Link className={pathname===href?"active":""} href={href} key={href}>{label}</Link>)}</nav><button className="sidebar-logout" onClick={logout}>Log out</button></aside><main className="dashboard-page">{children}</main></div>;
}
