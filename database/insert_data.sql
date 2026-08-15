--
-- PostgreSQL database dump
--

\restrict 9BqwvWOCQmwJ3dVFzYWF5sunhgSBQLfxagCtWJ1BnLC2oeT37Za22sKnbsqrums

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
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.courses VALUES ('SENG202', 'Differential Equation', 3);
INSERT INTO public.courses VALUES ('CPEN202', 'Computer Systems Design', 3);
INSERT INTO public.courses VALUES ('CPEN204', 'Data Structures and Algorithm', 3);
INSERT INTO public.courses VALUES ('CPEN206', 'Linear Circuits', 3);
INSERT INTO public.courses VALUES ('CPEN208', 'Software Engineering', 3);
INSERT INTO public.courses VALUES ('CPEN212', 'Data Communications', 3);
INSERT INTO public.courses VALUES ('CBAS210', 'Academic Writing 2', 2);


--
-- Data for Name: lecturers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.lecturers VALUES (1, 'Prof John Kutor', NULL);
INSERT INTO public.lecturers VALUES (2, 'Prof Agyare Debra', NULL);
INSERT INTO public.lecturers VALUES (3, 'Madam Gifty Buah', NULL);
INSERT INTO public.lecturers VALUES (4, 'Prof Godfred A. Mills', NULL);
INSERT INTO public.lecturers VALUES (5, 'Prof. John K. Assiamah', NULL);
INSERT INTO public.lecturers VALUES (6, 'Prof. Isaac Adjaye Aboagye', NULL);
INSERT INTO public.lecturers VALUES (7, 'Madam Margaret Aansah Richardson', NULL);


--
-- Data for Name: course_lecturers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.course_lecturers VALUES ('SENG202', 1);
INSERT INTO public.course_lecturers VALUES ('CPEN202', 2);
INSERT INTO public.course_lecturers VALUES ('CPEN204', 3);
INSERT INTO public.course_lecturers VALUES ('CPEN206', 4);
INSERT INTO public.course_lecturers VALUES ('CPEN208', 5);
INSERT INTO public.course_lecturers VALUES ('CPEN212', 6);
INSERT INTO public.course_lecturers VALUES ('CBAS210', 7);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.students VALUES ('22384451', 'Abu Neaquittae Golda', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22357814', 'Adzasa Stephen Yaw', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22375367', 'Afia Beaa Osei-Safo', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22397756', 'Agbemavi Ryan', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22369321', 'Agormeda Nathaniel Tetteh', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22301848', 'Ahmad Mohammed Sahih Kayelgu', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22339520', 'Amprofi Yaa Obeng', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22333597', 'Asante Esme Lilian', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22268986', 'Asante Gabriel Kwaku', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22381577', 'Botchway Daniel', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22315830', 'Brian Assibey-Yeboah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22388189', 'Caleb Mensah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22393520', 'Cyril Desmond Ofori', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22312110', 'David Kwame Odoi-Anim', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22300896', 'Doe Collins Kweku', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22397491', 'Douglas Kwaw Adjei', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22387715', 'Dzidzor Apu Apawudza', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22382302', 'Edward Kakra Ankrah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22379061', 'Emmanuel Akotuah Osae', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22368809', 'Emmanuel Dery', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22370498', 'Ethan Edric Kweku Nartey', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22382425', 'Gilbert Akwasi Sarkodie Yeboah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22396551', 'Jerrold Xornam Kyekye', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22398562', 'Joseph Amankwah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22398596', 'Joshua Appiah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22385323', 'Jude Gyampoh Addo', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22303421', 'Kemausuor Winambe Tetteh-Kumah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22407033', 'Kenzi Segbefia', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22299189', 'Kessey Ntiako David', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22407837', 'Kingsley Caldicock Quartey', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22412615', 'Kofi Boateng Oware-Tano', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22411009', 'Kwaku Aninkorah Barimah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22382547', 'Kwame Ayeh Obeng', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22373317', 'Kwamena Kesse Quaicoe', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22339058', 'Maame Abena Amihere Ahu', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22302628', 'Maame Araba Grant-Aidoo', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22396566', 'Manford Kelvin Oppong', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22325819', 'Nana Adwoa Dansowaah Odoom', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22344703', 'Nana Anokye', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22306910', 'Newlove Yeboaah Kwarfo', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22385472', 'Obeng Ernest Antwi', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22399214', 'Obeng Ruth', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22263126', 'Owusu Koranteng Yaw Poku', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22373463', 'Owusu Nana Boadiwaa', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22381702', 'Paula Akosua Asiedua Frimpong', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22387846', 'Quaicoo Emile', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22263922', 'Romel Alvin Nii Lartey Lartey', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22401641', 'Sandra Naa Adaku Mettle', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22403781', 'Sekyere Kofi Bempong', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22304260', 'Tetteh Christian Edward Nii Mantey', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22304013', 'Tietaah Sonnu', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22302188', 'Van Jerry Quansah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22299949', 'William Enchill', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22415339', 'Kelvin Kwesi Saah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22328334', 'Etsey Hannah Seyram', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22412982', 'Adu Mini', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22321110', 'Gideon Nana Osei Amofa', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22306021', 'Paul Badu Amponsah', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22385391', 'Najiib Abdul-Majeed Stephen', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22394866', 'Joshua Kwame Asirifi', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22382601', 'Eklou Juliet', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22271867', 'De-Andra Rebecca Ayebo', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('224018189', 'Mas''ud Nasir', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22407018', 'Daniel Dwomoh Frimpong', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22376708', 'Adjei Priscilla', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22377537', 'Reuben Adomako', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22400543', 'Ocansey Frederick', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22402666', 'Dogbatse Darlington', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22416112', 'Troy Thomas', NULL, NULL, 'Computer Engineering');
INSERT INTO public.students VALUES ('22395074', 'Lydia Tiwaah', NULL, NULL, 'Computer Engineering');


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.enrollments VALUES (1, '22384451', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (2, '22357814', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (3, '22375367', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (4, '22397756', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (5, '22369321', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (6, '22301848', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (7, '22339520', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (8, '22333597', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (9, '22268986', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (10, '22381577', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (11, '22315830', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (12, '22388189', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (13, '22393520', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (14, '22312110', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (15, '22300896', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (16, '22397491', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (17, '22387715', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (18, '22382302', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (19, '22379061', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (20, '22368809', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (21, '22370498', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (22, '22382425', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (23, '22396551', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (24, '22398562', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (25, '22398596', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (26, '22385323', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (27, '22303421', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (28, '22407033', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (29, '22299189', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (30, '22407837', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (31, '22412615', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (32, '22411009', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (33, '22382547', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (34, '22373317', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (35, '22339058', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (36, '22302628', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (37, '22396566', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (38, '22325819', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (39, '22344703', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (40, '22306910', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (41, '22385472', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (42, '22399214', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (43, '22263126', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (44, '22373463', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (45, '22381702', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (46, '22387846', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (47, '22263922', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (48, '22401641', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (49, '22403781', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (50, '22304260', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (51, '22304013', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (52, '22302188', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (53, '22299949', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (54, '22415339', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (55, '22328334', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (56, '22412982', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (57, '22321110', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (58, '22306021', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (59, '22385391', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (60, '22394866', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (61, '22382601', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (62, '22271867', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (63, '224018189', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (64, '22407018', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (65, '22376708', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (66, '22377537', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (67, '22400543', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (68, '22402666', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (69, '22416112', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (70, '22395074', 'SENG202', '2026-08-06');
INSERT INTO public.enrollments VALUES (71, '22384451', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (72, '22357814', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (73, '22375367', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (74, '22397756', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (75, '22369321', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (76, '22301848', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (77, '22339520', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (78, '22333597', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (79, '22268986', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (80, '22381577', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (81, '22315830', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (82, '22388189', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (83, '22393520', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (84, '22312110', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (85, '22300896', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (86, '22397491', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (87, '22387715', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (88, '22382302', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (89, '22379061', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (90, '22368809', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (91, '22370498', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (92, '22382425', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (93, '22396551', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (94, '22398562', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (95, '22398596', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (96, '22385323', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (97, '22303421', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (98, '22407033', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (99, '22299189', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (100, '22407837', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (101, '22412615', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (102, '22411009', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (103, '22382547', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (104, '22373317', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (105, '22339058', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (106, '22302628', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (107, '22396566', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (108, '22325819', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (109, '22344703', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (110, '22306910', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (111, '22385472', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (112, '22399214', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (113, '22263126', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (114, '22373463', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (115, '22381702', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (116, '22387846', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (117, '22263922', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (118, '22401641', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (119, '22403781', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (120, '22304260', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (121, '22304013', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (122, '22302188', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (123, '22299949', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (124, '22415339', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (125, '22328334', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (126, '22412982', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (127, '22321110', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (128, '22306021', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (129, '22385391', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (130, '22394866', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (131, '22382601', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (132, '22271867', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (133, '224018189', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (134, '22407018', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (135, '22376708', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (136, '22377537', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (137, '22400543', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (138, '22402666', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (139, '22416112', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (140, '22395074', 'CPEN202', '2026-08-06');
INSERT INTO public.enrollments VALUES (141, '22384451', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (142, '22357814', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (143, '22375367', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (144, '22397756', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (145, '22369321', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (146, '22301848', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (147, '22339520', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (148, '22333597', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (149, '22268986', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (150, '22381577', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (151, '22315830', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (152, '22388189', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (153, '22393520', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (154, '22312110', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (155, '22300896', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (156, '22397491', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (157, '22387715', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (158, '22382302', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (159, '22379061', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (160, '22368809', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (161, '22370498', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (162, '22382425', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (163, '22396551', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (164, '22398562', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (165, '22398596', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (166, '22385323', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (167, '22303421', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (168, '22407033', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (169, '22299189', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (170, '22407837', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (171, '22412615', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (172, '22411009', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (173, '22382547', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (174, '22373317', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (175, '22339058', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (176, '22302628', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (177, '22396566', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (178, '22325819', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (179, '22344703', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (180, '22306910', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (181, '22385472', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (182, '22399214', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (183, '22263126', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (184, '22373463', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (185, '22381702', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (186, '22387846', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (187, '22263922', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (188, '22401641', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (189, '22403781', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (190, '22304260', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (191, '22304013', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (192, '22302188', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (193, '22299949', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (194, '22415339', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (195, '22328334', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (196, '22412982', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (197, '22321110', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (198, '22306021', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (199, '22385391', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (200, '22394866', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (201, '22382601', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (202, '22271867', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (203, '224018189', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (204, '22407018', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (205, '22376708', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (206, '22377537', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (207, '22400543', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (208, '22402666', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (209, '22416112', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (210, '22395074', 'CPEN204', '2026-08-06');
INSERT INTO public.enrollments VALUES (211, '22384451', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (212, '22357814', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (213, '22375367', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (214, '22397756', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (215, '22369321', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (216, '22301848', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (217, '22339520', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (218, '22333597', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (219, '22268986', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (220, '22381577', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (221, '22315830', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (222, '22388189', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (223, '22393520', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (224, '22312110', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (225, '22300896', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (226, '22397491', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (227, '22387715', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (228, '22382302', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (229, '22379061', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (230, '22368809', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (231, '22370498', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (232, '22382425', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (233, '22396551', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (234, '22398562', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (235, '22398596', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (236, '22385323', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (237, '22303421', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (238, '22407033', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (239, '22299189', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (240, '22407837', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (241, '22412615', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (242, '22411009', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (243, '22382547', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (244, '22373317', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (245, '22339058', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (246, '22302628', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (247, '22396566', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (248, '22325819', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (249, '22344703', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (250, '22306910', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (251, '22385472', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (252, '22399214', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (253, '22263126', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (254, '22373463', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (255, '22381702', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (256, '22387846', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (257, '22263922', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (258, '22401641', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (259, '22403781', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (260, '22304260', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (261, '22304013', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (262, '22302188', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (263, '22299949', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (264, '22415339', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (265, '22328334', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (266, '22412982', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (267, '22321110', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (268, '22306021', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (269, '22385391', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (270, '22394866', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (271, '22382601', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (272, '22271867', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (273, '224018189', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (274, '22407018', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (275, '22376708', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (276, '22377537', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (277, '22400543', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (278, '22402666', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (279, '22416112', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (280, '22395074', 'CPEN206', '2026-08-06');
INSERT INTO public.enrollments VALUES (281, '22384451', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (282, '22357814', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (283, '22375367', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (284, '22397756', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (285, '22369321', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (286, '22301848', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (287, '22339520', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (288, '22333597', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (289, '22268986', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (290, '22381577', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (291, '22315830', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (292, '22388189', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (293, '22393520', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (294, '22312110', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (295, '22300896', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (296, '22397491', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (297, '22387715', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (298, '22382302', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (299, '22379061', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (300, '22368809', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (301, '22370498', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (302, '22382425', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (303, '22396551', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (304, '22398562', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (305, '22398596', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (306, '22385323', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (307, '22303421', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (308, '22407033', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (309, '22299189', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (310, '22407837', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (311, '22412615', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (312, '22411009', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (313, '22382547', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (314, '22373317', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (315, '22339058', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (316, '22302628', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (317, '22396566', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (318, '22325819', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (319, '22344703', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (320, '22306910', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (321, '22385472', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (322, '22399214', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (323, '22263126', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (324, '22373463', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (325, '22381702', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (326, '22387846', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (327, '22263922', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (328, '22401641', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (329, '22403781', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (330, '22304260', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (331, '22304013', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (332, '22302188', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (333, '22299949', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (334, '22415339', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (335, '22328334', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (336, '22412982', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (337, '22321110', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (338, '22306021', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (339, '22385391', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (340, '22394866', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (341, '22382601', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (342, '22271867', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (343, '224018189', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (344, '22407018', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (345, '22376708', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (346, '22377537', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (347, '22400543', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (348, '22402666', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (349, '22416112', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (350, '22395074', 'CPEN208', '2026-08-06');
INSERT INTO public.enrollments VALUES (351, '22384451', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (352, '22357814', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (353, '22375367', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (354, '22397756', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (355, '22369321', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (356, '22301848', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (357, '22339520', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (358, '22333597', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (359, '22268986', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (360, '22381577', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (361, '22315830', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (362, '22388189', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (363, '22393520', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (364, '22312110', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (365, '22300896', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (366, '22397491', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (367, '22387715', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (368, '22382302', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (369, '22379061', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (370, '22368809', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (371, '22370498', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (372, '22382425', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (373, '22396551', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (374, '22398562', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (375, '22398596', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (376, '22385323', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (377, '22303421', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (378, '22407033', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (379, '22299189', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (380, '22407837', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (381, '22412615', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (382, '22411009', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (383, '22382547', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (384, '22373317', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (385, '22339058', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (386, '22302628', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (387, '22396566', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (388, '22325819', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (389, '22344703', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (390, '22306910', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (391, '22385472', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (392, '22399214', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (393, '22263126', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (394, '22373463', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (395, '22381702', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (396, '22387846', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (397, '22263922', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (398, '22401641', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (399, '22403781', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (400, '22304260', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (401, '22304013', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (402, '22302188', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (403, '22299949', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (404, '22415339', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (405, '22328334', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (406, '22412982', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (407, '22321110', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (408, '22306021', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (409, '22385391', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (410, '22394866', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (411, '22382601', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (412, '22271867', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (413, '224018189', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (414, '22407018', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (415, '22376708', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (416, '22377537', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (417, '22400543', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (418, '22402666', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (419, '22416112', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (420, '22395074', 'CPEN212', '2026-08-06');
INSERT INTO public.enrollments VALUES (421, '22384451', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (422, '22357814', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (423, '22375367', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (424, '22397756', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (425, '22369321', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (426, '22301848', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (427, '22339520', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (428, '22333597', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (429, '22268986', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (430, '22381577', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (431, '22315830', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (432, '22388189', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (433, '22393520', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (434, '22312110', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (435, '22300896', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (436, '22397491', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (437, '22387715', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (438, '22382302', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (439, '22379061', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (440, '22368809', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (441, '22370498', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (442, '22382425', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (443, '22396551', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (444, '22398562', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (445, '22398596', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (446, '22385323', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (447, '22303421', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (448, '22407033', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (449, '22299189', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (450, '22407837', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (451, '22412615', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (452, '22411009', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (453, '22382547', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (454, '22373317', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (455, '22339058', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (456, '22302628', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (457, '22396566', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (458, '22325819', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (459, '22344703', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (460, '22306910', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (461, '22385472', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (462, '22399214', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (463, '22263126', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (464, '22373463', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (465, '22381702', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (466, '22387846', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (467, '22263922', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (468, '22401641', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (469, '22403781', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (470, '22304260', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (471, '22304013', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (472, '22302188', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (473, '22299949', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (474, '22415339', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (475, '22328334', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (476, '22412982', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (477, '22321110', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (478, '22306021', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (479, '22385391', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (480, '22394866', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (481, '22382601', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (482, '22271867', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (483, '224018189', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (484, '22407018', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (485, '22376708', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (486, '22377537', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (487, '22400543', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (488, '22402666', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (489, '22416112', 'CBAS210', '2026-08-06');
INSERT INTO public.enrollments VALUES (490, '22395074', 'CBAS210', '2026-08-06');


--
-- Data for Name: fees; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fees VALUES (1, '22384451', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (2, '22357814', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (3, '22375367', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (4, '22397756', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (5, '22369321', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (6, '22301848', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (7, '22339520', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (8, '22333597', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (9, '22268986', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (10, '22381577', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (11, '22315830', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (12, '22388189', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (13, '22393520', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (14, '22312110', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (15, '22300896', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (16, '22397491', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (17, '22387715', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (18, '22382302', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (19, '22379061', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (20, '22368809', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (21, '22370498', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (22, '22382425', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (23, '22396551', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (24, '22398562', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (25, '22398596', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (26, '22385323', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (27, '22303421', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (28, '22407033', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (29, '22299189', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (30, '22407837', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (31, '22412615', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (32, '22411009', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (33, '22382547', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (34, '22373317', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (35, '22339058', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (36, '22302628', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (37, '22396566', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (38, '22325819', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (39, '22344703', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (40, '22306910', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (41, '22385472', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (42, '22399214', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (43, '22263126', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (44, '22373463', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (45, '22381702', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (46, '22387846', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (47, '22263922', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (48, '22401641', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (49, '22403781', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (50, '22304260', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (51, '22304013', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (52, '22302188', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (53, '22299949', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (54, '22415339', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (55, '22328334', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (56, '22412982', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (57, '22321110', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (58, '22306021', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (59, '22385391', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (60, '22394866', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (61, '22382601', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (62, '22271867', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (63, '224018189', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (64, '22407018', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (65, '22376708', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (66, '22377537', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (67, '22400543', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (68, '22402666', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (69, '22416112', '2025/2026', 'Tuition', 5000.00);
INSERT INTO public.fees VALUES (70, '22395074', '2025/2026', 'Tuition', 5000.00);


--
-- Data for Name: teaching_assistants; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.teaching_assistants VALUES (1, 'Abubakar', NULL);
INSERT INTO public.teaching_assistants VALUES (2, 'Raphael Kuayi', NULL);
INSERT INTO public.teaching_assistants VALUES (3, 'Nathan Adika', NULL);
INSERT INTO public.teaching_assistants VALUES (4, 'Larry', NULL);
INSERT INTO public.teaching_assistants VALUES (5, 'Adinkra Asamoah', NULL);


--
-- Data for Name: lecturer_tas; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.lecturer_tas VALUES (1, 1);
INSERT INTO public.lecturer_tas VALUES (2, 2);
INSERT INTO public.lecturer_tas VALUES (3, 3);
INSERT INTO public.lecturer_tas VALUES (4, 3);
INSERT INTO public.lecturer_tas VALUES (5, 4);
INSERT INTO public.lecturer_tas VALUES (6, 5);
INSERT INTO public.lecturer_tas VALUES (7, 2);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payments VALUES (71, '22384451', 1, 0.00, '2026-07-19', 'PAY-001');
INSERT INTO public.payments VALUES (72, '22357814', 2, 0.00, '2026-08-01', 'PAY-002');
INSERT INTO public.payments VALUES (73, '22375367', 3, 3000.00, '2026-08-01', 'PAY-003');
INSERT INTO public.payments VALUES (74, '22397756', 4, 1500.00, '2026-07-28', 'PAY-004');
INSERT INTO public.payments VALUES (75, '22369321', 5, 2500.00, '2026-07-19', 'PAY-005');
INSERT INTO public.payments VALUES (76, '22301848', 6, 4000.00, '2026-08-06', 'PAY-006');
INSERT INTO public.payments VALUES (77, '22339520', 7, 5000.00, '2026-07-29', 'PAY-007');
INSERT INTO public.payments VALUES (78, '22333597', 8, 5000.00, '2026-07-12', 'PAY-008');
INSERT INTO public.payments VALUES (79, '22268986', 9, 5000.00, '2026-07-12', 'PAY-009');
INSERT INTO public.payments VALUES (80, '22381577', 10, 1500.00, '2026-07-17', 'PAY-010');
INSERT INTO public.payments VALUES (81, '22315830', 11, 1000.00, '2026-07-19', 'PAY-011');
INSERT INTO public.payments VALUES (82, '22388189', 12, 0.00, '2026-07-29', 'PAY-012');
INSERT INTO public.payments VALUES (83, '22393520', 13, 5000.00, '2026-08-02', 'PAY-013');
INSERT INTO public.payments VALUES (84, '22312110', 14, 4000.00, '2026-07-30', 'PAY-014');
INSERT INTO public.payments VALUES (85, '22300896', 15, 0.00, '2026-07-12', 'PAY-015');
INSERT INTO public.payments VALUES (86, '22397491', 16, 5000.00, '2026-07-17', 'PAY-016');
INSERT INTO public.payments VALUES (87, '22387715', 17, 3000.00, '2026-07-28', 'PAY-017');
INSERT INTO public.payments VALUES (88, '22382302', 18, 5000.00, '2026-07-12', 'PAY-018');
INSERT INTO public.payments VALUES (89, '22379061', 19, 3000.00, '2026-07-27', 'PAY-019');
INSERT INTO public.payments VALUES (90, '22368809', 20, 4000.00, '2026-07-19', 'PAY-020');
INSERT INTO public.payments VALUES (91, '22370498', 21, 1500.00, '2026-07-28', 'PAY-021');
INSERT INTO public.payments VALUES (92, '22382425', 22, 2500.00, '2026-07-21', 'PAY-022');
INSERT INTO public.payments VALUES (93, '22396551', 23, 5000.00, '2026-07-25', 'PAY-023');
INSERT INTO public.payments VALUES (94, '22398562', 24, 0.00, '2026-07-25', 'PAY-024');
INSERT INTO public.payments VALUES (95, '22398596', 25, 5000.00, '2026-07-12', 'PAY-025');
INSERT INTO public.payments VALUES (96, '22385323', 26, 0.00, '2026-07-09', 'PAY-026');
INSERT INTO public.payments VALUES (97, '22303421', 27, 2500.00, '2026-07-18', 'PAY-027');
INSERT INTO public.payments VALUES (98, '22407033', 28, 1500.00, '2026-07-14', 'PAY-028');
INSERT INTO public.payments VALUES (99, '22299189', 29, 1500.00, '2026-07-16', 'PAY-029');
INSERT INTO public.payments VALUES (100, '22407837', 30, 1500.00, '2026-08-06', 'PAY-030');
INSERT INTO public.payments VALUES (101, '22412615', 31, 2500.00, '2026-08-02', 'PAY-031');
INSERT INTO public.payments VALUES (102, '22411009', 32, 3000.00, '2026-07-11', 'PAY-032');
INSERT INTO public.payments VALUES (103, '22382547', 33, 1500.00, '2026-07-22', 'PAY-033');
INSERT INTO public.payments VALUES (104, '22373317', 34, 2500.00, '2026-07-11', 'PAY-034');
INSERT INTO public.payments VALUES (105, '22339058', 35, 0.00, '2026-07-20', 'PAY-035');
INSERT INTO public.payments VALUES (106, '22302628', 36, 3000.00, '2026-07-20', 'PAY-036');
INSERT INTO public.payments VALUES (107, '22396566', 37, 4000.00, '2026-08-02', 'PAY-037');
INSERT INTO public.payments VALUES (108, '22325819', 38, 3000.00, '2026-07-11', 'PAY-038');
INSERT INTO public.payments VALUES (109, '22344703', 39, 2500.00, '2026-07-21', 'PAY-039');
INSERT INTO public.payments VALUES (110, '22306910', 40, 2500.00, '2026-08-04', 'PAY-040');
INSERT INTO public.payments VALUES (111, '22385472', 41, 3000.00, '2026-07-08', 'PAY-041');
INSERT INTO public.payments VALUES (112, '22399214', 42, 4000.00, '2026-07-09', 'PAY-042');
INSERT INTO public.payments VALUES (113, '22263126', 43, 2500.00, '2026-07-14', 'PAY-043');
INSERT INTO public.payments VALUES (114, '22373463', 44, 2500.00, '2026-07-24', 'PAY-044');
INSERT INTO public.payments VALUES (115, '22381702', 45, 1500.00, '2026-07-31', 'PAY-045');
INSERT INTO public.payments VALUES (116, '22387846', 46, 3000.00, '2026-07-21', 'PAY-046');
INSERT INTO public.payments VALUES (117, '22263922', 47, 2500.00, '2026-08-04', 'PAY-047');
INSERT INTO public.payments VALUES (118, '22401641', 48, 2500.00, '2026-07-23', 'PAY-048');
INSERT INTO public.payments VALUES (119, '22403781', 49, 3000.00, '2026-07-27', 'PAY-049');
INSERT INTO public.payments VALUES (120, '22304260', 50, 3000.00, '2026-07-21', 'PAY-050');
INSERT INTO public.payments VALUES (121, '22304013', 51, 5000.00, '2026-08-06', 'PAY-051');
INSERT INTO public.payments VALUES (122, '22302188', 52, 1500.00, '2026-07-27', 'PAY-052');
INSERT INTO public.payments VALUES (123, '22299949', 53, 4000.00, '2026-07-31', 'PAY-053');
INSERT INTO public.payments VALUES (124, '22415339', 54, 0.00, '2026-07-25', 'PAY-054');
INSERT INTO public.payments VALUES (125, '22328334', 55, 0.00, '2026-07-12', 'PAY-055');
INSERT INTO public.payments VALUES (126, '22412982', 56, 1500.00, '2026-07-14', 'PAY-056');
INSERT INTO public.payments VALUES (127, '22321110', 57, 2500.00, '2026-07-11', 'PAY-057');
INSERT INTO public.payments VALUES (128, '22306021', 58, 1000.00, '2026-08-05', 'PAY-058');
INSERT INTO public.payments VALUES (129, '22385391', 59, 1000.00, '2026-07-15', 'PAY-059');
INSERT INTO public.payments VALUES (130, '22394866', 60, 1500.00, '2026-08-03', 'PAY-060');
INSERT INTO public.payments VALUES (131, '22382601', 61, 4000.00, '2026-08-01', 'PAY-061');
INSERT INTO public.payments VALUES (132, '22271867', 62, 4000.00, '2026-07-30', 'PAY-062');
INSERT INTO public.payments VALUES (133, '224018189', 63, 1500.00, '2026-07-29', 'PAY-063');
INSERT INTO public.payments VALUES (134, '22407018', 64, 1000.00, '2026-07-20', 'PAY-064');
INSERT INTO public.payments VALUES (135, '22376708', 65, 4000.00, '2026-07-11', 'PAY-065');
INSERT INTO public.payments VALUES (136, '22377537', 66, 3000.00, '2026-07-13', 'PAY-066');
INSERT INTO public.payments VALUES (137, '22400543', 67, 3000.00, '2026-07-19', 'PAY-067');
INSERT INTO public.payments VALUES (138, '22402666', 68, 2500.00, '2026-08-05', 'PAY-068');
INSERT INTO public.payments VALUES (139, '22416112', 69, 3000.00, '2026-07-08', 'PAY-069');
INSERT INTO public.payments VALUES (140, '22395074', 70, 3000.00, '2026-07-22', 'PAY-070');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'paulafrimpong555@gmail.com', '$2b$12$zKFtCEZGQzX/zH9iBjwX5uUoZmFVsldMT/X4DtF.hwg1l8pemJez.', '22381702', 'student');
INSERT INTO public.users VALUES (2, 'keclinanokye@gmail.com', '$2b$12$DuygClKoUP18foafWR1G..n2dGhWBNbs9A.CBekj62cdvg4FOYIpy', '22344703', 'student');


--
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.enrollments_enrollment_id_seq', 490, true);


--
-- Name: fees_fee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fees_fee_id_seq', 70, true);


--
-- Name: lecturers_lecturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.lecturers_lecturer_id_seq', 7, true);


--
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payments_payment_id_seq', 140, true);


--
-- Name: teaching_assistants_ta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teaching_assistants_ta_id_seq', 5, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 9BqwvWOCQmwJ3dVFzYWF5sunhgSBQLfxagCtWJ1BnLC2oeT37Za22sKnbsqrums

