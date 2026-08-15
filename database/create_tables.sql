--
-- PostgreSQL database dump
--

\restrict WQBoMW1eQkFUmmdYRMNMeFFWtykf8YCsAnjxEZtLM7SrvKNV1egiOor8J5uZaCZ

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: calculate_outstanding_fees(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_outstanding_fees() RETURNS json
    LANGUAGE plpgsql
    AS $$
DECLARE
    result JSON;
BEGIN

SELECT json_agg(student_data)

INTO result

FROM
(
    SELECT
        s.student_id,
        s.name AS student_name,
        f.amount_due AS total_fee,
        COALESCE(SUM(p.amount_paid),0) AS total_paid,
        (f.amount_due - COALESCE(SUM(p.amount_paid),0)) AS outstanding_balance

    FROM students s

    JOIN fees f
    ON s.student_id = f.student_id

    LEFT JOIN payments p
    ON f.fee_id = p.fee_id

    GROUP BY
        s.student_id,
        s.name,
        f.amount_due

) AS student_data;


RETURN result;

END;
$$;


--
-- Name: calculate_outstanding_fees(character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_outstanding_fees(p_student_id character varying) RETURNS json
    LANGUAGE sql
    AS $$
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
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: course_lecturers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.course_lecturers (
    course_id character varying(20) NOT NULL,
    lecturer_id integer NOT NULL
);


--
-- Name: courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.courses (
    course_id character varying(20) NOT NULL,
    course_name character varying(100) NOT NULL,
    credit_hours integer
);


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id character varying(20),
    course_id character varying(20),
    enrollment_date date DEFAULT CURRENT_DATE
);


--
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNED BY public.enrollments.enrollment_id;


--
-- Name: fees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fees (
    fee_id integer NOT NULL,
    student_id character varying(20),
    academic_year character varying(20),
    fee_type character varying(50),
    amount_due numeric(10,2) NOT NULL
);


--
-- Name: fees_fee_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fees_fee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fees_fee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fees_fee_id_seq OWNED BY public.fees.fee_id;


--
-- Name: lecturer_tas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lecturer_tas (
    lecturer_id integer NOT NULL,
    ta_id integer NOT NULL
);


--
-- Name: lecturers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lecturers (
    lecturer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100)
);


--
-- Name: lecturers_lecturer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lecturers_lecturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lecturers_lecturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lecturers_lecturer_id_seq OWNED BY public.lecturers.lecturer_id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    student_id character varying(20),
    fee_id integer,
    amount_paid numeric(10,2) NOT NULL,
    payment_date date,
    payment_reference character varying(50)
);


--
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payments_payment_id_seq OWNED BY public.payments.payment_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    student_id character varying(20) NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100),
    phone character varying(20),
    programme character varying(100)
);


--
-- Name: teaching_assistants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teaching_assistants (
    ta_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100)
);


--
-- Name: teaching_assistants_ta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teaching_assistants_ta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teaching_assistants_ta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teaching_assistants_ta_id_seq OWNED BY public.teaching_assistants.ta_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    student_id character varying(20),
    role character varying(20) DEFAULT 'student'::character varying NOT NULL,
    CONSTRAINT users_role_check CHECK (((role)::text = ANY ((ARRAY['student'::character varying, 'admin'::character varying])::text[]))),
    CONSTRAINT users_student_role_check CHECK (((((role)::text = 'admin'::text) AND (student_id IS NULL)) OR (((role)::text = 'student'::text) AND (student_id IS NOT NULL))))
);


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('public.enrollments_enrollment_id_seq'::regclass);


--
-- Name: fees fee_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees ALTER COLUMN fee_id SET DEFAULT nextval('public.fees_fee_id_seq'::regclass);


--
-- Name: lecturers lecturer_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lecturers ALTER COLUMN lecturer_id SET DEFAULT nextval('public.lecturers_lecturer_id_seq'::regclass);


--
-- Name: payments payment_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);


--
-- Name: teaching_assistants ta_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teaching_assistants ALTER COLUMN ta_id SET DEFAULT nextval('public.teaching_assistants_ta_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: course_lecturers course_lecturers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.course_lecturers
    ADD CONSTRAINT course_lecturers_pkey PRIMARY KEY (course_id, lecturer_id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- Name: enrollments enrollments_student_id_course_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_course_id_key UNIQUE (student_id, course_id);


--
-- Name: fees fees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_pkey PRIMARY KEY (fee_id);


--
-- Name: lecturer_tas lecturer_tas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lecturer_tas
    ADD CONSTRAINT lecturer_tas_pkey PRIMARY KEY (lecturer_id, ta_id);


--
-- Name: lecturers lecturers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturers_pkey PRIMARY KEY (lecturer_id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: teaching_assistants teaching_assistants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teaching_assistants
    ADD CONSTRAINT teaching_assistants_pkey PRIMARY KEY (ta_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_student_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_student_id_key UNIQUE (student_id);


--
-- Name: course_lecturers course_lecturers_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.course_lecturers
    ADD CONSTRAINT course_lecturers_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: course_lecturers course_lecturers_lecturer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.course_lecturers
    ADD CONSTRAINT course_lecturers_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(lecturer_id);


--
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: fees fees_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: lecturer_tas lecturer_tas_lecturer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lecturer_tas
    ADD CONSTRAINT lecturer_tas_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(lecturer_id);


--
-- Name: lecturer_tas lecturer_tas_ta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lecturer_tas
    ADD CONSTRAINT lecturer_tas_ta_id_fkey FOREIGN KEY (ta_id) REFERENCES public.teaching_assistants(ta_id);


--
-- Name: payments payments_fee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_fee_id_fkey FOREIGN KEY (fee_id) REFERENCES public.fees(fee_id);


--
-- Name: payments payments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: users users_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict WQBoMW1eQkFUmmdYRMNMeFFWtykf8YCsAnjxEZtLM7SrvKNV1egiOor8J5uZaCZ

