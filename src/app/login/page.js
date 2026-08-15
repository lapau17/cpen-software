"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";

export default function LoginPage() {
  const router = useRouter(); const [studentId, setStudentId] = useState(""); const [password, setPassword] = useState(""); const [message, setMessage] = useState(""); const [loading, setLoading] = useState(false);
  async function submit(event) { event.preventDefault(); setLoading(true); setMessage(""); const response = await fetch("/api/login", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ studentId, password }) }); const data = await response.json(); if (response.ok) router.push("/dashboard"); else setMessage(data.error); setLoading(false); }
  return <main className="auth-page"><form className="auth-card" onSubmit={submit}><p className="eyebrow">CPEN Department</p><h1>Student Portal</h1><p className="muted">Log in to view your academic information.</p><label>Student ID<input required value={studentId} onChange={(e) => setStudentId(e.target.value)} /></label><label>Password<input required type="password" value={password} onChange={(e) => setPassword(e.target.value)} /></label>{message && <p className="form-message">{message}</p>}<button disabled={loading}>{loading ? "Logging in…" : "Log in"}</button><p className="muted">No account? <Link href="/register">Register here</Link></p></form></main>;
}
