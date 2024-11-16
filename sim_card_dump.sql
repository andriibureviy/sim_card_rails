--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Homebrew)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO sim_card;

--
-- Name: numbers; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.numbers (
    id integer NOT NULL,
    number character varying,
    created_by_telegram_id integer,
    created_at timestamp without time zone,
    email character varying,
    expire_at timestamp(6) without time zone,
    user_id bigint
);


ALTER TABLE public.numbers OWNER TO sim_card;

--
-- Name: numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: sim_card
--

CREATE SEQUENCE public.numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.numbers_id_seq OWNER TO sim_card;

--
-- Name: numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sim_card
--

ALTER SEQUENCE public.numbers_id_seq OWNED BY public.numbers.id;


--
-- Name: numbers_platforms; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.numbers_platforms (
    number_id bigint NOT NULL,
    platform_id bigint NOT NULL
);


ALTER TABLE public.numbers_platforms OWNER TO sim_card;

--
-- Name: platforms; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.platforms (
    id bigint NOT NULL,
    text_code character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.platforms OWNER TO sim_card;

--
-- Name: platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: sim_card
--

CREATE SEQUENCE public.platforms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.platforms_id_seq OWNER TO sim_card;

--
-- Name: platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sim_card
--

ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO sim_card;

--
-- Name: telegrams; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.telegrams (
    id bigint NOT NULL,
    name character varying,
    surname character varying,
    username character varying,
    phone character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.telegrams OWNER TO sim_card;

--
-- Name: telegrams_id_seq; Type: SEQUENCE; Schema: public; Owner: sim_card
--

CREATE SEQUENCE public.telegrams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telegrams_id_seq OWNER TO sim_card;

--
-- Name: telegrams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sim_card
--

ALTER SEQUENCE public.telegrams_id_seq OWNED BY public.telegrams.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sim_card
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    ads_power_profile_id character varying,
    ads_power_sequence_id character varying,
    notes jsonb,
    group_id bigint,
    subgroup_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO sim_card;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sim_card
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO sim_card;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sim_card
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: numbers id; Type: DEFAULT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers ALTER COLUMN id SET DEFAULT nextval('public.numbers_id_seq'::regclass);


--
-- Name: platforms id; Type: DEFAULT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);


--
-- Name: telegrams id; Type: DEFAULT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.telegrams ALTER COLUMN id SET DEFAULT nextval('public.telegrams_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-09-16 12:30:27.003561	2024-09-16 12:30:27.004846
\.


--
-- Data for Name: numbers; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.numbers (id, number, created_by_telegram_id, created_at, email, expire_at, user_id) FROM stdin;
15	+380999033461	303199608	2024-09-18 08:41:24.114161	\N	\N	\N
16	+380999235341	303199608	2024-09-18 08:53:04.446251	\N	\N	\N
52	+380999770460	654730635	2024-09-24 18:57:47.493661	\N	\N	\N
53	+380999072564	654730635	2024-09-24 19:00:45.137051	\N	\N	\N
54	+380999770758	654730635	2024-09-24 19:05:25.683075	\N	\N	\N
55	+380999073005	654730635	2024-09-24 19:08:15.895997	\N	\N	\N
56	+380999073427	654730635	2024-09-24 19:10:59.427746	\N	\N	\N
62	+380999770332	654730635	2024-09-26 09:07:54.211835	\N	\N	\N
63	+380999098995	654730635	2024-09-26 09:10:56.368389	\N	\N	\N
64	+380999183778	654730635	2024-09-26 09:15:41.94449	\N	\N	\N
65	+380999769968	654730635	2024-09-26 09:18:44.830186	\N	\N	\N
66	+380999072325	654730635	2024-09-26 09:20:49.850348	\N	\N	\N
67	+380999233027	654730635	2024-09-26 09:27:24.176914	\N	\N	\N
68	+380999157377	654730635	2024-09-26 09:30:04.106423	\N	\N	\N
69	+380999770885	654730635	2024-09-26 09:32:37.399427	\N	\N	\N
70	+380999473931	654730635	2024-09-26 09:35:13.298167	\N	\N	\N
71	+380999073413	654730635	2024-09-26 09:37:24.691845	\N	\N	\N
87	+380999770657	654730635	2024-09-30 14:56:45.84527	\N	\N	\N
88	+380999769752	654730635	2024-09-30 15:05:03.157341	\N	\N	\N
89	+380999071923	654730635	2024-09-30 15:10:13.009974	\N	\N	\N
90	+380999072360	654730635	2024-09-30 15:12:54.81422	\N	\N	\N
91	+380999235324	654730635	2024-09-30 15:15:12.795694	\N	\N	\N
92	+380999072889	654730635	2024-10-03 14:26:00.80749	\N	\N	\N
93	+380999071649	654730635	2024-10-03 14:28:40.666982	\N	\N	\N
94	+380999258753	654730635	2024-10-03 14:31:05.801567	\N	\N	\N
95	+380999769934	654730635	2024-10-03 14:33:30.80219	\N	\N	\N
96	+380999235174	654730635	2024-10-03 14:40:25.367079	\N	\N	\N
97	+380999072977	654730635	2024-10-03 14:54:47.750517	\N	\N	\N
98	+380999034158	654730635	2024-10-03 14:57:29.752461	\N	\N	\N
99	+380999034324	654730635	2024-10-03 15:00:13.482773	\N	\N	\N
100	+380999033844	654730635	2024-10-03 15:02:03.928094	\N	\N	\N
45	+380999033739	654730635	2024-09-23 00:00:00	opticvasil@gmail.com	2025-10-22 00:00:00	36
44	+380999033922	654730635	2024-09-23 00:00:00		2025-10-22 00:00:00	\N
46	+380999235310	654730635	2024-09-23 00:00:00		2025-10-22 00:00:00	\N
34	+380999771045	303199608	2024-09-21 00:00:00	naziiiku@ukr.net	2025-10-22 00:00:00	33
40	+380999071876	303199608	2024-09-22 00:00:00	stepangirk@ukr.net	2025-10-22 00:00:00	32
36	+380999034407	654730635	2024-09-22 00:00:00		2025-10-22 00:00:00	\N
37	+380999034833	654730635	2024-09-22 00:00:00		2025-10-22 00:00:00	\N
38	+380999034005	654730635	2024-09-22 00:00:00		2025-10-22 00:00:00	\N
39	+380999235381	654730635	2024-09-22 00:00:00		2025-10-22 00:00:00	\N
43	+380999035184	654730635	2024-09-22 00:00:00		2025-10-22 00:00:00	\N
106	+380999170599	654730635	2024-10-07 00:00:00		2025-10-22 00:00:00	\N
105	+380999072568	654730635	2024-10-07 00:00:00		2025-10-22 00:00:00	\N
104	+380999115267	654730635	2024-10-07 00:00:00		2025-10-22 00:00:00	\N
103	+380999235307	654730635	2024-10-07 00:00:00		2025-10-22 00:00:00	\N
102	+380999235311	654730635	2024-10-07 00:00:00		2025-10-22 00:00:00	\N
22	+380999034684	303199608	2024-09-19 00:00:00	sunglass4684@outlook.com	2025-10-22 00:00:00	11
33	+380999112154	303199608	2024-09-20 00:00:00	irinazetkova8@gmail.com	2025-10-22 00:00:00	9
32	+380999071817	303199608	2024-09-20 00:00:00	andrijocko7@gmail.com	2025-10-22 00:00:00	8
31	+380999283200	303199608	2024-09-20 00:00:00	restmajkl@gmail.com	2025-10-22 00:00:00	7
20	+380999770716	303199608	2024-09-19 00:00:00	doglikeafog@outlook.com	2025-10-22 00:00:00	12
19	+380999770729	303199608	2024-09-19 00:00:00	doctorruslana@outlook.com	2025-10-22 00:00:00	14
21	+380999034386	303199608	2024-09-19 00:00:00	cococochka8@gmail.com	2025-10-22 00:00:00	15
11	+380999034854	303199608	2024-09-16 00:00:00	aristtotel@outlook.com	2025-05-20 00:00:00	16
12	+380999235439	303199608	2024-09-17 00:00:00	tanyatopova@outlook.com	2025-10-23 00:00:00	18
17	+380999771078	303199608	2024-09-18 00:00:00	cococochka6@gmail.com	2025-10-23 00:00:00	22
14	+380999235339	303199608	2024-09-17 00:00:00	cococochka4@gmail.com	2025-10-23 00:00:00	23
18	+380999769851	303199608	2024-09-18 00:00:00	cococochka7@gmail.com	2025-10-23 00:00:00	24
13	+380999235306	303199608	2024-09-17 00:00:00	cococochka3@gmail.com	2025-10-23 00:00:00	25
5	+380999072931	303199608	2024-09-16 00:00:00	christineboiko@outlook.com	2025-10-23 00:00:00	19
6	+380999072460	303199608	2024-09-16 00:00:00	liliyaakovalchuk@outlook.com	2025-10-23 00:00:00	20
8	+380999035006	303199608	2024-09-16 00:00:00	sofiyasnizenko@ukr.net	2025-10-23 00:00:00	26
10	+380999034339	303199608	2024-09-16 00:00:00	marinasanni@ukr.net	2025-10-23 00:00:00	30
26	+380999034556	303199608	2024-09-19 00:00:00	mamaterezaaaa@ukr.net	2025-10-23 00:00:00	28
61	+380999771059	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
60	+380999182574	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
59	+380999273450	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
58	+380999252485	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
57	+380999071725	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
50	+380999770094	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
49	+380999095348	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
48	+380999073414	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
51	+380999770589	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
47	+380999073579	654730635	2024-09-24 00:00:00		2025-10-23 00:00:00	\N
76	+380999207031	654730635	2024-09-26 00:00:00	0999207031alla@gmail.com	2025-10-23 00:00:00	\N
75	+380999246813	654730635	2024-09-26 00:00:00		2025-10-23 00:00:00	\N
74	+380999073184	654730635	2024-09-26 00:00:00		2025-10-23 00:00:00	\N
73	+380999073083	654730635	2024-09-26 00:00:00		2025-10-23 00:00:00	\N
72	+380999289544	654730635	2024-09-26 00:00:00		2025-10-23 00:00:00	\N
81	+380999235206	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
80	+380999072097	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
79	+380999072125	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
78	+380999770437	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
77	+380999215870	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
86	+380999204809	654730635	2024-09-30 00:00:00		2023-10-23 00:00:00	\N
85	+380999235332	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
84	+380999130694	654730635	2024-09-30 00:00:00	0999130694pirs@gmail.com	2025-10-23 00:00:00	\N
83	+380999770043	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
82	+380999217974	654730635	2024-09-30 00:00:00		2025-10-23 00:00:00	\N
3	+380999073577	303199608	2024-09-16 00:00:00	yazvik1975@outlook.com	2025-10-15 00:00:00	\N
112	+380999770826	\N	2024-11-12 00:00:00	vasilporosenko9@gmail.com	2025-11-13 00:00:00	1
109	+380999235141	654730635	2024-10-07 00:00:00	ruipouhan@gmail.com	2025-11-13 00:00:00	3
110	+380999235190	654730635	2024-10-07 00:00:00	alibrostam@gmail.com	2025-11-13 00:00:00	2
108	+380999218179	654730635	2024-10-07 00:00:00	sfinxpallesta@gmail.com	2025-11-13 00:00:00	4
30	+380999771005	303199608	2024-09-20 00:00:00	natenlopi@gmail.com	2025-10-22 00:00:00	6
27	+380999769773	303199608	2024-09-19 00:00:00	markoteti@ukr.net	2025-10-23 00:00:00	29
35	+380999073463	303199608	2024-09-21 00:00:00	novooamor@ukr.net	2025-10-22 00:00:00	34
107	+380999223856	654730635	2024-10-07 00:00:00	optiklila6@gmail.com	2025-11-13 00:00:00	5
29	+380999073576	303199608	2024-09-20 00:00:00	prihodkoroman918@gmail.com	2025-10-22 00:00:00	10
23	+380999770992	303199608	2024-09-19 00:00:00	petrokaplan@outlook.com	2025-10-22 00:00:00	13
24	+380999034709	303199608	2024-09-19 00:00:00	eduardgarmash@outlook.com	2025-10-23 00:00:00	17
28	+380999769839	303199608	2024-09-19 00:00:00	nestoradam@ukr.net	2025-10-23 00:00:00	21
9	+380999034770	303199608	2024-09-16 00:00:00	muhamedalil@ukr.net	2025-10-23 00:00:00	27
41	+380999770287	303199608	2024-09-22 00:00:00	ariianaa@ukr.net	2025-10-22 00:00:00	31
42	+380999252809	303199608	2024-09-22 00:00:00	martiinnn@ukr.net	2025-10-22 00:00:00	35
\.


--
-- Data for Name: numbers_platforms; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.numbers_platforms (number_id, platform_id) FROM stdin;
3	1
11	1
45	13
44	13
46	13
35	7
34	7
40	7
41	7
42	7
36	12
37	12
38	12
39	12
43	12
106	26
105	26
104	26
103	26
102	26
33	6
32	6
31	6
30	6
29	6
23	3
19	3
21	3
22	3
20	3
28	5
17	5
14	5
18	5
13	5
5	1
12	1
24	1
6	1
27	2
26	2
9	2
8	2
10	2
61	16
60	16
59	16
58	16
57	16
50	14
49	14
48	14
51	14
47	14
76	19
75	19
74	19
73	19
72	19
81	20
80	20
79	20
78	20
77	20
86	21
85	21
84	21
83	21
82	21
112	28
110	27
109	27
108	27
107	27
\.


--
-- Data for Name: platforms; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.platforms (id, text_code, created_at, updated_at) FROM stdin;
1	test	2024-10-15 09:57:53.877974	2024-10-15 09:57:53.877974
2	pac0	2024-10-15 10:06:02.154827	2024-10-15 10:06:02.154827
3	pac1	2024-10-15 10:06:02.161815	2024-10-15 10:06:02.161815
4	pac2	2024-10-15 10:06:02.166607	2024-10-15 10:06:02.166607
5	pac3	2024-10-15 10:06:02.170982	2024-10-15 10:06:02.170982
6	pac4	2024-10-15 10:06:02.176288	2024-10-15 10:06:02.176288
7	pac5	2024-10-15 10:06:02.180367	2024-10-15 10:06:02.180367
8	pac6	2024-10-15 10:06:02.184629	2024-10-15 10:06:02.184629
9	pac7	2024-10-15 10:06:02.188849	2024-10-15 10:06:02.188849
10	pac8	2024-10-15 10:06:02.194332	2024-10-15 10:06:02.194332
11	pac9	2024-10-15 10:06:02.19874	2024-10-15 10:06:02.19874
12	pac10	2024-10-15 10:06:02.203633	2024-10-15 10:06:02.203633
13	pac11	2024-10-15 10:06:02.207755	2024-10-15 10:06:02.207755
14	pac12	2024-10-15 10:06:02.212084	2024-10-15 10:06:02.212084
15	pac13	2024-10-15 10:06:02.216535	2024-10-15 10:06:02.216535
16	pac14	2024-10-15 10:06:02.221142	2024-10-15 10:06:02.221142
17	pac15	2024-10-15 10:06:02.224714	2024-10-15 10:06:02.224714
18	pac16	2024-10-15 10:06:02.228173	2024-10-15 10:06:02.228173
19	pac17	2024-10-15 10:06:02.231662	2024-10-15 10:06:02.231662
20	pac18	2024-10-15 10:06:02.236543	2024-10-15 10:06:02.236543
21	pac19	2024-10-15 10:06:02.240511	2024-10-15 10:06:02.240511
22	pac20	2024-10-15 10:06:02.244663	2024-10-15 10:06:02.244663
23	pac21	2024-10-15 10:06:02.248165	2024-10-15 10:06:02.248165
24	pac22	2024-10-15 10:06:02.252746	2024-10-15 10:06:02.252746
25	pac23	2024-10-15 10:06:02.256101	2024-10-15 10:06:02.256101
26	pac24	2024-10-15 10:06:02.259451	2024-10-15 10:06:02.259451
27	pac25	2024-10-15 10:06:02.262847	2024-10-15 10:06:02.262847
28	pac26	2024-10-15 10:06:02.268602	2024-10-15 10:06:02.268602
29	pac27	2024-10-15 10:06:02.272289	2024-10-15 10:06:02.272289
30	pac28	2024-10-15 10:06:02.275797	2024-10-15 10:06:02.275797
31	pac29	2024-10-15 10:06:02.27941	2024-10-15 10:06:02.27941
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.schema_migrations (version) FROM stdin;
20240916122202
20240918124210
20240918124630
20241015095247
20241112104532
20241112110638
20241112111544
\.


--
-- Data for Name: telegrams; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.telegrams (id, name, surname, username, phone, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sim_card
--

COPY public.users (id, name, ads_power_profile_id, ads_power_sequence_id, notes, group_id, subgroup_id, created_at, updated_at) FROM stdin;
1	 account 3	kporrl6	3	""	\N	\N	2024-11-12 12:27:48.5474	2024-11-12 12:27:48.5474
3	 account 4	kporrx2	4	""	\N	\N	2024-11-12 15:01:06.188321	2024-11-12 15:01:06.188321
4	 account 5	kpors88	5	""	\N	\N	2024-11-12 15:08:32.955418	2024-11-12 15:08:32.955418
5	 account 6	kpqosgi	6	"banned"	\N	\N	2024-11-13 13:30:51.502317	2024-11-13 13:31:11.288021
6	 account 7	kpr9vjj	7	""	\N	\N	2024-11-13 20:56:27.29887	2024-11-13 20:56:27.29887
7	 account 8	kpra2v5	8	"banned"	\N	\N	2024-11-13 21:04:43.706094	2024-11-13 21:04:43.706094
8	 account 9	kpragb5	9	"banned"	\N	\N	2024-11-13 21:17:18.228182	2024-11-13 21:17:18.228182
9	 account 10	kpraofh	10	"banned"	\N	\N	2024-11-13 21:23:58.802099	2024-11-13 21:23:58.802099
10	 account 11	kpratrq	11	"banned"	\N	\N	2024-11-13 21:34:16.929514	2024-11-13 21:34:16.929514
2	 account 2	kporrdb	2	"banned"	\N	\N	2024-11-12 12:37:44.105121	2024-11-14 10:45:20.333209
11	 account 12	kpsi7p1	12	"banned"	\N	\N	2024-11-14 13:12:41.198453	2024-11-14 13:12:41.198453
12	account 13	kpsjdat	13	"banned"	\N	\N	2024-11-14 13:25:21.984724	2024-11-14 13:25:21.984724
13	 account 14	kpsjx71	14	"banned"	\N	\N	2024-11-14 17:03:36.740175	2024-11-14 17:03:36.740175
14	account 15	kpsjybn	15	"banned"	\N	\N	2024-11-14 17:11:34.226307	2024-11-14 17:11:34.226307
15	 account 16	kpsk06a	16	"banned with email"	\N	\N	2024-11-14 17:29:44.826057	2024-11-14 17:29:44.826057
16	 account 17	kpsk1fk	17	"banned"	\N	\N	2024-11-14 17:39:53.873318	2024-11-14 17:39:53.873318
17	 account 18	kpswdi3	18	""	\N	\N	2024-11-14 17:49:33.53315	2024-11-14 17:49:33.53315
18	 account 19	kpswere	19	""	\N	\N	2024-11-14 17:54:16.938033	2024-11-14 17:54:16.938033
19	 account 20	kpswfiy	20	"banned"	\N	\N	2024-11-14 17:59:55.810113	2024-11-14 17:59:55.810113
20	 account 21	kpswg00	21	""	\N	\N	2024-11-14 18:05:57.50726	2024-11-14 18:05:57.50726
21	account 22	kpsxjte	22	"banned"	\N	\N	2024-11-14 18:55:57.429112	2024-11-14 18:55:57.429112
22	 account 23	kpsxkff	23	"banned with email"	\N	\N	2024-11-14 19:03:42.42625	2024-11-14 19:03:42.42625
23	account 24	kpsxkxg	24	""	\N	\N	2024-11-14 19:13:47.188157	2024-11-14 19:13:47.188157
24	 account 25	kpt12re	25	"banned with email"	\N	\N	2024-11-14 19:20:57.632541	2024-11-14 19:20:57.632541
25	 account 26	kpt13ff	26	"banned with email"	\N	\N	2024-11-14 19:26:03.24582	2024-11-14 19:26:03.24582
26	 account 27	kpt1e16	27	"banned"	\N	\N	2024-11-14 19:32:50.536559	2024-11-14 19:32:50.536559
27	 account 28	kpt1ebc	28	"banned"	\N	\N	2024-11-14 19:39:22.63161	2024-11-14 19:39:30.685547
28	 account 29	kpt1eqj	29	""	\N	\N	2024-11-14 19:46:03.337089	2024-11-14 19:46:03.337089
29	 account 30	kpt1f2n	30	"banned"	\N	\N	2024-11-14 19:52:53.773106	2024-11-14 19:52:53.773106
30	 account 31	kpt28yr\t	31	"banned"	\N	\N	2024-11-14 19:58:38.901935	2024-11-14 19:58:38.901935
31	 account 32	kpt2j7j\t	32	""	\N	\N	2024-11-14 20:10:21.248941	2024-11-14 20:10:21.248941
32	 account 33	kpt2jid	33	""	\N	\N	2024-11-14 20:16:34.395129	2024-11-14 20:16:34.395129
33	 account 34	kpt2jv4	34	"banned"	\N	\N	2024-11-14 20:22:14.414281	2024-11-14 20:22:14.414281
34	 account 35	kpt2kd1	35	"banned"	\N	\N	2024-11-14 20:27:37.408586	2024-11-14 20:27:37.408586
35	 account 36	kpt2kot\t	36	""	\N	\N	2024-11-14 20:33:13.594273	2024-11-14 20:33:13.594273
36	 account 37	kpt3jh3	37	""	\N	\N	2024-11-14 20:42:50.192212	2024-11-14 20:42:50.192212
\.


--
-- Name: numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sim_card
--

SELECT pg_catalog.setval('public.numbers_id_seq', 112, true);


--
-- Name: platforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sim_card
--

SELECT pg_catalog.setval('public.platforms_id_seq', 31, true);


--
-- Name: telegrams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sim_card
--

SELECT pg_catalog.setval('public.telegrams_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sim_card
--

SELECT pg_catalog.setval('public.users_id_seq', 36, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: numbers numbers_number_key; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers
    ADD CONSTRAINT numbers_number_key UNIQUE (number);


--
-- Name: numbers numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers
    ADD CONSTRAINT numbers_pkey PRIMARY KEY (id);


--
-- Name: platforms platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: telegrams telegrams_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.telegrams
    ADD CONSTRAINT telegrams_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_numbers_on_user_id; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE INDEX index_numbers_on_user_id ON public.numbers USING btree (user_id);


--
-- Name: index_numbers_platforms_on_number_id; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE INDEX index_numbers_platforms_on_number_id ON public.numbers_platforms USING btree (number_id);


--
-- Name: index_numbers_platforms_on_number_id_and_platform_id; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE UNIQUE INDEX index_numbers_platforms_on_number_id_and_platform_id ON public.numbers_platforms USING btree (number_id, platform_id);


--
-- Name: index_numbers_platforms_on_platform_id; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE INDEX index_numbers_platforms_on_platform_id ON public.numbers_platforms USING btree (platform_id);


--
-- Name: index_platforms_on_text_code; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE UNIQUE INDEX index_platforms_on_text_code ON public.platforms USING btree (text_code);


--
-- Name: index_telegrams_on_user_id; Type: INDEX; Schema: public; Owner: sim_card
--

CREATE INDEX index_telegrams_on_user_id ON public.telegrams USING btree (user_id);


--
-- Name: numbers_platforms fk_rails_1e7f6f0360; Type: FK CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers_platforms
    ADD CONSTRAINT fk_rails_1e7f6f0360 FOREIGN KEY (number_id) REFERENCES public.numbers(id);


--
-- Name: telegrams fk_rails_6eaf06916b; Type: FK CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.telegrams
    ADD CONSTRAINT fk_rails_6eaf06916b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: numbers fk_rails_be6237c63a; Type: FK CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers
    ADD CONSTRAINT fk_rails_be6237c63a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: numbers_platforms fk_rails_c21091a173; Type: FK CONSTRAINT; Schema: public; Owner: sim_card
--

ALTER TABLE ONLY public.numbers_platforms
    ADD CONSTRAINT fk_rails_c21091a173 FOREIGN KEY (platform_id) REFERENCES public.platforms(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO sim_card;


--
-- PostgreSQL database dump complete
--

