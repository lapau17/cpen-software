# CPEN 208 Project 2 — Student Management API

A REST-style web service that exposes the PostgreSQL functionality developed for CPEN 208 Project 1. It provides structured JSON access to student records, enrolments, fees and payments, lecturer assignments, teaching-assistant assignments, and outstanding fee calculations.

## Technologies

- Next.js 14 (App Router)
- JavaScript and Node.js
- PostgreSQL (`cpen208_project`)
- `pg` PostgreSQL driver

The project also includes an authenticated student portal. Project 2's REST endpoints are in `src/app/api` and use the same existing database connection in `src/lib/db.js`.

## Roles and administrator setup

Student sessions can access only their own student resource endpoints. Administrator sessions are required for department-wide student data and the `/admin` portal.

Create the first administrator locally (choose your own email and a password of at least 12 characters):

```powershell
npm run create-admin -- admin@yourdepartment.edu "a-strong-password"
```

Then sign in at `/admin/login`. The script hashes the password with bcrypt and creates an account with `role = 'admin'`; it does not expose credentials in source code.

To replace an existing administrator password:

```powershell
npm run reset-admin-password -- admin@yourdepartment.edu "a-new-strong-password"
```

## Setup and running

1. Install dependencies with `npm install`.
2. Create `.env.local` from `.env.example` and provide the PostgreSQL connection values. Never commit this file.
3. Start the service with `npm run dev`.
4. Send requests to `http://localhost:3000` (or the alternative port printed by Next.js).

## Response format

Successful requests return:

```json
{ "success": true, "data": [] }
```

Errors return:

```json
{ "success": false, "error": "Student not found." }
```

The API returns `200` for successful reads, `201` for successful registration, `400` for invalid requests or parameters, `401` when authentication is missing, `403` when the signed-in role is not permitted, `404` for missing resources, and `500` for unexpected server errors.

## Core Project 1 data endpoints

| Method | Endpoint | Purpose |
| --- | --- | --- |
| GET | `/api/students` | Retrieve all student personal records. |
| GET | `/api/students/{student_id}` | Retrieve one student’s personal information. |
| GET | `/api/students/{student_id}/fees` | Retrieve a student’s fees, summed payments, and balances. |
| GET | `/api/students/{student_id}/payments` | Retrieve a student’s payment history. |
| GET | `/api/students/{student_id}/courses` | Retrieve a student’s enrolled courses. |
| GET | `/api/students/{student_id}/outstanding-fees` | Call the student-specific PostgreSQL outstanding-fees function. |
| GET | `/api/courses` | Retrieve available courses. |
| GET | `/api/courses/{course_id}/lecturer` | Retrieve lecturer assignment(s) for a course. |
| GET | `/api/lecturers` | Retrieve lecturers. |
| GET | `/api/lecturers/{lecturer_id}/teaching-assistants` | Retrieve TAs assigned to a lecturer. |
| GET | `/api/teaching-assistants` | Retrieve teaching assistants. |
| GET | `/api/outstanding-fees` | Call the existing database function for all outstanding-fees results. |

### Parameter rules

- `student_id` and `course_id` must be non-empty alphanumeric identifiers (hyphens are allowed).
- `lecturer_id` must be a positive integer.
- A valid identifier that does not exist returns `404`.

### Complete route inventory and authorization

| Method | Endpoint | Response purpose | Required input | Access |
| --- | --- | --- | --- | --- |
| POST | `/api/register` | Account-created message (`201`) | JSON: `studentId`, `email`, `password`, `confirmPassword` | Public; student ID must exist |
| POST | `/api/login` | Student-session message | JSON: `studentId`, `password` | Public |
| POST | `/api/admin/login` | Admin-session message | JSON: `email`, `password` | Public |
| POST | `/api/logout` | Logout message | None | Any visitor |
| GET | `/api/me` | Current student's personal record | None | Student |
| GET | `/api/my-courses` | Current student's enrolments and lecturers | None | Student |
| GET | `/api/my-fees` | Current student's fees, payments, balances | None | Student |
| GET | `/api/my-payments` | Current student's payment history | None | Student |
| GET | `/api/my-outstanding-fees` | Current student's outstanding-fee results and total | None | Student |
| GET | `/api/students` | All student personal records | None | Admin |
| GET | `/api/students/{student_id}` | One student record | `student_id` | Matching student or admin |
| GET | `/api/students/{student_id}/courses` | Student enrolments | `student_id` | Matching student or admin |
| GET | `/api/students/{student_id}/fees` | Student fees and balance | `student_id` | Matching student or admin |
| GET | `/api/students/{student_id}/payments` | Student payment history | `student_id` | Matching student or admin |
| GET | `/api/students/{student_id}/outstanding-fees` | Student outstanding-fee results | `student_id` | Matching student or admin |
| GET | `/api/courses` | Course catalogue | None | Public |
| GET | `/api/courses/{course_id}/lecturer` | Course-to-lecturer assignments | `course_id` | Public |
| GET | `/api/lecturers` | Lecturer directory | None | Public |
| GET | `/api/lecturers/{lecturer_id}/teaching-assistants` | Lecturer-to-TA assignments | `lecturer_id` | Public |
| GET | `/api/teaching-assistants` | Teaching-assistant directory | None | Public |
| GET | `/api/outstanding-fees` | Department-wide outstanding-fee results | None | Admin |
| GET | `/api/admin/stats` | Department totals | None | Admin |
| GET | `/api/admin/students` | Student directory and balances | Optional `search` query | Admin |
| GET | `/api/admin/students/{student_id}` | Full student, courses, fees, payment detail | `student_id` | Admin |
| GET | `/api/admin/resources/{resource}` | Admin resource table | One supported resource name | Admin |
| GET | `/api/test-db` | Connection diagnostic without passwords | None | Admin |

`resource` must be one of `courses`, `enrollments`, `lecturers`, `teaching-assistants`, `lecturer-courses`, `lecturer-tas`, `fees`, `payments`, `outstanding-balances`, or `users`. Data routes use `{ "success": true, "data": ... }` on success and `{ "success": false, "error": ... }` on failure. Login, registration, and logout use a JSON `message` or `error` field.

### Example requests

```text
GET /api/students/22263126
GET /api/students/22263126/fees
GET /api/students/22263126/courses
GET /api/courses/CBAS210/lecturer
GET /api/lecturers/1/teaching-assistants
GET /api/outstanding-fees
```

Example student response:

```json
{
  "success": true,
  "data": {
    "student_id": "22263126",
    "name": "Student Name",
    "email": "student@example.edu",
    "phone": "0000000000",
    "programme": "Computer Engineering"
  }
}
```

## Database and security

The API reuses the existing PostgreSQL pool; it does not create another database or duplicate credentials. Every route uses parameterized SQL queries. Database passwords, environment values, password hashes, and internal database errors are never returned in API responses.

Outstanding-fee results are produced by the existing PostgreSQL `calculate_outstanding_fees` function. The student-specific endpoint uses its parameterized overload.

## Testing

Run the development server, then test the endpoints in a browser, Postman, or PowerShell:

```powershell
Invoke-RestMethod http://localhost:3000/api/students
Invoke-RestMethod http://localhost:3000/api/students/22263126/fees
Invoke-RestMethod http://localhost:3000/api/outstanding-fees
```

Test invalid and unknown values as well:

```text
GET /api/students/not%20valid     # 400
GET /api/students/99999999        # 404
GET /api/lecturers/0/teaching-assistants  # 400
```

## Repository submission

Keep `.env.local`, `node_modules`, and `.next` out of Git. The existing `.gitignore` already excludes these files. The `database/` folder contains exported schema/data/function scripts and a database backup for the Project 2 submission.
