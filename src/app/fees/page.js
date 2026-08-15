import { requireStudentPage } from "@/lib/guards"; import StudentModule from "@/components/StudentModule";
export default function Page(){requireStudentPage();return <StudentModule type="fees"/>;}
