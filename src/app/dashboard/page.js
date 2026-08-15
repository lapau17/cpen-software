import { requireStudentPage } from "@/lib/guards";
import DashboardClient from "./dashboard-client";

export const dynamic = "force-dynamic";

export default function DashboardPage() {
  requireStudentPage();
  return <DashboardClient />;
}
