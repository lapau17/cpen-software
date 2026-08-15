"use client";
import { useRouter } from "next/navigation";
import { useState } from "react";

export default function AdminLogin() {
  const router = useRouter(); const [email, setEmail] = useState(""); const [password, setPassword] = useState(""); const [error, setError] = useState("");
  async function submit(event) { event.preventDefault(); setError(""); const response = await fetch("/api/admin/login", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ email, password }) }); const body = await response.json(); if (response.ok) router.replace("/admin/dashboard"); else setError(body.error); }
  return <main className="auth-page"><form className="auth-card" onSubmit={submit}><p className="eyebrow">CPEN Department</p><h1>Administrator login</h1><p className="muted">Departmental access only.</p><label>Email<input required type="email" value={email} onChange={(e) => setEmail(e.target.value)} /></label><label>Password<input required type="password" value={password} onChange={(e) => setPassword(e.target.value)} /></label>{error && <p className="form-message">{error}</p>}<button>Log in as administrator</button></form></main>;
}
