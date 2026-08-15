import Link from "next/link";

export default function Home() {
  return <main className="auth-page"><section className="auth-card"><p className="eyebrow">CPEN Department</p><h1>Student Management Portal</h1><p className="muted">Securely access your academic records, courses, fees, and payments.</p><Link className="primary-link" href="/login">Log in to your portal</Link><p className="muted">New student? <Link href="/register">Create an account</Link></p></section></main>;
}
