import { redirect } from "next/navigation";
import { getSession, isAdmin } from "@/lib/auth";
import AdminResource from "./resource";
export const dynamic="force-dynamic";
const titles={courses:"Courses",enrollments:"Enrollments",lecturers:"Lecturers","teaching-assistants":"Teaching Assistants","lecturer-courses":"Lecturer-Course Assignments","lecturer-tas":"Lecturer-TA Assignments",fees:"Fees",payments:"Payments","outstanding-balances":"Outstanding Balances",users:"User Management",roles:"Roles / Access",reports:"Reports",settings:"Settings"};
export default function Page({params}){if(!isAdmin(getSession()))redirect("/admin/login");if(!titles[params.section])redirect("/admin/dashboard");return <AdminResource section={params.section} title={titles[params.section]}/>;}
