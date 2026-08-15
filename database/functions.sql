-- Outstanding fee functions used by the Project 2 API.
-- These definitions are also included in create_tables.sql and backup.sql.

CREATE OR REPLACE FUNCTION public.calculate_outstanding_fees()
RETURNS json
LANGUAGE plpgsql
AS $function$
DECLARE
    result JSON;
BEGIN
    SELECT json_agg(student_data)
    INTO result
    FROM (
        SELECT s.student_id,
               s.name AS student_name,
               f.amount_due AS total_fee,
               COALESCE(SUM(p.amount_paid), 0) AS total_paid,
               (f.amount_due - COALESCE(SUM(p.amount_paid), 0)) AS outstanding_balance
        FROM students s
        JOIN fees f ON s.student_id = f.student_id
        LEFT JOIN payments p ON f.fee_id = p.fee_id
        GROUP BY s.student_id, s.name, f.amount_due
    ) AS student_data;
    RETURN result;
END;
$function$;

CREATE OR REPLACE FUNCTION public.calculate_outstanding_fees(p_student_id VARCHAR)
RETURNS json
LANGUAGE sql
AS $function$
    SELECT COALESCE(json_agg(row_to_json(student_data)), '[]'::json)
    FROM (
        SELECT f.fee_id, f.academic_year, f.fee_type, f.amount_due AS total_fee,
               COALESCE(SUM(p.amount_paid), 0) AS total_paid,
               f.amount_due - COALESCE(SUM(p.amount_paid), 0) AS outstanding_balance
        FROM fees f
        LEFT JOIN payments p ON p.fee_id = f.fee_id AND p.student_id = f.student_id
        WHERE f.student_id = p_student_id
        GROUP BY f.fee_id, f.academic_year, f.fee_type, f.amount_due
        ORDER BY f.fee_id
    ) AS student_data;
$function$;
