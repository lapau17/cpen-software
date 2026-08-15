"use client";

import Link from "next/link";
import { useState } from "react";

export default function RegisterPage() {
  const [form, setForm] = useState({ studentId: "", email: "", password: "", confirmPassword: "" });
  const [message, setMessage] = useState("");
  const [loading, setLoading] = useState(false);

  async function submit(event) {
    event.preventDefault();
    setLoading(true); setMessage("");
    const response = await fetch("/api/register", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
    const data = await response.json();
    setMessage(data.message || data.error);
    setLoading(false);
  }

  return <main className="auth-page"><form className="auth-card" onSubmit={submit}>
    <p className="eyebrow">CPEN Department</p><h1>Create your student account</h1><p className="muted">Register with the Student ID recorded by the department.</p>
    {[["studentId", "Student ID", "text"], ["email", "Email address", "email"], ["password", "Password (at least 8 characters)", "password"], ["confirmPassword", "Confirm password", "password"]].map(([name, label, type]) => <label key={name}>{label}<input required type={type} name={name} value={form[name]} onChange={(e) => setForm({ ...form, [name]: e.target.value })} /></label>)}
    {message && <p className="form-message">{message}</p>}<button disabled={loading}>{loading ? "Creating account…" : "Create account"}</button><p className="muted">Already registered? <Link href="/login">Log in</Link></p>
  </form></main>;
}
