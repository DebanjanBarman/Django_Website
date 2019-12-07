--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- Started on 2019-12-07 12:59:58 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13039)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 16417)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO debanjan;

--
-- TOC entry 202 (class 1259 OID 16415)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO debanjan;

--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 16427)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO debanjan;

--
-- TOC entry 204 (class 1259 OID 16425)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO debanjan;

--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 16409)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO debanjan;

--
-- TOC entry 200 (class 1259 OID 16407)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO debanjan;

--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 16435)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO debanjan;

--
-- TOC entry 209 (class 1259 OID 16445)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO debanjan;

--
-- TOC entry 208 (class 1259 OID 16443)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO debanjan;

--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 16433)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO debanjan;

--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 16453)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO debanjan;

--
-- TOC entry 210 (class 1259 OID 16451)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO debanjan;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 213 (class 1259 OID 16513)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO debanjan;

--
-- TOC entry 212 (class 1259 OID 16511)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO debanjan;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 16399)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO debanjan;

--
-- TOC entry 198 (class 1259 OID 16397)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO debanjan;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 16388)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO debanjan;

--
-- TOC entry 196 (class 1259 OID 16386)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO debanjan;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 16610)
-- Name: django_session; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO debanjan;

--
-- TOC entry 217 (class 1259 OID 16589)
-- Name: pg_detail_comment; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.pg_detail_comment (
    id integer NOT NULL,
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.pg_detail_comment OWNER TO debanjan;

--
-- TOC entry 216 (class 1259 OID 16587)
-- Name: pg_detail_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.pg_detail_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pg_detail_comment_id_seq OWNER TO debanjan;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 216
-- Name: pg_detail_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.pg_detail_comment_id_seq OWNED BY public.pg_detail_comment.id;


--
-- TOC entry 215 (class 1259 OID 16546)
-- Name: pg_detail_pgdetail; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.pg_detail_pgdetail (
    id integer NOT NULL,
    "pgName" character varying(200) NOT NULL,
    "pgCity" character varying(200) NOT NULL,
    "pgLocation" character varying(200) NOT NULL,
    "pgAddress" text NOT NULL,
    "pgImage1" character varying(100) NOT NULL,
    "pgImage2" character varying(100) NOT NULL,
    "pgImage3" character varying(100) NOT NULL,
    "pgRating" double precision NOT NULL,
    "pgDescription" text NOT NULL,
    "pgRules" text NOT NULL,
    "pgFood" text NOT NULL,
    "pgRoom" integer NOT NULL,
    "pgCharge" integer NOT NULL,
    "pgBathroom" boolean NOT NULL,
    "pgFor" character varying(20) NOT NULL,
    "pgLaundry" boolean NOT NULL,
    "pgWiFi" boolean NOT NULL,
    "pgMail" character varying(254) NOT NULL,
    "pgPhone" character varying(14) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.pg_detail_pgdetail OWNER TO debanjan;

--
-- TOC entry 214 (class 1259 OID 16544)
-- Name: pg_detail_pgdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.pg_detail_pgdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pg_detail_pgdetail_id_seq OWNER TO debanjan;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 214
-- Name: pg_detail_pgdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.pg_detail_pgdetail_id_seq OWNED BY public.pg_detail_pgdetail.id;


--
-- TOC entry 222 (class 1259 OID 24854)
-- Name: pg_detail_pgowner; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.pg_detail_pgowner (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    active boolean NOT NULL,
    admin boolean NOT NULL,
    email character varying(255) NOT NULL,
    staff boolean NOT NULL
);


ALTER TABLE public.pg_detail_pgowner OWNER TO debanjan;

--
-- TOC entry 221 (class 1259 OID 24852)
-- Name: pg_detail_pgowner_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.pg_detail_pgowner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pg_detail_pgowner_id_seq OWNER TO debanjan;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 221
-- Name: pg_detail_pgowner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.pg_detail_pgowner_id_seq OWNED BY public.pg_detail_pgowner.id;


--
-- TOC entry 220 (class 1259 OID 16622)
-- Name: users_profile; Type: TABLE; Schema: public; Owner: debanjan
--

CREATE TABLE public.users_profile (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_profile OWNER TO debanjan;

--
-- TOC entry 219 (class 1259 OID 16620)
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: debanjan
--

CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profile_id_seq OWNER TO debanjan;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debanjan
--

ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;


--
-- TOC entry 2869 (class 2604 OID 16420)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16430)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 16412)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 16438)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 16448)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 16456)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 16516)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16402)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16391)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 16592)
-- Name: pg_detail_comment id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_comment ALTER COLUMN id SET DEFAULT nextval('public.pg_detail_comment_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 16549)
-- Name: pg_detail_pgdetail id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgdetail ALTER COLUMN id SET DEFAULT nextval('public.pg_detail_pgdetail_id_seq'::regclass);


--
-- TOC entry 2879 (class 2604 OID 24857)
-- Name: pg_detail_pgowner id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgowner ALTER COLUMN id SET DEFAULT nextval('public.pg_detail_pgowner_id_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 16625)
-- Name: users_profile id; Type: DEFAULT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);


--
-- TOC entry 3085 (class 0 OID 16417)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3087 (class 0 OID 16427)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3083 (class 0 OID 16409)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add pg detail	7	add_pgdetail
26	Can change pg detail	7	change_pgdetail
27	Can delete pg detail	7	delete_pgdetail
28	Can view pg detail	7	view_pgdetail
29	Can add comment	8	add_comment
30	Can change comment	8	change_comment
31	Can delete comment	8	delete_comment
32	Can view comment	8	view_comment
33	Can add profile	9	add_profile
34	Can change profile	9	change_profile
35	Can delete profile	9	delete_profile
36	Can view profile	9	view_profile
37	Can add pg owner	11	add_pgowner
38	Can change pg owner	11	change_pgowner
39	Can delete pg owner	11	delete_pgowner
40	Can view pg owner	11	view_pgowner
\.


--
-- TOC entry 3089 (class 0 OID 16435)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
30	pbkdf2_sha256$150000$4W8lOEV7uScj$SjCHEl815W11SjSv9ccuiZjHFV5Z8NXP4gMSldb/oeA=	\N	f	Doma				f	t	2019-11-13 16:27:10+05:30
31	pbkdf2_sha256$150000$hxhGs2ibJdL0$PzEgl76nhKieZx/zaMPs+6aSPWQOppTVqOAd+7WNc1k=	\N	f	Gazebo				f	t	2019-11-13 16:27:50+05:30
29	pbkdf2_sha256$150000$ZqAIgz5qRelY$QGRFgKgMhJtrH0/CBsfXDS4sYjfbZzM/Vt1/3D9lTbs=	2019-11-14 08:38:01+05:30	f	Carewell				f	t	2019-11-13 16:26:20+05:30
32	pbkdf2_sha256$150000$VTxZrGohHPAL$zpCd2+0mgJMapdW+0gyDi+8TVg6uadmfD//ynp0ckiM=	\N	f	Image				f	t	2019-11-13 16:28:22+05:30
33	pbkdf2_sha256$150000$B3dIH8iKgOCj$mUjfZgWuaYxhXOvndFFQQjOrMv1Eh+177armNcGIGo8=	\N	f	Maya				f	t	2019-11-13 16:28:58+05:30
42	pbkdf2_sha256$150000$BNzp5d8GdcaX$HuG4EoifZ+6AxeiqMItFycevDITD0wK0B5mmmrN8yTA=	\N	f	rahul				f	t	2019-11-22 14:18:18.608882+05:30
34	pbkdf2_sha256$150000$dnVDQFLbWk1q$56I9YhUjr6HeCwZAHBR0AvDlsynzg5qAQFWHWCYkHDQ=	\N	f	Palmu				f	t	2019-11-13 16:29:31+05:30
35	pbkdf2_sha256$150000$yiJvVoUggZAV$xuOIs3sYqRp9WQ2gVNrQLUmFdpqfzPvHSWwV9IfOZno=	\N	f	Royal				f	t	2019-11-13 16:30:26+05:30
36	pbkdf2_sha256$150000$nKyKcP3MUgEA$cc+IOkPy7wNjg94+wNyMHcyzOqbGbtCJ4QljII3X+qg=	\N	f	Sagar				f	t	2019-11-13 16:30:56+05:30
1	pbkdf2_sha256$150000$v4fpKz771tY2$8nJi2FGXDwzuqqsFssxwFf7lk15cihMvuxLqc9cCq7I=	2019-11-22 14:15:24+05:30	t	deba			debanjanbarman123456789@gmail.com	t	t	2019-10-26 21:38:11+05:30
43	pbkdf2_sha256$150000$6PFB550e2Gj8$vs9iLSnBr0KjfRAZbLHnPU+PxxDmJwpnabHXwhAyk20=	2019-11-26 21:22:50.260546+05:30	t	debanjan			debanjanbarman123456789@gmail.com	t	t	2019-11-22 14:28:48.139291+05:30
38	pbkdf2_sha256$150000$0BXOwcyLBQxa$3Cj67QqCnol22o9kM0wxYYADHCaoD+oyVM7P4ANTR98=	\N	f	Rohan			rohanbhattarai1994@gmail.com	f	t	2019-11-20 15:37:03.676206+05:30
44	pbkdf2_sha256$150000$gsNPejfAX8PQ$jm8pCH/CdlWD6AQpDSfWMkArbwJCw06X+Zs5+EUAzL8=	\N	f	bishnu			dfgyndf@sdfgh.com	f	t	2019-11-26 21:24:51.885386+05:30
41	pbkdf2_sha256$150000$oroimuhrA7b9$/PNuSMHKocowpSiFarRLF/28rVxkpxl/2S/X2rIND0s=	\N	f	NewPg			debanjanbarman123456789@gmail.comhh	f	t	2019-11-20 22:36:09.205232+05:30
\.


--
-- TOC entry 3091 (class 0 OID 16445)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 16453)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
24	1	1
25	1	2
26	1	3
27	1	4
28	1	5
29	1	6
30	1	7
31	1	8
32	1	9
33	1	10
34	1	11
35	1	12
36	1	13
37	1	14
38	1	15
39	1	16
40	1	17
41	1	18
42	1	19
43	1	20
44	1	21
45	1	22
46	1	23
47	1	24
48	1	25
49	1	26
50	1	27
51	1	28
52	1	29
53	1	30
54	1	31
55	1	32
56	1	33
57	1	34
58	1	35
59	1	36
60	1	37
61	1	38
62	1	39
63	1	40
66	29	28
\.


--
-- TOC entry 3095 (class 0 OID 16513)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-10-26 21:39:57.181067+05:30	1	PgDetail object (1)	1	[{"added": {}}]	7	1
2	2019-10-26 22:05:12.065828+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgName"]}}]	7	1
3	2019-10-26 22:09:07.797761+05:30	2	PgDetail object (2)	1	[{"added": {}}]	7	1
4	2019-10-26 23:21:16.770794+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
5	2019-10-26 23:22:02.813183+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
6	2019-10-26 23:30:15.028863+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
7	2019-10-26 23:30:27.644106+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
8	2019-10-27 00:10:56.063856+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
9	2019-10-27 00:11:12.593583+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
10	2019-10-27 00:29:49.901641+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
11	2019-10-27 00:30:03.871847+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
12	2019-10-27 10:10:09.172924+05:30	3	PgDetail object (3)	1	[{"added": {}}]	7	1
13	2019-10-27 18:05:17.753538+05:30	3	PgDetail object (3)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
14	2019-10-27 18:05:43.748952+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
15	2019-10-27 18:17:54.698491+05:30	1	PgDetail object (1)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
16	2019-10-28 13:12:15.226313+05:30	5	PgDetail object (5)	1	[{"added": {}}]	7	1
17	2019-10-28 19:42:18.438905+05:30	5	126	3		4	1
18	2019-10-28 19:42:18.639945+05:30	3	admin	3		4	1
19	2019-10-28 19:42:18.675833+05:30	8	admin2	3		4	1
20	2019-10-28 19:42:18.71129+05:30	9	deba	3		4	1
21	2019-10-28 19:42:18.735905+05:30	10	deba7	3		4	1
22	2019-10-28 19:42:18.760684+05:30	7	deba.barman@outlook.com	3		4	1
23	2019-10-28 19:42:18.796405+05:30	2	debanjan-	3		4	1
24	2019-10-28 19:42:18.845916+05:30	6	DEBANJAN	3		4	1
25	2019-10-28 19:42:18.894763+05:30	4	debanjan-1	3		4	1
26	2019-10-28 19:47:44.987617+05:30	5	PgDetail object (5)	3		7	1
27	2019-10-28 19:47:45.073411+05:30	3	PgDetail object (3)	3		7	1
28	2019-10-28 19:47:45.12295+05:30	2	PgDetail object (2)	3		7	1
29	2019-10-28 19:47:45.250183+05:30	1	PgDetail object (1)	3		7	1
30	2019-10-28 22:22:40.132621+05:30	6	PgDetail object (6)	1	[{"added": {}}]	7	1
31	2019-10-28 23:11:07.671437+05:30	7	admin PG DETAILS	1	[{"added": {}}]	7	1
32	2019-10-29 09:30:38.645519+05:30	7	admin PG DETAILS	3		7	1
33	2019-10-29 09:30:52.302009+05:30	11	admin	3		4	1
34	2019-10-29 09:30:52.440512+05:30	12	deba.barman@outlook.com	3		4	1
35	2019-10-29 11:16:41.26519+05:30	1	debanjan	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
36	2019-10-29 11:24:27.547788+05:30	1	debanjan	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
37	2019-10-29 13:52:36.310831+05:30	1	debanjan	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
38	2019-10-29 13:53:13.36195+05:30	13	admin	1	[{"added": {}}]	4	1
39	2019-10-29 13:58:57.694176+05:30	8	admin PG DETAILS	1	[{"added": {}}]	7	1
40	2019-10-29 14:30:12.980625+05:30	1	deba.barman@outlook.com	1	[{"added": {}}]	11	1
41	2019-10-29 14:30:33.708887+05:30	2	Ankush@mail.com	1	[{"added": {}}]	11	1
45	2019-10-29 15:48:39.199897+05:30	3	afed@iajsh.com	1	[{"added": {}}]	11	1
48	2019-10-29 20:53:28.107746+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["is_staff", "user_permissions"]}}]	4	1
49	2019-10-29 20:56:01.053595+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["is_staff", "user_permissions"]}}]	4	1
50	2019-10-29 20:58:45.943857+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["password"]}}]	4	1
51	2019-10-29 21:00:20.81693+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
52	2019-10-29 21:02:29.686391+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
53	2019-10-29 21:04:11.810098+05:30	1	deba.barman@outlook.com	2	[{"changed": {"fields": ["staff"]}}]	11	1
54	2019-10-29 21:04:16.125777+05:30	3	afed@iajsh.com	2	[]	11	1
55	2019-10-29 21:06:14.767631+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
56	2019-10-29 21:06:28.39571+05:30	13	admin	3		4	1
57	2019-10-29 21:06:28.574334+05:30	14	deba.barman@outlook.com	3		4	1
58	2019-10-29 21:06:50.04826+05:30	13	admin	3		4	1
59	2019-10-29 21:06:50.170946+05:30	14	deba.barman@outlook.com	3		4	1
60	2019-10-29 21:14:05.655652+05:30	9	PgDetail object (9)	1	[{"added": {}}]	7	1
61	2019-10-29 21:14:53.162076+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
62	2019-10-29 21:16:09.959859+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
63	2019-10-29 21:17:29.023095+05:30	9	PgDetail object (9)	3		7	1
64	2019-10-29 21:17:29.057015+05:30	8	PgDetail object (8)	3		7	1
65	2019-10-29 21:22:57.864927+05:30	10	PgDetail object (10)	1	[{"added": {}}]	7	1
66	2019-10-29 21:23:46.036191+05:30	14	deba.barman@outlook.com	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
67	2019-10-29 21:52:22.677535+05:30	1	Chirasmita_Barman	2	[{"changed": {"fields": ["username", "email", "user_permissions"]}}]	4	1
68	2019-10-29 21:52:57.190987+05:30	14	DEBANJAN	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
69	2019-10-29 23:15:28.614976+05:30	15	doma	1	[{"added": {}}]	4	1
70	2019-10-29 23:15:38.960508+05:30	15	doma	2	[]	4	1
71	2019-10-29 23:15:52.413447+05:30	16	anita	1	[{"added": {}}]	4	1
72	2019-10-29 23:15:57.208888+05:30	16	anita	2	[]	4	1
73	2019-10-29 23:16:11.941856+05:30	17	royal	1	[{"added": {}}]	4	1
74	2019-10-29 23:16:15.658365+05:30	17	royal	2	[]	4	1
75	2019-10-29 23:16:31.123329+05:30	18	carewell	1	[{"added": {}}]	4	1
76	2019-10-29 23:16:35.978984+05:30	18	carewell	2	[]	4	1
77	2019-10-29 23:16:50.594187+05:30	19	gazebo	1	[{"added": {}}]	4	1
78	2019-10-29 23:16:54.260249+05:30	19	gazebo	2	[]	4	1
79	2019-10-29 23:17:08.799212+05:30	20	palmu	1	[{"added": {}}]	4	1
80	2019-10-29 23:17:12.81594+05:30	20	palmu	2	[]	4	1
81	2019-10-29 23:18:39.278985+05:30	11	PgDetail object (11)	1	[{"added": {}}]	7	1
82	2019-10-29 23:19:33.020656+05:30	12	PgDetail object (12)	1	[{"added": {}}]	7	1
83	2019-10-29 23:21:08.466134+05:30	13	PgDetail object (13)	1	[{"added": {}}]	7	1
84	2019-10-29 23:21:52.697679+05:30	14	PgDetail object (14)	1	[{"added": {}}]	7	1
85	2019-10-29 23:22:58.099483+05:30	15	PgDetail object (15)	1	[{"added": {}}]	7	1
86	2019-10-29 23:23:58.981765+05:30	16	PgDetail object (16)	1	[{"added": {}}]	7	1
87	2019-10-29 23:25:15.541361+05:30	17	PgDetail object (17)	1	[{"added": {}}]	7	1
88	2019-10-29 23:26:13.890846+05:30	14	PgDetail object (14)	2	[{"changed": {"fields": ["pgImage2", "pgImage3"]}}]	7	1
89	2019-10-29 23:26:47.828192+05:30	14	PgDetail object (14)	2	[{"changed": {"fields": ["pgImage1", "pgImage2", "pgImage3"]}}]	7	1
90	2019-10-29 23:27:45.232161+05:30	6	PgDetail object (6)	2	[{"changed": {"fields": ["pgName"]}}]	7	1
91	2019-10-29 23:28:06.013135+05:30	10	PgDetail object (10)	2	[{"changed": {"fields": ["pgName"]}}]	7	1
92	2019-10-29 23:28:20.89308+05:30	14	PgDetail object (14)	2	[{"changed": {"fields": ["pgName"]}}]	7	1
93	2019-10-30 22:34:30.333056+05:30	13	PgDetail object (13)	2	[{"changed": {"fields": ["pgWiFi", "pgLaundry"]}}]	7	1
94	2019-10-30 22:35:13.141606+05:30	13	PgDetail object (13)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
95	2019-10-30 23:53:58.595683+05:30	15	PgDetail object (15)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
96	2019-10-30 23:54:10.902648+05:30	17	PgDetail object (17)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
97	2019-10-30 23:54:24.83913+05:30	17	PgDetail object (17)	2	[]	7	1
98	2019-10-30 23:55:35.286428+05:30	12	PgDetail object (12)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
99	2019-10-30 23:55:53.187383+05:30	16	PgDetail object (16)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
100	2019-10-31 07:51:27.173812+05:30	1	debanjan	2	[{"changed": {"fields": ["username"]}}]	4	1
101	2019-10-31 07:53:24.345484+05:30	6	PgDetail object (6)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
102	2019-10-31 08:01:38.530404+05:30	10	PgDetail object (10)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
103	2019-10-31 10:59:05.219462+05:30	15	PgDetail object (15)	2	[{"changed": {"fields": ["pgRating"]}}]	7	1
104	2019-10-31 10:59:36.93152+05:30	15	PgDetail object (15)	2	[{"changed": {"fields": ["pgAddress"]}}]	7	1
105	2019-10-31 10:59:56.246308+05:30	15	PgDetail object (15)	2	[{"changed": {"fields": ["pgWiFi"]}}]	7	1
106	2019-10-31 11:02:55.636703+05:30	17	PgDetail object (17)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
107	2019-10-31 11:03:30.038978+05:30	16	PgDetail object (16)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
108	2019-10-31 11:04:24.506331+05:30	16	PgDetail object (16)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
109	2019-10-31 11:45:39.349247+05:30	12	PgDetail object (12)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
110	2019-10-31 11:46:03.286894+05:30	14	PgDetail object (14)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
111	2019-10-31 11:46:38.576928+05:30	13	PgDetail object (13)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
112	2019-10-31 11:46:47.623745+05:30	11	PgDetail object (11)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
113	2019-10-31 11:47:01.376013+05:30	15	PgDetail object (15)	2	[{"changed": {"fields": ["pgDescription", "pgWiFi"]}}]	7	1
114	2019-10-31 15:27:14.770652+05:30	24	Binay	1	[{"added": {}}]	4	1
115	2019-10-31 15:27:40.454102+05:30	24	Binay	2	[]	4	1
116	2019-10-31 15:29:28.784252+05:30	18	PgDetail object (18)	1	[{"added": {}}]	7	1
117	2019-10-31 15:54:04.586259+05:30	22	GaganSir	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
118	2019-10-31 15:54:46.798068+05:30	22	GaganSir	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
119	2019-11-01 10:34:11.319418+05:30	25	Mukesh_Shah	1	[{"added": {}}]	4	1
120	2019-11-01 10:34:53.75011+05:30	25	Mukesh_Shah	2	[{"changed": {"fields": ["is_staff", "user_permissions"]}}]	4	1
121	2019-11-01 10:41:05.126357+05:30	19	PgDetail object (19)	1	[{"added": {}}]	7	1
122	2019-11-01 10:42:08.303648+05:30	19	PgDetail object (19)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
123	2019-11-05 15:57:12.578899+05:30	26	Pankaj	1	[{"added": {}}]	4	1
124	2019-11-05 15:57:26.12043+05:30	26	Pankaj	2	[]	4	1
125	2019-11-05 15:59:09.409674+05:30	20	PgDetail object (20)	1	[{"added": {}}]	7	1
126	2019-11-05 15:59:39.268506+05:30	20	PgDetail object (20)	2	[{"changed": {"fields": ["pgDescription"]}}]	7	1
127	2019-11-13 16:22:36.638486+05:30	20	PgDetail object (20)	3		7	1
128	2019-11-13 16:22:37.103396+05:30	19	PgDetail object (19)	3		7	1
129	2019-11-13 16:22:37.138848+05:30	18	PgDetail object (18)	3		7	1
130	2019-11-13 16:22:37.174029+05:30	11	PgDetail object (11)	3		7	1
131	2019-11-13 16:22:37.198633+05:30	10	PgDetail object (10)	3		7	1
132	2019-11-13 16:22:37.223876+05:30	6	PgDetail object (6)	3		7	1
133	2019-11-13 16:23:46.058934+05:30	13	admin	3		4	1
134	2019-11-13 16:23:46.136601+05:30	16	anita	3		4	1
135	2019-11-13 16:23:46.172314+05:30	24	Binay	3		4	1
136	2019-11-13 16:23:46.208422+05:30	18	carewell	3		4	1
137	2019-11-13 16:23:46.243939+05:30	21	deba.barman@outlook.com	3		4	1
138	2019-11-13 16:23:46.279617+05:30	14	DEBANJAN	3		4	1
139	2019-11-13 16:23:46.31524+05:30	15	doma	3		4	1
140	2019-11-13 16:23:46.340381+05:30	22	GaganSir	3		4	1
141	2019-11-13 16:23:46.375998+05:30	19	gazebo	3		4	1
142	2019-11-13 16:23:46.411961+05:30	23	Miraj	3		4	1
143	2019-11-13 16:23:46.447221+05:30	25	Mukesh_Shah	3		4	1
144	2019-11-13 16:23:46.483449+05:30	20	palmu	3		4	1
145	2019-11-13 16:23:46.519138+05:30	26	Pankaj	3		4	1
146	2019-11-13 16:23:46.554838+05:30	17	royal	3		4	1
147	2019-11-13 16:23:46.59083+05:30	27	sjadhvfgjgashd	3		4	1
148	2019-11-13 16:25:21.805547+05:30	28	Anita	1	[{"added": {}}]	4	1
149	2019-11-13 16:26:21.011314+05:30	29	Carewell	1	[{"added": {}}]	4	1
150	2019-11-13 16:26:28.554407+05:30	29	Carewell	2	[]	4	1
151	2019-11-13 16:27:10.665712+05:30	30	Doma	1	[{"added": {}}]	4	1
152	2019-11-13 16:27:16.539424+05:30	30	Doma	2	[]	4	1
153	2019-11-13 16:27:50.271074+05:30	31	Gazebo	1	[{"added": {}}]	4	1
154	2019-11-13 16:27:54.47+05:30	31	Gazebo	2	[]	4	1
155	2019-11-13 16:28:22.64758+05:30	32	Image	1	[{"added": {}}]	4	1
156	2019-11-13 16:28:27.113795+05:30	32	Image	2	[]	4	1
157	2019-11-13 16:28:58.804652+05:30	33	Maya	1	[{"added": {}}]	4	1
158	2019-11-13 16:29:03.034266+05:30	33	Maya	2	[]	4	1
159	2019-11-13 16:29:31.573699+05:30	34	Palmu	1	[{"added": {}}]	4	1
160	2019-11-13 16:29:37.686058+05:30	34	Palmu	2	[]	4	1
161	2019-11-13 16:30:26.691995+05:30	35	Royal	1	[{"added": {}}]	4	1
162	2019-11-13 16:30:32.316215+05:30	35	Royal	2	[]	4	1
163	2019-11-13 16:30:57.008888+05:30	36	Sagar	1	[{"added": {}}]	4	1
164	2019-11-13 16:31:03.618048+05:30	36	Sagar	2	[]	4	1
165	2019-11-13 16:40:41.106898+05:30	21	PgDetail object (21)	1	[{"added": {}}]	7	1
166	2019-11-13 16:46:23.515542+05:30	22	PgDetail object (22)	1	[{"added": {}}]	7	1
167	2019-11-13 16:51:12.369583+05:30	23	PgDetail object (23)	1	[{"added": {}}]	7	1
168	2019-11-13 16:56:18.158325+05:30	24	PgDetail object (24)	1	[{"added": {}}]	7	1
169	2019-11-13 16:56:24.564906+05:30	24	PgDetail object (24)	2	[]	7	1
170	2019-11-13 17:01:41.836672+05:30	25	PgDetail object (25)	1	[{"added": {}}]	7	1
171	2019-11-13 17:04:51.90165+05:30	26	PgDetail object (26)	1	[{"added": {}}]	7	1
172	2019-11-13 17:07:23.607691+05:30	27	PgDetail object (27)	1	[{"added": {}}]	7	1
173	2019-11-13 17:09:55.824394+05:30	28	PgDetail object (28)	1	[{"added": {}}]	7	1
174	2019-11-13 17:12:32.871581+05:30	29	PgDetail object (29)	1	[{"added": {}}]	7	1
175	2019-11-13 17:13:24.949624+05:30	27	PgDetail object (27)	2	[{"changed": {"fields": ["pgRoom"]}}]	7	1
176	2019-11-14 08:36:57.143285+05:30	29	Carewell	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
177	2019-11-14 08:37:49.093376+05:30	29	Carewell	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
178	2019-11-14 10:36:33.397646+05:30	37	newpg	1	[{"added": {}}]	4	1
179	2019-11-14 10:37:02.311292+05:30	37	newpg	2	[]	4	1
180	2019-11-14 10:41:29.438099+05:30	30	PgDetail object (30)	1	[{"added": {}}]	7	1
181	2019-11-16 19:28:18.454984+05:30	30	PgDetail object (30)	3		7	1
182	2019-11-16 19:29:52.753733+05:30	31	PgDetail object (31)	1	[{"added": {}}]	7	1
183	2019-11-16 19:30:35.68146+05:30	37	newpg	2	[{"changed": {"fields": ["is_active"]}}]	4	1
184	2019-11-16 19:31:06.37887+05:30	37	newpg	3		4	1
185	2019-11-16 23:25:08.016948+05:30	1	debanjan	2	[{"changed": {"fields": ["email"]}}]	4	1
186	2019-11-16 23:27:54.404268+05:30	29	Carewell	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
187	2019-11-20 10:03:19.789015+05:30	29	PgDetail object (29)	2	[]	7	1
188	2019-11-20 22:32:21.017678+05:30	40	debanjanuu	3		4	1
189	2019-11-20 22:32:21.228792+05:30	39	debanjanuuu	3		4	1
190	2019-11-21 08:55:15.661146+05:30	32	PgDetail object (32)	1	[{"added": {}}]	7	1
191	2019-11-21 15:38:11.613322+05:30	32	PgDetail object (32)	3		7	1
192	2019-11-22 14:16:32.824532+05:30	28	Anita	3		4	1
193	2019-11-22 14:18:18.925274+05:30	42	rahul	1	[{"added": {}}]	4	1
194	2019-11-22 14:19:51.47577+05:30	33	PgDetail object (33)	1	[{"added": {}}]	7	1
195	2019-11-22 14:22:03.961668+05:30	33	PgDetail object (33)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
196	2019-11-22 14:22:56.607784+05:30	33	PgDetail object (33)	2	[{"changed": {"fields": ["pgMail"]}}]	7	1
197	2019-11-22 14:29:28.433245+05:30	1	deba	2	[{"changed": {"fields": ["email"]}}]	4	43
\.


--
-- TOC entry 3081 (class 0 OID 16399)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	pg_detail	pgdetail
8	pg_detail	comment
9	users	profile
10	pg_detail	pgprofile
11	pg_detail	pgowner
\.


--
-- TOC entry 3079 (class 0 OID 16388)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-10-26 21:34:41.217294+05:30
2	auth	0001_initial	2019-10-26 21:34:42.241677+05:30
3	admin	0001_initial	2019-10-26 21:34:43.998304+05:30
4	admin	0002_logentry_remove_auto_add	2019-10-26 21:34:44.278806+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-10-26 21:34:44.335692+05:30
6	contenttypes	0002_remove_content_type_name	2019-10-26 21:34:44.411046+05:30
7	auth	0002_alter_permission_name_max_length	2019-10-26 21:34:44.44378+05:30
8	auth	0003_alter_user_email_max_length	2019-10-26 21:34:44.498019+05:30
9	auth	0004_alter_user_username_opts	2019-10-26 21:34:44.55794+05:30
10	auth	0005_alter_user_last_login_null	2019-10-26 21:34:44.602551+05:30
11	auth	0006_require_contenttypes_0002	2019-10-26 21:34:44.637364+05:30
12	auth	0007_alter_validators_add_error_messages	2019-10-26 21:34:44.696754+05:30
13	auth	0008_alter_user_username_max_length	2019-10-26 21:34:44.802865+05:30
14	auth	0009_alter_user_last_name_max_length	2019-10-26 21:34:44.862294+05:30
15	auth	0010_alter_group_name_max_length	2019-10-26 21:34:44.918746+05:30
16	auth	0011_update_proxy_permissions	2019-10-26 21:34:44.976364+05:30
17	pg_detail	0001_initial	2019-10-26 21:34:45.122265+05:30
18	pg_detail	0002_auto_20191022_1259	2019-10-26 21:34:46.21242+05:30
19	pg_detail	0003_auto_20191023_1857	2019-10-26 21:34:46.269191+05:30
20	pg_detail	0004_comment	2019-10-26 21:34:46.526981+05:30
21	sessions	0001_initial	2019-10-26 21:34:46.914819+05:30
22	users	0001_initial	2019-10-26 21:34:48.034601+05:30
23	users	0002_auto_20191023_1857	2019-10-26 21:34:48.086113+05:30
24	pg_detail	0005_pgdetail_pgmail	2019-10-27 17:45:59.0422+05:30
25	pg_detail	0006_pgdetail_pgphone	2019-10-28 18:03:48.008995+05:30
26	pg_detail	0007_pgdetail_user	2019-10-28 23:06:29.88247+05:30
27	pg_detail	0008_pgowner	2019-10-29 13:33:25.84326+05:30
28	pg_detail	0009_auto_20191029_0703	2019-10-29 13:33:26.278137+05:30
29	pg_detail	0002_auto_20191029_0814	2019-10-29 14:02:48.243086+05:30
30	pg_detail	0003_delete_comment	2019-10-29 14:02:48.364986+05:30
31	pg_detail	0004_auto_20191029_0825	2019-10-29 14:02:48.40045+05:30
32	users	0002_auto_20191029_0827	2019-10-29 14:02:48.43632+05:30
33	pg_detail	0005_pgowner	2019-10-29 14:03:58.691181+05:30
34	pg_detail	0006_auto_20191029_0836	2019-10-29 14:06:49.782053+05:30
35	pg_detail	0007_auto_20191029_0838	2019-10-29 14:08:16.421092+05:30
36	pg_detail	0008_auto_20191029_0839	2019-10-29 14:09:50.747572+05:30
37	pg_detail	0009_auto_20191029_1016	2019-10-29 15:47:45.698013+05:30
38	pg_detail	0010_auto_20191029_1539	2019-10-29 21:12:28.173534+05:30
39	pg_detail	0011_auto_20191029_1542	2019-10-29 21:12:28.293444+05:30
40	pg_detail	0012_auto_20191120_0434	2019-11-20 10:05:06.962342+05:30
\.


--
-- TOC entry 3100 (class 0 OID 16610)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
hxsj7aa7ljfb9pqzhsohv9pag2ifg05b	YWRhZmQ2ZDVlMGRkMmZkZDc1ZDJlZjlmNDBiMjEzOTFiYzgwNzBhYzp7Il9hdXRoX3VzZXJfaWQiOiI0MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjdjYmM4OGM1YjE1MGQ3ZTRkOTk4NTI3NGFkNTY2ZmM0MTM2OTFiNSJ9	2019-12-06 14:57:32.205022+05:30
nlzfi8zq1o5m5dl19lgaoqkstb29xr66	YzlhNzhiMzM4YjgzYTQ1NDNkYzAyNWFjNGIzNmU5NTczNzY2OTQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTYyYWNlMWUyMjdlOWY0MzQ5YThhMzM1NmE3YWNmYWVjYTE4NTRkIn0=	2019-11-15 10:35:41.962727+05:30
uoqabzzprarnzeikxapfbd31grhyawjh	YzlhNzhiMzM4YjgzYTQ1NDNkYzAyNWFjNGIzNmU5NTczNzY2OTQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTYyYWNlMWUyMjdlOWY0MzQ5YThhMzM1NmE3YWNmYWVjYTE4NTRkIn0=	2019-11-15 18:43:42.330254+05:30
ihyku9zselaz1x1avdeput8hs6y1qoca	ZTk2OTY3MTM3MTkzYTlhMGNmMzU5ZGI3MjRkZWQyMGMwZGZiN2MwNzp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjViai0xZDYwNmY4ZDc2YjAzYzM3MDA1NCJ9	2019-12-02 14:43:15.471232+05:30
\.


--
-- TOC entry 3099 (class 0 OID 16589)
-- Dependencies: 217
-- Data for Name: pg_detail_comment; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.pg_detail_comment (id, content, "timestamp", post_id, user_id) FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 16546)
-- Dependencies: 215
-- Data for Name: pg_detail_pgdetail; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.pg_detail_pgdetail (id, "pgName", "pgCity", "pgLocation", "pgAddress", "pgImage1", "pgImage2", "pgImage3", "pgRating", "pgDescription", "pgRules", "pgFood", "pgRoom", "pgCharge", "pgBathroom", "pgFor", "pgLaundry", "pgWiFi", "pgMail", "pgPhone", user_id) FROM stdin;
23	Doma PG	Gangtok	Development area	Development area, near TNSS School, Gangtok, Sikkim.	pg_pics/1_n5of7tk.jpg	pg_pics/2_I8Zlh9S.jpg	pg_pics/3_KMKub1V.jpg	4	Very Good PG Located in Development area Near TNSS School, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.\r\n5. Only mother’s are allowed to visit.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	3	5000	t	Boys	f	f	dummy@mail.com	1234456789	30
24	Gazebo PG	Gangtok	Lower Sichey	Lower Sichey, near Sikkim ICFAI University, Gangtok, Sikkim.	pg_pics/1_VmacNiz.jpg	pg_pics/1_YQHBy9l.jpg	pg_pics/1_UPfYS1j.jpg	5	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.\r\n5. Only mother’s are allowed to visit.	3 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	5000	t	Only Girls	t	f	dummy@mail.com	1234567899	31
25	Image PG	Gangtok	Lower sichey	Lower sichey, near Barpipal Mandir, Gangtok, Sikkim.	pg_pics/2_r0vX9vH.jpg	pg_pics/1_6ocx4TM.jpg	pg_pics/3_rD2D928.jpg	3	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	6000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	32
22	Carewell PG	Gangtok	5th Mile Tadong	5th Mile Tadong, near Sikkim Manipal University, Gangtok, Sikkim.	pg_pics/1_chQ0ZsC.jpg	pg_pics/2_W6bJfpq.jpg	pg_pics/3_yOanU6Z.jpg	4	Very Good PG Located in Tadong Near Sikkim Manipal  University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate will be closed after 9:00 pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	3 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	34	7500	t	Boys and Girls	t	t	dummy@mail.com	1234567899	29
26	Maya PG	Gangtok	5th mile	5th mile, Joredhara, Gangtok, Sikkim.	pg_pics/1_5jrkoi4.jpg	pg_pics/2_Js7ncvl.jpg	pg_pics/3_ZvuTCPr.jpg	4	Very Good PG Located in 5'th Mile, near Sikkim SRM University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	4	5000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	33
28	Royal PG	Gangtok	Lower Sichey	Lower Sichey, Near Barpipal, Gangtok, Sikkim.	pg_pics/1_wi6uXBD.jpg	pg_pics/2_dr3ytUA.jpg	pg_pics/1_HEuEUPB.jpg	4	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	6000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	35
27	Palmu PG	Gangtok	Burtuk	Near Burtuk School, Burtuk, Gangtok, Sikkim.	pg_pics/1_yhjDxzk.jpg	pg_pics/2_ySUakPb.jpg	pg_pics/3_1KTUjSH.jpg	5	Very Good PG Located in Burtuk, Near  Burtuk School, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. One year compulsory to stay for students.\r\n4. Smoking and drinking prohibited.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	5000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	34
29	Sagar PG	Gangtok	5th Mile	5th Mile Tadong, near SRM University, Gangtok, Sikkim.	pg_pics/1_OBvM08P.jpg	pg_pics/2_ADhPdim.jpg	pg_pics/3_WaWufHU.jpg	4	Very Good PG Located in 5'th Mile, near Sikkim SRM University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	3	6000	t	Boys and Girls	t	t	dummy@mail.com	1234456789	36
33	Rahul Pg	gangtok	tadong	tadong	pg_pics/2_kSOwggK.jpg	pg_pics/6_qDC5h1T.jpeg	pg_pics/7_h963ajs.jpeg	4	nice pg	no smoking	rice fish	12	6500	t	Boys and Girls	t	t	deuum@jhsdf.com	123456789	42
\.


--
-- TOC entry 3104 (class 0 OID 24854)
-- Dependencies: 222
-- Data for Name: pg_detail_pgowner; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.pg_detail_pgowner (id, password, last_login, active, admin, email, staff) FROM stdin;
2	1234	2019-10-29 14:30:27+05:30	t	f	Ankush@mail.com	f
1	1234	2019-10-29 14:30:07+05:30	t	f	deba.barman@outlook.com	t
3	1234	2019-10-29 15:48:30+05:30	t	f	afed@iajsh.com	f
\.


--
-- TOC entry 3102 (class 0 OID 16622)
-- Dependencies: 220
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: debanjan
--

COPY public.users_profile (id, image, user_id) FROM stdin;
29	default.jpg	29
38	default.jpg	38
41	default.jpg	41
30	default.jpg	30
31	default.jpg	31
32	default.jpg	32
33	default.jpg	33
34	default.jpg	34
35	default.jpg	35
42	default.jpg	42
36	default.jpg	36
1	profile_pics/deba_1-min1_yPYJhcw.jpg	1
43	profile_pics/deba_1-min1_KMBcOy3.jpg	43
44	default.jpg	44
\.


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 44, true);


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 66, true);


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 197, true);


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 40, true);


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 216
-- Name: pg_detail_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.pg_detail_comment_id_seq', 1, false);


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 214
-- Name: pg_detail_pgdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.pg_detail_pgdetail_id_seq', 33, true);


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 221
-- Name: pg_detail_pgowner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.pg_detail_pgowner_id_seq', 3, true);


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debanjan
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 44, true);


--
-- TOC entry 2893 (class 2606 OID 16542)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2898 (class 2606 OID 16479)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2901 (class 2606 OID 16432)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 16422)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 16465)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2890 (class 2606 OID 16414)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 16450)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 16494)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2903 (class 2606 OID 16440)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 16458)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 16508)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2906 (class 2606 OID 16536)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2921 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2883 (class 2606 OID 16406)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2885 (class 2606 OID 16404)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2881 (class 2606 OID 16396)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 16617)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2928 (class 2606 OID 16597)
-- Name: pg_detail_comment pg_detail_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_comment
    ADD CONSTRAINT pg_detail_comment_pkey PRIMARY KEY (id);


--
-- TOC entry 2924 (class 2606 OID 16554)
-- Name: pg_detail_pgdetail pg_detail_pgdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgdetail
    ADD CONSTRAINT pg_detail_pgdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 2926 (class 2606 OID 24838)
-- Name: pg_detail_pgdetail pg_detail_pgdetail_user_id_key; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgdetail
    ADD CONSTRAINT pg_detail_pgdetail_user_id_key UNIQUE (user_id);


--
-- TOC entry 2941 (class 2606 OID 24872)
-- Name: pg_detail_pgowner pg_detail_pgowner_email_key; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgowner
    ADD CONSTRAINT pg_detail_pgowner_email_key UNIQUE (email);


--
-- TOC entry 2943 (class 2606 OID 24859)
-- Name: pg_detail_pgowner pg_detail_pgowner_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgowner
    ADD CONSTRAINT pg_detail_pgowner_pkey PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 16627)
-- Name: users_profile users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- TOC entry 2938 (class 2606 OID 16629)
-- Name: users_profile users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2891 (class 1259 OID 16543)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2896 (class 1259 OID 16480)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2899 (class 1259 OID 16481)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2886 (class 1259 OID 16466)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2907 (class 1259 OID 16496)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2910 (class 1259 OID 16495)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2913 (class 1259 OID 16510)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2916 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2904 (class 1259 OID 16537)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2919 (class 1259 OID 16533)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2922 (class 1259 OID 16534)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2931 (class 1259 OID 16619)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2934 (class 1259 OID 16618)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2929 (class 1259 OID 16608)
-- Name: pg_detail_comment_post_id_5134bf73; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX pg_detail_comment_post_id_5134bf73 ON public.pg_detail_comment USING btree (post_id);


--
-- TOC entry 2930 (class 1259 OID 16609)
-- Name: pg_detail_comment_user_id_be3a22bf; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX pg_detail_comment_user_id_be3a22bf ON public.pg_detail_comment USING btree (user_id);


--
-- TOC entry 2939 (class 1259 OID 24884)
-- Name: pg_detail_pgowner_email_5372be29_like; Type: INDEX; Schema: public; Owner: debanjan
--

CREATE INDEX pg_detail_pgowner_email_5372be29_like ON public.pg_detail_pgowner USING btree (email varchar_pattern_ops);


--
-- TOC entry 2946 (class 2606 OID 16473)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2945 (class 2606 OID 16468)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2944 (class 2606 OID 16459)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2948 (class 2606 OID 16488)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2947 (class 2606 OID 16483)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2950 (class 2606 OID 16502)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2949 (class 2606 OID 16497)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2951 (class 2606 OID 16523)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2952 (class 2606 OID 16528)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2954 (class 2606 OID 16598)
-- Name: pg_detail_comment pg_detail_comment_post_id_5134bf73_fk_pg_detail_pgdetail_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_comment
    ADD CONSTRAINT pg_detail_comment_post_id_5134bf73_fk_pg_detail_pgdetail_id FOREIGN KEY (post_id) REFERENCES public.pg_detail_pgdetail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2955 (class 2606 OID 16603)
-- Name: pg_detail_comment pg_detail_comment_user_id_be3a22bf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_comment
    ADD CONSTRAINT pg_detail_comment_user_id_be3a22bf_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2953 (class 2606 OID 24934)
-- Name: pg_detail_pgdetail pg_detail_pgdetail_user_id_63e6e928_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.pg_detail_pgdetail
    ADD CONSTRAINT pg_detail_pgdetail_user_id_63e6e928_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2956 (class 2606 OID 16630)
-- Name: users_profile users_profile_user_id_2112e78d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debanjan
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-12-07 12:59:58 IST

--
-- PostgreSQL database dump complete
--

