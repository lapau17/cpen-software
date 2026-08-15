const bcrypt = require("bcrypt");
const { Client } = require("pg");
const fs = require("fs");

if (fs.existsSync(".env.local")) {
  for (const line of fs.readFileSync(".env.local", "utf8").split(/\r?\n/)) {
    const index = line.indexOf("=");
    if (index > 0 && !line.trimStart().startsWith("#")) process.env[line.slice(0, index).trim()] ||= line.slice(index + 1).trim().replace(/^['"]|['"]$/g, "");
  }
}

const [email, password] = process.argv.slice(2);
if (!email || !password || password.length < 12) {
  console.error("Usage: node scripts/create-admin.js admin@example.edu a-strong-password");
  process.exit(1);
}

const required = ["DB_USER", "DB_HOST", "DB_NAME", "DB_PASSWORD", "DB_PORT"];
for (const key of required) if (!process.env[key]) { console.error(`Missing ${key}. Run through Next.js environment or configure it first.`); process.exit(1); }

(async () => {
  const client = new Client({ user: process.env.DB_USER, host: process.env.DB_HOST, database: process.env.DB_NAME, password: process.env.DB_PASSWORD, port: Number(process.env.DB_PORT) });
  await client.connect();
  try {
    const hash = await bcrypt.hash(password, 12);
    await client.query("INSERT INTO users (student_id, email, password, role) VALUES (NULL, $1, $2, 'admin')", [email.trim().toLowerCase(), hash]);
    console.log("Administrator account created.");
  } finally { await client.end(); }
})().catch((error) => { console.error("Unable to create administrator:", error.message); process.exit(1); });
