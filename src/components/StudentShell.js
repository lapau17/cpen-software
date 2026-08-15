"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";

const links = [["/dashboard", "Dashboard"], ["/profile", "Personal Information"], ["/courses", "My Courses"], ["/enrollments", "My Enrollments"], ["/fees", "My Fees"], ["/payments", "My Payments"], ["/outstanding-fees", "Outstanding Fees"]];

export default function StudentShell({ children }) {
  const pathname = usePathname(); const router = useRouter();
  async function logout() { await fetch("/api/logout", { method: "POST" }); router.replace("/login"); }
  return <div className="portal-shell"><aside className="sidebar student-sidebar"><div className="sidebar-brand"><p className="eyebrow">CPEN Department</p><h1>Student Portal</h1></div><nav>{links.map(([href, label]) => <Link className={pathname === href ? "active" : ""} href={href} key={href}>{label}</Link>)}</nav><button className="sidebar-logout" onClick={logout}>Log out</button></aside><main className="dashboard-page">{children}</main></div>;
}
