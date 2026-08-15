"use client";
import Link from "next/link";
import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import StudentShell from "@/components/StudentShell";

const money = (value) => new Intl.NumberFormat("en-GH", { style: "currency", currency: "GHS" }).format(Number(value || 0));

export default function DashboardClient() {
  const router = useRouter();
  const [data, setData] = useState(null);
  const [error, setError] = useState("");

  useEffect(() => {
    let active = true;
    async function loadDashboard() {
      try {
        const responses = await Promise.all(["/api/me", "/api/my-courses", "/api/my-fees", "/api/my-payments", "/api/my-outstanding-fees"].map((url) => fetch(url)));
        if (responses.some((response) => response.status === 401)) { router.replace("/login"); return; }
        if (responses.some((response) => !response.ok)) throw new Error("We could not load your dashboard. Please refresh and try again.");
        const [me, courses, fees, payments, outstanding] = await Promise.all(responses.map((response) => response.json()));
        if (active) setData({ me: me.data, courses: courses.data, fees: fees.data, payments: payments.data, outstanding: outstanding.data });
      } catch (loadError) {
        if (active) setError(loadError.message === "Failed to fetch" ? "Unable to reach the server. Please check that the development server is running, then refresh." : loadError.message);
      }
    }
    loadDashboard();
    return () => { active = false; };
  }, [router]);

  if (error) return <StudentShell><section className="panel"><h1>Dashboard unavailable</h1><p className="form-message">{error}</p><button onClick={() => window.location.reload()}>Try again</button></section></StudentShell>;
  if (!data) return <StudentShell><p>Loading your dashboard…</p></StudentShell>;

  const paid = data.fees.reduce((sum, fee) => sum + Number(fee.amount_paid), 0);
  return <StudentShell><header className="page-title"><p className="eyebrow">Student overview</p><h1>Welcome, {data.me.name}</h1><p className="muted">{data.me.programme || "Computer Engineering"}</p></header><section className="stat-grid"><article className="summary-card"><span>Student ID</span><strong>{data.me.student_id}</strong></article><article className="summary-card"><span>Enrolled courses</span><strong>{data.courses.length}</strong></article><article className="summary-card"><span>Amount paid</span><strong>{money(paid)}</strong></article><article className="summary-card"><span>Outstanding</span><strong>{money(data.outstanding.totalOutstanding)}</strong></article></section><section className="panel"><h2>Quick access</h2><div className="quick-links"><Link href="/profile">View profile</Link><Link href="/courses">My courses</Link><Link href="/fees">My fees</Link><Link href="/payments">Payment history</Link></div></section></StudentShell>;
}
