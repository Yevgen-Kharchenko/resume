-- SQL Manager Lite for PostgreSQL 6.1.2.53864
-- ---------------------------------------
-- Host      : localhost
-- Database  : resume
-- Version   : PostgreSQL 12.3, compiled by Visual C++ build 1914, 64-bit



SET check_function_bodies = false;
--
-- Structure for table profile (OID = 16395) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.profile (
    id bigint NOT NULL,
    password varchar(255) NOT NULL,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    updated timestamp(0) without time zone,
    uid varchar(100),
    birth_day date,
    phone varchar(20),
    country varchar(80),
    city varchar(80),
    objective text,
    summary text,
    large_photo varchar(255),
    small_photo varchar(255),
    info text,
    skype varchar(255),
    vkontakte varchar(255),
    facebook varchar(255),
    linkedin varchar(255),
    github varchar(255),
    stackoverflow varchar(255),
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    completed boolean NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.profile ALTER COLUMN id SET STATISTICS 0;
--
-- Structure for table role (OID = 16409) : 
--
CREATE TABLE public.role (
    id smallint NOT NULL,
    name varchar(20) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.role ALTER COLUMN id SET STATISTICS 0;
--
-- Structure for table profile_role (OID = 16416) : 
--
CREATE TABLE public.profile_role (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    id_role smallint NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.profile_role ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.profile_role ALTER COLUMN id_profile SET STATISTICS 0;
--
-- Structure for table profile_restore (OID = 16432) : 
--
CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.profile_restore ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.profile_restore ALTER COLUMN token SET STATISTICS 0;
--
-- Definition for sequence profile_seq (OID = 16449) : 
--
CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence role_seq (OID = 16451) : 
--
CREATE SEQUENCE public.role_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence profile_role_seq (OID = 16453) : 
--
CREATE SEQUENCE public.profile_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table certificate (OID = 16461) : 
--
CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(255) NOT NULL,
    large_photo varchar(255) NOT NULL,
    small_photo varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.certificate ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN large_photo SET STATISTICS 0;
--
-- Structure for table course (OID = 16474) : 
--
CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(100) NOT NULL,
    school varchar(100) NOT NULL,
    finish_date date
)
WITH (oids = false);
ALTER TABLE ONLY public.course ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN school SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN finish_date SET STATISTICS 0;
--
-- Structure for table education (OID = 16484) : 
--
CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary varchar(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.education ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN summary SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN begin_year SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN finish_year SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN university SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN faculty SET STATISTICS 0;
--
-- Structure for table hobby (OID = 16502) : 
--
CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(100) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.hobby ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.hobby ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.hobby ALTER COLUMN name SET STATISTICS 0;
--
-- Structure for table language (OID = 16512) : 
--
CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(20) NOT NULL,
    level varchar(60) NOT NULL,
    type varchar(60) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.language ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.language ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.language ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.language ALTER COLUMN level SET STATISTICS 0;
ALTER TABLE ONLY public.language ALTER COLUMN type SET STATISTICS 0;
--
-- Structure for table practic (OID = 16522) : 
--
CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" varchar(100) NOT NULL,
    company varchar(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    rasponsibilities text NOT NULL,
    demo varchar(255),
    src varchar(255)
)
WITH (oids = false);
ALTER TABLE ONLY public.practic ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN id_profile SET STATISTICS 0;
--
-- Structure for table skill (OID = 16535) : 
--
CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category varchar(60) NOT NULL,
    value text NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.skill ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.skill ALTER COLUMN id_profile SET STATISTICS 0;
--
-- Structure for table skill_category (OID = 16548) : 
--
CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category varchar(60) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.skill_category ALTER COLUMN id SET STATISTICS 0;
--
-- Definition for sequence certificate_seq (OID = 16555) : 
--
CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence course_seq (OID = 16557) : 
--
CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence education_seq (OID = 16559) : 
--
CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence hobby_seq (OID = 16561) : 
--
CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence language_seq (OID = 16563) : 
--
CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence practic_seq (OID = 16566) : 
--
CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence skill_seq (OID = 16568) : 
--
CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for index account_role_idx (OID = 16431) : 
--
CREATE UNIQUE INDEX account_role_idx ON public.profile_role USING btree (id_profile, id_role);
--
-- Definition for index account_pkey (OID = 16403) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT account_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_email_key (OID = 16407) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT account_email_key
    UNIQUE (email);
--
-- Definition for index role_pkey (OID = 16412) : 
--
ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey
    PRIMARY KEY (id);
--
-- Definition for index role_name_key (OID = 16414) : 
--
ALTER TABLE ONLY role
    ADD CONSTRAINT role_name_key
    UNIQUE (name);
--
-- Definition for index account_role_pkey (OID = 16419) : 
--
ALTER TABLE ONLY profile_role
    ADD CONSTRAINT account_role_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_role_fk (OID = 16421) : 
--
ALTER TABLE ONLY profile_role
    ADD CONSTRAINT account_role_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index account_role_fk1 (OID = 16426) : 
--
ALTER TABLE ONLY profile_role
    ADD CONSTRAINT account_role_fk1
    FOREIGN KEY (id_role) REFERENCES role(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index account_registration_pkey (OID = 16435) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT account_registration_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_registration_code_key (OID = 16437) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT account_registration_code_key
    UNIQUE (token);
--
-- Definition for index account_registration_fk (OID = 16444) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT account_registration_fk
    FOREIGN KEY (id) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index profile_uid_key (OID = 16455) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_uid_key
    UNIQUE (uid);
--
-- Definition for index profile_phone_key (OID = 16459) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_phone_key
    UNIQUE (phone);
--
-- Definition for index sertificate_pkey (OID = 16467) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT sertificate_pkey
    PRIMARY KEY (id);
--
-- Definition for index sertificate_fk (OID = 16469) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT sertificate_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index course_pkey (OID = 16477) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey
    PRIMARY KEY (id);
--
-- Definition for index course_fk (OID = 16479) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index education_pkey (OID = 16490) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_pkey
    PRIMARY KEY (id);
--
-- Definition for index education_fk (OID = 16497) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index hobby_pkey (OID = 16505) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_pkey
    PRIMARY KEY (id);
--
-- Definition for index hobby_fk (OID = 16507) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index language_pkey (OID = 16515) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey
    PRIMARY KEY (id);
--
-- Definition for index language_fk (OID = 16517) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index practic_pkey (OID = 16528) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_pkey
    PRIMARY KEY (id);
--
-- Definition for index practic_fk (OID = 16530) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_pkey (OID = 16541) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_fk (OID = 16543) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_category_pkey (OID = 16551) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_category_category_key (OID = 16553) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_category_key
    UNIQUE (category);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
