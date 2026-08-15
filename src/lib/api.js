export function success(data, status = 200) {
  return Response.json({ success: true, data }, { status });
}

export function failure(error, status = 500) {
  return Response.json({ success: false, error }, { status });
}

export function isValidTextId(value) {
  return typeof value === "string" && /^[A-Za-z0-9-]{1,50}$/.test(value);
}

export function isValidIntegerId(value) {
  return /^\d+$/.test(String(value)) && Number(value) > 0;
}

export function databaseError(error) {
  console.error("API database error:", error);
  return failure("An unexpected server error occurred.", 500);
}
