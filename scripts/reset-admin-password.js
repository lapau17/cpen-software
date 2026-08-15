const bcrypt = require("bcrypt");
const { Client } = require("pg");
const fs = require("fs");

if (fs.existsSync(".env.local")) {
  for (const line of fs.readFileSync(".env.local", "utf8").split(/\r?\n/)) {
    const index = line.indexOf("=");
    if (index > 0 && !line.trimStart().startsWith("#")) {
      process.env[line.slice(0, index).trim()] ||= line.slice(index + 1).trim().replace(/^['"]|['"]$/g, "");
    }
  }
}

const [email, password] = process.argv.slice(2);
if (!email || !password || password.length < 12) {
  console.error("Usage: node scripts/reset-admin-password.js admin@example.edu a-strong-password");
  process.exit(1);
}

(async () => {
  const client = new Client({ user: process.env.DB_USER, host: process.env.DB_HOST, database: process.env.DB_NAME, password: process.env.DB_PASSWORD, port: Number(process.env.DB_PORT) });
  await client.connect();
  try {
    const passwordHash = await bcrypt.hash(password, 12);
    const result = await client.query("UPDATE users SET password = $1 WHERE email = $2 AND role = 'admin'", [passwordHash, email.trim().toLowerCase()]);
    if (result.rowCount !== 1) throw new Error("No administrator account exists for that email.");
    console.log("Administrator password updated.");
  } finally { await client.end(); }
})().catch((error) => { console.error("Unable to reset administrator password:", error.message); process.exit(1); });
