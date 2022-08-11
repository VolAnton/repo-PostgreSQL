--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-08-11 13:33:08

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
-- TOC entry 209 (class 1259 OID 16524)
-- Name: communities; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities (
    id integer NOT NULL,
    name character varying(120),
    creator_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.communities OWNER TO gb_user;

--
-- TOC entry 210 (class 1259 OID 16527)
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.communities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communities_id_seq OWNER TO gb_user;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 210
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;


--
-- TOC entry 211 (class 1259 OID 16528)
-- Name: communities_users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities_users (
    community_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.communities_users OWNER TO gb_user;

--
-- TOC entry 212 (class 1259 OID 16531)
-- Name: friendship; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.friendship (
    id integer NOT NULL,
    requested_by_user_id integer NOT NULL,
    requested_to_user_id integer NOT NULL,
    status_id integer NOT NULL,
    requested_at timestamp without time zone,
    confirmed_at timestamp without time zone
);


ALTER TABLE public.friendship OWNER TO gb_user;

--
-- TOC entry 213 (class 1259 OID 16534)
-- Name: friendship_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.friendship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_id_seq OWNER TO gb_user;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 213
-- Name: friendship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.friendship_id_seq OWNED BY public.friendship.id;


--
-- TOC entry 214 (class 1259 OID 16535)
-- Name: friendship_statuses; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.friendship_statuses (
    id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.friendship_statuses OWNER TO gb_user;

--
-- TOC entry 215 (class 1259 OID 16538)
-- Name: friendship_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.friendship_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_statuses_id_seq OWNER TO gb_user;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 215
-- Name: friendship_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.friendship_statuses_id_seq OWNED BY public.friendship_statuses.id;


--
-- TOC entry 216 (class 1259 OID 16539)
-- Name: messages; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL,
    body text,
    is_important boolean,
    is_delivered boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.messages OWNER TO gb_user;

--
-- TOC entry 217 (class 1259 OID 16544)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO gb_user;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 217
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- TOC entry 218 (class 1259 OID 16545)
-- Name: photo; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.photo OWNER TO gb_user;

--
-- TOC entry 219 (class 1259 OID 16550)
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO gb_user;

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 219
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- TOC entry 220 (class 1259 OID 16551)
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    subscrubed_by_user_id integer NOT NULL,
    subscrubed_to_user_or_community_id integer NOT NULL,
    in_community boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.subscriptions OWNER TO gb_user;

--
-- TOC entry 221 (class 1259 OID 16554)
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_id_seq OWNER TO gb_user;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 221
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- TOC entry 222 (class 1259 OID 16555)
-- Name: users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    phone character varying(15),
    main_photo_id integer,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO gb_user;

--
-- TOC entry 223 (class 1259 OID 16558)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO gb_user;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 223
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 224 (class 1259 OID 16559)
-- Name: video; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.video (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.video OWNER TO gb_user;

--
-- TOC entry 225 (class 1259 OID 16564)
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO gb_user;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 225
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- TOC entry 3246 (class 2604 OID 16565)
-- Name: communities id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 16566)
-- Name: friendship id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship ALTER COLUMN id SET DEFAULT nextval('public.friendship_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 16567)
-- Name: friendship_statuses id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship_statuses ALTER COLUMN id SET DEFAULT nextval('public.friendship_statuses_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 16568)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 16569)
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 16570)
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 16571)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 16572)
-- Name: video id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- TOC entry 3423 (class 0 OID 16524)
-- Dependencies: 209
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.communities (id, name, creator_id, created_at) FROM stdin;
1	Pellentesque tincidunt	61	2022-05-19 17:06:00
2	tempor augue ac ipsum.	33	2021-08-27 05:04:28
3	eleifend	33	2023-05-17 12:19:02
4	ac arcu. Nunc	76	2023-01-21 15:48:04
5	volutpat. Nulla dignissim. Maecenas ornare	2	2021-08-23 11:05:13
6	lacinia mattis.	29	2022-09-27 02:47:08
7	gravida sit	2	2023-01-18 12:06:28
8	luctus ut,	71	2022-09-30 03:02:39
9	tortor at risus. Nunc	44	2022-11-19 14:38:35
10	sagittis augue,	89	2022-04-20 21:15:11
11	ac mattis velit justo nec	93	2022-04-10 11:18:32
12	Curabitur consequat, lectus sit	66	2023-02-24 21:05:00
13	aliquet diam.	59	2022-09-18 16:10:47
14	eu augue porttitor	62	2023-07-04 16:42:00
15	sed	37	2023-03-05 01:32:03
16	nunc sed libero. Proin	12	2021-10-02 19:15:27
17	vel turpis. Aliquam adipiscing lobortis	89	2021-12-25 18:41:01
18	morbi tristique senectus et netus	47	2022-02-14 00:49:13
19	mauris. Suspendisse	72	2021-08-28 04:33:36
20	nunc	31	2022-02-01 21:35:15
21	non dui	56	2022-05-29 03:49:45
22	euismod mauris eu	97	2022-11-29 05:27:51
23	vulputate, lacus. Cras interdum. Nunc	69	2022-03-18 15:42:00
24	magnis dis parturient	70	2022-12-21 01:22:21
25	mattis. Cras eget nisi	25	2021-11-29 20:16:32
26	Nam nulla	13	2022-02-23 00:12:25
27	Maecenas libero	82	2023-07-10 15:23:44
28	lorem vitae odio	39	2023-07-13 00:04:18
29	erat volutpat. Nulla	56	2022-08-02 13:16:57
30	per conubia nostra, per	16	2023-02-01 16:26:41
31	elit. Nulla facilisi. Sed neque.	76	2022-01-25 07:48:05
32	mollis	90	2022-04-20 00:11:43
33	fringilla ornare placerat, orci	31	2023-08-03 23:58:17
34	nibh lacinia orci, consectetuer	67	2023-06-30 20:43:48
35	magna. Sed eu eros.	32	2022-10-31 02:58:33
36	semper tellus id	8	2021-11-14 02:15:29
37	Integer	53	2022-11-17 02:34:48
38	enim.	4	2023-02-24 14:42:44
39	eleifend. Cras sed	77	2021-10-04 00:39:38
40	dolor. Fusce mi lorem,	62	2022-03-20 16:57:08
41	vulputate	17	2022-05-30 22:33:00
42	ornare egestas	9	2022-04-01 04:18:51
43	eget, dictum placerat, augue.	43	2022-11-23 00:21:35
44	ipsum	83	2021-10-03 17:23:14
45	Praesent luctus. Curabitur egestas	39	2023-05-13 10:18:05
46	ridiculus mus. Aenean	86	2022-01-17 03:44:34
47	orci sem eget	23	2022-11-19 12:57:35
48	Morbi	94	2023-04-08 08:21:28
49	Mauris ut quam	88	2023-02-06 15:43:00
50	lectus pede, ultrices a,	62	2023-06-07 11:05:05
51	Phasellus vitae	41	2023-03-13 22:40:35
52	suscipit nonummy. Fusce fermentum	99	2022-12-29 01:37:26
53	vulputate, nisi sem	17	2022-11-30 05:18:54
54	semper cursus. Integer mollis. Integer	7	2022-04-19 20:58:24
55	tristique neque venenatis lacus. Etiam	74	2022-07-13 03:24:50
56	et magnis dis parturient montes,	69	2023-03-19 21:59:12
57	consectetuer	34	2022-04-23 09:31:01
58	hendrerit id,	27	2022-04-29 07:04:35
59	vel nisl.	16	2021-12-15 10:11:13
60	Aenean massa. Integer vitae	35	2022-07-19 17:21:26
61	Donec tempus,	34	2023-03-04 00:05:43
62	sem,	48	2021-08-14 04:59:45
63	Nunc mauris. Morbi non	93	2022-06-25 04:22:55
64	nunc. Quisque ornare tortor at	79	2022-12-27 22:11:21
65	Nunc mauris. Morbi	72	2023-08-03 06:15:19
66	pulvinar arcu et	24	2023-04-10 15:34:51
67	consequat, lectus sit amet	11	2022-11-20 07:06:33
68	iaculis	95	2023-03-19 08:48:20
69	lectus. Cum sociis	15	2021-10-14 03:47:48
70	nec, cursus a,	49	2021-11-08 22:10:35
71	consectetuer, cursus	30	2022-01-08 11:51:44
72	velit eget laoreet	98	2023-04-18 14:07:37
73	Cras sed leo.	19	2023-02-04 02:35:02
74	ligula. Aliquam	98	2023-07-09 10:23:54
75	vel lectus. Cum sociis	97	2021-10-08 17:46:42
76	orci,	46	2021-12-29 21:40:12
77	erat nonummy	67	2022-02-15 13:10:25
78	scelerisque mollis. Phasellus	45	2022-07-25 09:53:00
79	lorem, sit amet	14	2022-01-13 04:27:20
80	nisi a odio semper	93	2022-01-02 22:38:34
81	lacus,	93	2022-08-17 17:43:40
82	Nunc sollicitudin commodo	63	2023-07-29 16:23:53
83	Nulla aliquet. Proin	93	2022-11-13 18:55:12
84	Proin eget odio. Aliquam	64	2022-02-01 23:38:55
85	lobortis quam a	75	2021-08-14 03:17:51
86	pede blandit congue.	12	2022-10-08 17:37:50
87	imperdiet dictum	39	2022-08-26 22:16:16
88	arcu.	64	2022-05-11 14:09:44
89	adipiscing ligula. Aenean	32	2022-12-04 00:49:47
90	diam	44	2022-08-06 20:16:17
91	egestas nunc sed	69	2022-02-22 14:33:26
92	Ut nec urna et arcu	12	2022-02-05 11:37:12
93	enim consequat	23	2022-09-15 08:28:50
94	convallis convallis dolor.	98	2022-06-16 10:23:15
95	pellentesque massa lobortis ultrices.	64	2023-06-19 17:30:52
96	convallis in, cursus	67	2022-12-31 23:51:24
97	ut quam vel sapien	51	2022-01-09 18:02:02
98	malesuada	42	2023-05-31 21:19:49
99	eu,	71	2022-11-18 18:57:38
100	ipsum nunc	51	2022-01-21 09:07:35
\.


--
-- TOC entry 3425 (class 0 OID 16528)
-- Dependencies: 211
-- Data for Name: communities_users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.communities_users (community_id, user_id, created_at) FROM stdin;
20	35	2023-04-07 17:01:43
60	5	2022-04-29 00:04:38
9	45	2022-06-02 00:57:09
47	75	2023-05-04 18:15:29
94	57	2022-10-01 15:30:55
63	76	2021-12-20 10:17:43
97	73	2023-06-28 05:40:51
40	54	2023-01-29 16:22:32
71	39	2022-10-12 06:17:47
64	28	2022-12-28 16:47:44
45	57	2022-07-24 15:28:32
32	67	2022-11-04 05:17:15
94	99	2022-05-01 21:44:12
63	65	2022-08-30 08:10:26
57	18	2022-06-06 13:46:02
73	38	2022-07-06 00:52:33
59	67	2023-04-29 10:05:17
61	8	2023-03-22 21:31:59
46	54	2023-05-25 21:34:36
50	47	2023-08-01 13:59:53
81	63	2023-05-25 13:26:46
51	36	2021-10-23 22:56:13
21	17	2021-09-19 13:20:48
9	87	2022-06-08 11:57:03
88	62	2022-05-28 21:37:54
9	26	2022-03-04 08:20:25
90	97	2021-10-09 08:58:20
100	46	2023-07-11 12:07:36
87	36	2022-04-10 07:12:33
71	9	2022-09-24 23:26:49
55	61	2022-10-19 13:13:02
81	74	2021-12-27 15:35:09
81	22	2022-10-08 03:55:29
2	79	2023-03-02 01:28:58
16	33	2022-04-02 20:59:31
47	1	2022-02-28 09:56:21
49	36	2022-05-03 04:11:05
97	38	2022-05-03 22:51:38
83	50	2021-11-03 14:01:26
82	64	2022-07-30 16:55:48
40	6	2022-06-29 20:10:28
2	50	2022-10-05 15:46:31
52	36	2021-12-15 18:02:20
19	82	2022-11-23 09:46:11
38	34	2023-07-08 17:55:17
76	73	2021-09-15 00:18:17
17	65	2022-10-14 06:09:39
27	40	2023-01-16 15:24:39
73	97	2023-03-01 14:50:18
26	64	2022-04-28 12:12:56
52	26	2023-04-23 02:36:09
21	10	2022-07-23 06:41:12
39	91	2023-08-08 01:11:27
90	62	2022-06-04 22:43:28
66	63	2021-11-08 09:18:15
71	28	2023-07-13 01:59:07
42	94	2022-11-30 12:36:55
75	81	2022-07-19 15:13:00
6	51	2022-02-05 04:26:29
67	25	2022-06-30 16:14:45
20	80	2022-02-27 03:32:34
78	11	2021-11-07 22:49:46
88	98	2021-10-07 10:55:41
98	83	2022-06-16 02:41:02
22	2	2023-07-06 02:08:48
66	33	2023-04-15 09:04:35
20	53	2023-04-30 22:53:27
82	81	2021-09-24 10:18:50
88	49	2023-04-06 16:59:33
26	59	2022-06-21 18:08:59
72	55	2022-02-26 12:36:12
65	6	2021-10-31 11:36:25
36	23	2022-07-02 11:40:37
97	67	2022-11-15 00:24:22
71	90	2023-05-01 02:10:04
2	45	2022-04-14 12:57:13
38	73	2022-05-11 17:06:37
4	27	2022-12-04 21:21:46
29	10	2022-09-02 04:48:05
73	13	2023-06-10 06:28:27
71	92	2022-07-13 14:16:25
54	11	2023-03-24 17:50:59
78	2	2021-12-22 10:36:59
60	66	2022-10-18 09:53:51
45	25	2023-07-21 13:30:20
65	99	2021-08-28 22:07:51
67	29	2022-06-25 22:30:23
73	56	2021-12-23 23:09:48
17	39	2023-03-09 22:32:55
68	36	2022-11-22 20:19:26
49	31	2022-03-08 19:02:00
69	88	2021-09-19 17:24:39
92	67	2023-05-08 16:38:58
87	20	2022-05-10 01:53:11
43	41	2023-06-02 01:51:58
69	74	2021-10-23 14:16:30
48	35	2021-12-15 11:34:00
19	67	2022-01-18 21:06:40
15	33	2023-02-16 03:30:37
38	32	2021-08-23 06:06:10
\.


--
-- TOC entry 3426 (class 0 OID 16531)
-- Dependencies: 212
-- Data for Name: friendship; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.friendship (id, requested_by_user_id, requested_to_user_id, status_id, requested_at, confirmed_at) FROM stdin;
1	45	2	11	2023-02-24 04:43:25	2023-03-08 19:06:39
2	48	27	80	2023-06-08 23:32:50	2022-12-21 04:57:47
3	58	82	42	2023-03-27 21:00:54	2023-05-23 19:00:07
4	96	82	72	2022-08-11 04:58:43	2022-12-11 10:21:34
5	87	20	58	2022-12-14 08:19:30	2022-07-14 22:11:29
6	67	45	77	2021-11-09 18:29:53	2022-12-28 23:43:33
7	13	94	14	2021-10-23 20:07:23	2021-09-29 08:01:41
8	66	32	28	2023-07-04 13:45:36	2022-11-16 08:55:02
9	70	15	93	2021-12-07 04:13:51	2022-01-17 10:39:58
10	62	65	83	2023-04-07 19:26:21	2022-04-12 15:49:01
11	12	67	19	2021-10-04 18:34:35	2022-11-24 06:16:36
12	54	56	78	2022-05-24 18:46:42	2022-01-09 19:57:08
13	3	100	46	2021-09-19 07:27:29	2022-10-26 23:06:14
14	51	56	27	2022-02-10 17:39:03	2023-01-14 01:46:26
15	46	96	41	2023-01-18 23:14:54	2021-10-06 19:10:33
16	37	46	69	2022-10-16 13:18:31	2022-10-07 10:32:36
17	59	64	93	2022-04-18 04:38:07	2023-06-20 09:40:26
18	47	56	91	2023-07-17 18:21:18	2022-08-27 23:33:52
19	34	89	97	2021-09-27 09:14:08	2021-12-31 10:04:16
20	22	70	70	2023-04-29 03:42:13	2023-05-17 15:20:11
21	77	75	4	2022-12-07 09:21:23	2023-06-01 00:44:37
22	1	22	56	2022-06-29 21:14:47	2023-05-23 08:52:42
23	81	77	28	2023-01-29 20:04:27	2022-08-07 16:38:38
24	56	55	5	2022-02-06 06:53:35	2021-12-05 06:51:40
25	20	99	94	2023-05-27 11:18:30	2022-02-21 00:36:07
26	70	65	64	2023-07-16 23:09:48	2022-08-21 20:39:26
27	51	85	2	2023-02-25 22:49:58	2023-01-03 00:29:17
28	83	23	31	2022-10-22 08:14:32	2022-05-10 14:54:45
29	6	11	63	2022-11-13 02:34:04	2022-10-30 03:40:55
30	14	58	76	2022-12-23 10:51:52	2023-02-27 00:20:12
31	48	74	42	2021-12-18 21:30:12	2021-08-25 23:52:31
32	59	86	33	2022-11-18 08:54:53	2023-02-07 03:28:40
33	6	46	11	2022-05-19 17:19:24	2023-03-08 01:43:19
34	57	52	14	2023-06-09 08:59:26	2021-12-08 11:40:38
35	91	22	39	2022-11-07 01:45:15	2022-01-03 20:59:40
36	65	20	48	2022-07-20 22:57:28	2023-03-27 07:51:33
37	4	70	88	2023-06-11 06:12:27	2022-08-06 18:54:01
38	78	39	56	2022-11-13 02:24:01	2022-06-24 07:43:50
39	63	52	37	2021-11-17 07:50:56	2022-02-14 05:28:45
40	23	36	99	2023-03-03 12:43:24	2022-08-01 14:57:18
41	97	50	46	2021-09-08 07:08:26	2022-03-05 12:18:58
42	93	80	67	2023-03-05 11:49:41	2023-02-24 18:58:30
43	91	85	32	2022-09-06 18:41:57	2021-10-17 19:14:01
44	2	54	99	2022-02-21 22:24:11	2022-11-20 20:23:06
45	8	41	91	2023-07-27 08:14:43	2023-08-04 06:27:53
46	93	56	44	2023-04-09 07:25:22	2023-01-26 19:34:08
47	3	64	70	2023-01-16 11:20:29	2022-11-09 23:17:12
48	90	21	78	2022-08-05 05:38:42	2023-07-30 10:51:53
49	81	20	87	2023-04-24 21:47:00	2022-07-04 06:07:37
50	23	85	58	2022-08-02 20:18:40	2022-08-29 10:17:26
51	31	17	44	2023-08-01 03:16:03	2023-02-09 10:17:28
52	72	88	64	2022-07-01 18:03:07	2023-07-28 09:08:13
53	78	17	32	2022-08-15 02:06:12	2023-08-08 04:10:55
54	99	70	28	2023-03-07 00:09:01	2022-03-04 07:18:02
55	17	64	25	2021-10-15 05:57:37	2022-07-22 15:12:40
56	62	22	37	2022-03-08 00:47:31	2023-03-04 12:12:50
57	61	98	53	2023-07-05 13:09:54	2023-08-05 08:18:24
58	38	15	15	2023-01-07 15:52:26	2023-03-08 18:41:22
59	7	54	14	2022-09-11 11:52:50	2022-05-29 09:08:24
60	62	35	47	2021-09-17 20:09:00	2023-07-22 14:29:59
61	18	28	82	2023-07-11 19:59:42	2023-05-13 01:54:54
62	61	51	91	2023-08-05 22:05:29	2022-07-22 11:39:40
63	94	35	76	2022-11-09 02:35:47	2022-11-14 09:22:40
64	35	44	80	2021-12-16 08:00:43	2022-02-12 15:22:38
65	58	58	85	2023-05-31 23:15:27	2022-01-11 05:46:06
66	86	33	76	2022-06-29 11:29:52	2021-11-19 20:26:49
67	28	55	73	2022-01-16 01:13:33	2022-03-30 09:27:32
68	27	96	30	2022-12-18 21:19:07	2022-03-08 07:49:16
69	61	45	9	2022-03-08 12:56:47	2021-09-21 15:42:52
70	20	65	67	2022-01-18 19:19:42	2021-10-06 10:53:04
71	19	70	4	2022-08-21 08:47:21	2022-03-10 09:25:05
72	64	17	11	2022-04-30 14:26:08	2023-02-25 13:33:51
73	91	9	24	2021-11-08 13:26:22	2022-06-22 18:50:41
74	87	13	73	2022-09-20 20:34:14	2023-04-17 05:28:08
75	75	49	9	2023-02-09 20:17:12	2022-01-31 22:56:56
76	62	96	67	2023-01-10 02:13:29	2022-10-12 17:03:33
77	90	19	73	2022-04-30 06:00:14	2023-02-02 04:27:16
78	93	94	53	2022-07-01 01:09:30	2022-09-17 07:46:12
79	41	69	92	2023-05-16 15:22:13	2023-01-06 01:36:20
80	28	25	30	2022-05-30 04:44:43	2022-10-05 04:21:46
81	32	88	14	2023-08-10 13:25:55	2023-04-01 02:27:29
82	80	21	36	2023-07-11 14:57:55	2022-10-15 12:46:31
83	57	70	21	2022-04-07 17:57:03	2022-06-21 10:17:11
84	87	81	77	2022-09-15 22:17:29	2023-07-18 07:59:11
85	76	6	62	2021-11-16 01:55:00	2023-01-31 20:30:14
86	68	10	98	2022-04-12 15:44:01	2023-02-08 22:23:45
87	68	86	76	2022-12-22 10:08:23	2022-06-08 05:06:39
88	42	71	3	2023-04-12 18:04:02	2023-05-27 05:43:36
89	13	99	30	2021-08-31 02:12:15	2022-05-12 19:22:52
90	29	3	5	2023-04-16 12:17:45	2023-08-05 00:18:31
91	89	80	38	2021-09-01 05:02:23	2023-03-26 11:20:11
92	24	60	77	2023-01-20 09:00:28	2022-08-21 03:42:22
93	100	89	97	2022-04-17 06:04:15	2022-10-29 13:23:01
94	71	45	84	2022-05-29 23:08:48	2021-11-25 07:59:27
95	32	29	13	2022-05-06 03:03:56	2021-12-16 06:02:42
96	61	95	23	2022-09-27 00:10:20	2023-07-03 09:34:02
97	82	46	74	2022-03-13 22:24:22	2023-04-16 01:23:21
98	45	70	77	2022-12-21 15:38:36	2022-08-07 04:44:43
99	46	25	23	2021-12-01 12:56:24	2022-11-19 21:02:51
100	80	91	45	2022-09-21 00:51:23	2023-08-07 21:33:20
\.


--
-- TOC entry 3428 (class 0 OID 16535)
-- Dependencies: 214
-- Data for Name: friendship_statuses; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.friendship_statuses (id, name) FROM stdin;
1	mi
2	augue
3	lectus
4	magnis
5	vel
\.


--
-- TOC entry 3430 (class 0 OID 16539)
-- Dependencies: 216
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) FROM stdin;
1	8	41	mauris sit amet lorem	f	t	2023-05-09 00:00:00
2	57	90	mauris.	f	t	2023-07-31 00:00:00
3	56	48	metus urna convallis	t	f	2022-09-12 00:00:00
4	79	41	neque non quam.	f	t	2023-01-18 00:00:00
5	78	33	feugiat tellus	t	f	2022-12-26 00:00:00
6	2	96	ipsum porta elit,	f	t	2023-04-04 00:00:00
7	4	13	Sed nulla ante,	f	f	2022-11-27 00:00:00
8	73	42	cursus luctus, ipsum leo elementum	t	t	2021-08-19 00:00:00
9	12	31	Mauris	t	t	2022-12-28 00:00:00
10	83	56	In at pede. Cras	f	f	2023-01-14 00:00:00
11	21	18	hendrerit a, arcu.	t	t	2022-08-28 00:00:00
12	14	43	aliquam iaculis, lacus	f	t	2021-10-18 00:00:00
13	64	19	nisi magna sed	t	f	2023-07-05 00:00:00
14	95	25	Nullam enim. Sed	t	f	2022-07-24 00:00:00
15	19	94	odio. Phasellus at augue	t	t	2023-05-07 00:00:00
16	2	19	lectus, a sollicitudin orci	t	t	2022-02-17 00:00:00
17	1	89	non sapien molestie orci	f	t	2022-12-23 00:00:00
18	1	62	nulla.	f	f	2023-05-22 00:00:00
19	54	99	Cras convallis	t	f	2022-10-05 00:00:00
20	59	36	dui. Suspendisse ac metus vitae	f	f	2022-10-17 00:00:00
21	10	41	nulla.	t	f	2022-01-23 00:00:00
22	48	61	Sed	t	t	2023-02-20 00:00:00
23	88	74	semper rutrum. Fusce	f	f	2022-09-27 00:00:00
24	3	88	Mauris molestie pharetra nibh.	t	t	2022-02-05 00:00:00
25	15	46	facilisis vitae, orci.	t	t	2021-10-24 00:00:00
26	51	29	faucibus leo, in lobortis	f	t	2021-10-10 00:00:00
27	64	99	at, iaculis quis, pede. Praesent	t	t	2022-01-14 00:00:00
28	39	50	neque tellus, imperdiet non,	f	f	2021-12-09 00:00:00
29	30	55	Praesent interdum ligula	t	f	2021-10-25 00:00:00
30	33	97	fringilla	f	f	2022-09-20 00:00:00
31	68	76	luctus ut,	f	t	2023-07-12 00:00:00
32	63	85	dolor sit amet,	t	t	2022-11-23 00:00:00
33	91	99	semper erat,	f	t	2023-03-25 00:00:00
34	35	70	ultricies ornare, elit elit fermentum	t	f	2023-01-05 00:00:00
35	29	18	augue scelerisque mollis.	f	f	2021-12-25 00:00:00
36	60	99	cursus, diam at pretium aliquet,	f	f	2023-04-15 00:00:00
37	2	56	eu, accumsan sed, facilisis	t	f	2021-12-16 00:00:00
38	98	65	Aliquam gravida mauris	f	f	2022-02-10 00:00:00
39	1	40	diam vel arcu. Curabitur	f	t	2021-08-27 00:00:00
40	67	69	sed consequat auctor,	t	f	2022-12-20 00:00:00
41	86	56	adipiscing fringilla, porttitor	t	t	2022-06-23 00:00:00
42	45	51	metus. Vivamus	f	t	2022-11-30 00:00:00
43	12	53	Proin vel nisl. Quisque	f	t	2022-10-21 00:00:00
44	97	76	massa.	t	t	2022-03-31 00:00:00
45	9	31	est. Mauris eu turpis.	f	t	2023-07-18 00:00:00
46	54	63	diam. Proin	f	t	2022-04-23 00:00:00
47	99	75	tempor diam dictum	t	t	2022-09-27 00:00:00
48	35	68	Quisque ac	f	t	2021-10-19 00:00:00
49	8	44	sit amet metus.	t	f	2023-06-14 00:00:00
50	2	38	Proin mi. Aliquam gravida	t	t	2022-12-13 00:00:00
51	57	71	adipiscing elit. Etiam laoreet,	f	f	2021-11-05 00:00:00
52	35	11	et malesuada fames ac turpis	t	f	2022-01-13 00:00:00
53	48	56	arcu. Vestibulum	f	t	2023-05-01 00:00:00
54	97	23	nonummy. Fusce fermentum fermentum arcu.	f	f	2023-05-27 00:00:00
55	99	21	rutrum urna,	t	f	2021-12-15 00:00:00
56	14	95	convallis dolor. Quisque tincidunt pede	t	t	2022-12-24 00:00:00
57	96	78	convallis erat, eget tincidunt dui	f	t	2022-08-27 00:00:00
58	45	52	facilisis. Suspendisse commodo	f	f	2022-06-24 00:00:00
59	59	45	lacus pede sagittis augue,	f	t	2022-08-09 00:00:00
60	74	71	pede nec ante	f	f	2023-03-15 00:00:00
61	24	4	ante. Nunc	f	f	2023-07-11 00:00:00
62	73	74	sed tortor. Integer aliquam adipiscing	t	f	2022-12-24 00:00:00
63	49	82	tellus	f	t	2021-12-15 00:00:00
64	6	92	Morbi	f	f	2022-04-22 00:00:00
65	90	15	enim non nisi. Aenean	t	f	2021-10-25 00:00:00
66	45	46	erat neque non quam.	t	t	2022-02-23 00:00:00
67	93	98	lorem fringilla	t	f	2022-12-14 00:00:00
68	95	85	Nunc commodo auctor velit. Aliquam	t	t	2022-07-06 00:00:00
69	10	9	libero dui	t	t	2022-07-21 00:00:00
70	28	67	Duis ac	t	t	2023-08-07 00:00:00
71	45	69	lacinia	t	t	2022-05-28 00:00:00
72	63	2	sem egestas blandit.	t	t	2022-05-16 00:00:00
73	17	32	nec	t	f	2022-05-01 00:00:00
74	55	92	faucibus lectus, a sollicitudin	f	t	2022-10-05 00:00:00
75	4	53	sed orci lobortis augue scelerisque	f	t	2022-06-13 00:00:00
76	78	24	Nullam lobortis quam	f	t	2023-02-02 00:00:00
77	77	18	adipiscing lacus.	f	f	2022-09-06 00:00:00
78	27	40	lobortis mauris.	t	t	2022-11-28 00:00:00
79	94	62	nulla ante, iaculis nec, eleifend	f	t	2022-08-14 00:00:00
80	5	52	Morbi non	f	f	2021-09-01 00:00:00
81	42	34	vulputate, nisi sem semper	f	f	2021-09-02 00:00:00
82	65	74	Fusce mi lorem, vehicula	t	t	2022-08-03 00:00:00
83	25	99	congue turpis.	f	t	2022-01-08 00:00:00
84	89	62	Donec luctus aliquet	t	t	2021-10-29 00:00:00
85	94	7	tincidunt	t	t	2022-12-30 00:00:00
86	63	57	et,	t	t	2022-06-06 00:00:00
87	54	45	In at	t	t	2023-03-03 00:00:00
88	8	55	justo eu arcu.	f	f	2023-04-13 00:00:00
89	53	36	amet, consectetuer adipiscing elit.	f	f	2023-03-21 00:00:00
90	68	21	Proin non massa non	t	f	2023-08-06 00:00:00
91	45	75	mi eleifend egestas. Sed pharetra,	f	f	2022-10-11 00:00:00
92	68	23	euismod est arcu	f	t	2023-01-25 00:00:00
93	83	50	et, rutrum eu, ultrices	t	f	2022-08-27 00:00:00
94	46	78	ante dictum cursus.	t	f	2022-08-14 00:00:00
95	20	27	congue.	t	f	2023-06-29 00:00:00
96	50	75	a	t	f	2023-07-12 00:00:00
97	53	27	adipiscing elit. Etiam	f	f	2023-01-19 00:00:00
98	7	10	ut mi. Duis risus	f	f	2022-11-26 00:00:00
99	44	88	elementum purus, accumsan	f	f	2023-02-25 00:00:00
100	16	16	a felis ullamcorper	f	f	2023-08-10 00:00:00
\.


--
-- TOC entry 3432 (class 0 OID 16545)
-- Dependencies: 218
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.photo (id, url, owner_id, description, uploaded_at, size) FROM stdin;
1	1	66	euismod et, commodo at, libero.	2023-05-01 19:53:58	80
2	2	89	quis arcu vel quam	2021-12-02 08:13:56	88
3	3	14	convallis in, cursus	2022-01-27 00:57:28	53
4	4	73	Nunc ullamcorper, velit in	2022-04-13 02:22:18	23
5	5	31	Pellentesque ut ipsum ac	2022-11-13 22:22:43	1
6	6	21	interdum feugiat.	2022-11-17 15:13:35	79
7	7	93	vitae,	2021-10-30 09:08:49	29
8	8	18	dictum eleifend, nunc	2023-03-12 19:52:48	44
9	9	53	tempor erat	2023-08-06 06:04:50	68
10	10	2	imperdiet	2022-05-04 20:40:40	43
11	11	30	adipiscing ligula.	2023-04-21 06:21:56	93
12	12	36	Sed diam lorem,	2023-03-18 18:14:58	89
13	13	76	molestie tellus. Aenean egestas	2022-06-28 22:48:41	60
14	14	38	et malesuada fames	2021-11-03 08:17:23	87
15	15	69	fringilla est. Mauris eu turpis.	2021-09-21 23:22:33	67
16	16	15	mollis lectus	2022-12-20 09:36:47	19
17	17	38	dapibus rutrum, justo. Praesent	2023-01-15 06:15:47	95
18	18	26	urna	2022-10-27 17:40:37	14
19	19	3	Aliquam adipiscing lobortis risus.	2021-12-21 00:26:10	15
20	20	44	Quisque porttitor	2022-09-24 19:23:58	50
21	21	95	feugiat metus sit	2023-01-28 15:11:52	21
22	22	88	nonummy ultricies ornare,	2022-09-30 05:24:52	35
23	23	88	sed, facilisis	2022-04-20 03:53:58	99
24	24	20	laoreet ipsum. Curabitur consequat,	2022-02-16 05:14:28	68
25	25	60	risus	2023-03-23 05:24:05	54
26	26	64	quam. Curabitur vel lectus. Cum	2022-08-10 05:34:52	70
27	27	26	aliquam arcu. Aliquam	2023-02-13 19:55:22	79
28	28	44	amet massa. Quisque porttitor	2022-07-08 21:58:11	71
29	29	44	consequat dolor vitae dolor. Donec	2023-05-14 07:48:26	2
30	30	6	dictum ultricies ligula. Nullam	2021-11-12 21:17:27	66
31	31	72	Etiam imperdiet dictum magna. Ut	2023-02-01 12:48:18	51
32	32	16	tellus lorem	2022-12-09 04:25:55	21
33	33	10	sit amet,	2022-04-27 17:17:29	60
34	34	64	metus. In	2022-10-01 21:31:51	39
35	35	63	tempor augue ac ipsum. Phasellus	2023-04-29 04:10:48	36
36	36	56	morbi tristique senectus	2022-05-05 18:50:34	94
37	37	50	Proin ultrices. Duis volutpat	2022-04-27 23:39:46	35
38	38	15	tellus, imperdiet non, vestibulum	2022-09-12 13:04:18	32
39	39	60	Nam porttitor scelerisque neque.	2022-10-30 12:42:38	99
40	40	19	In mi pede,	2022-03-23 00:22:09	32
41	41	19	nibh lacinia orci, consectetuer	2023-07-19 20:48:43	82
42	42	26	eleifend egestas. Sed pharetra,	2023-04-26 13:36:36	46
43	43	22	vulputate ullamcorper magna. Sed	2023-06-29 23:28:48	72
44	44	28	Nunc ac sem ut	2021-12-16 04:01:22	4
45	45	4	Suspendisse aliquet molestie	2022-01-16 20:39:31	68
46	46	84	lacus vestibulum	2023-01-02 05:23:38	74
47	47	80	porttitor interdum. Sed auctor	2022-06-09 10:17:12	58
48	48	75	luctus et	2022-01-08 21:54:57	38
49	49	92	Vivamus	2023-01-06 21:23:04	10
50	50	90	sed, hendrerit a,	2021-09-13 22:18:09	27
51	51	73	dolor elit, pellentesque a,	2022-07-08 11:55:10	19
52	52	46	nisi magna	2021-11-22 09:52:08	7
53	53	62	dui. Suspendisse ac	2022-09-03 01:54:19	89
54	54	57	malesuada augue	2022-08-04 10:52:42	97
55	55	83	velit eget laoreet	2022-10-01 23:31:09	74
56	56	98	nec urna	2023-04-07 22:34:53	5
57	57	10	elit sed consequat auctor,	2022-04-13 22:33:03	65
58	58	31	magna a	2023-05-14 12:57:35	4
59	59	5	Maecenas ornare egestas ligula. Nullam	2023-05-10 09:17:09	10
60	60	36	mi lorem, vehicula et, rutrum	2022-05-24 09:29:53	46
61	61	28	arcu. Sed	2021-12-05 05:59:49	58
62	62	10	at sem	2022-06-01 15:37:09	91
63	63	54	Vivamus	2023-03-19 21:50:38	46
64	64	55	neque. Morbi quis urna.	2023-01-06 19:39:12	93
65	65	17	orci. Donec nibh. Quisque nonummy	2023-08-05 14:04:11	71
66	66	89	luctus aliquet odio. Etiam	2023-02-01 07:33:54	22
67	67	18	turpis. Aliquam	2022-09-04 11:42:45	87
68	68	28	Quisque imperdiet, erat	2022-12-19 01:53:31	3
69	69	41	non, luctus sit	2023-06-28 03:37:14	35
70	70	92	tincidunt	2022-01-20 23:02:11	89
71	71	28	sit amet	2023-04-12 15:59:51	63
72	72	62	Proin non massa non	2022-09-18 04:24:26	10
73	73	21	ad litora torquent	2021-12-08 07:33:19	42
74	74	47	Fusce diam	2022-08-18 02:36:27	83
75	75	38	in, hendrerit	2022-05-17 15:48:13	9
76	76	50	a mi	2023-04-10 05:08:55	77
77	77	98	urna. Ut tincidunt vehicula risus.	2022-03-07 15:13:26	49
78	78	19	natoque penatibus	2022-09-18 19:56:05	90
79	79	22	accumsan convallis, ante lectus	2022-05-28 09:27:24	40
80	80	14	posuere cubilia Curae	2022-04-22 18:27:29	86
81	81	27	dolor vitae dolor. Donec fringilla.	2022-04-11 10:06:40	39
82	82	98	amet ultricies	2022-09-13 06:07:29	13
83	83	76	et, rutrum eu, ultrices	2021-12-04 17:44:47	77
84	84	20	eu sem. Pellentesque	2021-08-25 01:42:32	91
85	85	95	amet	2021-12-24 10:23:42	26
86	86	50	nisl. Maecenas malesuada fringilla	2022-03-21 05:11:34	35
87	87	34	neque pellentesque	2021-09-10 20:31:58	82
88	88	6	orci luctus et	2021-12-12 00:28:00	59
89	89	65	non, hendrerit id,	2022-01-02 02:30:30	82
90	90	14	lorem ut	2022-09-03 06:11:56	16
91	91	68	Lorem ipsum	2022-01-09 15:19:31	35
92	92	31	ullamcorper eu, euismod	2021-11-28 20:29:42	35
93	93	60	urna, nec luctus felis purus	2023-03-17 02:54:09	85
94	94	83	orci, adipiscing	2023-01-30 00:21:51	63
95	95	98	arcu iaculis enim, sit amet	2023-01-15 16:56:29	5
96	96	15	non, feugiat	2023-07-17 22:12:43	53
97	97	81	Quisque tincidunt pede ac urna.	2022-09-19 03:39:13	95
98	98	9	erat, in consectetuer	2023-04-26 15:23:46	87
99	99	59	eu lacus. Quisque imperdiet,	2022-05-05 19:55:59	22
100	100	54	facilisis eget, ipsum.	2021-08-14 08:40:54	23
\.


--
-- TOC entry 3434 (class 0 OID 16551)
-- Dependencies: 220
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.subscriptions (id, subscrubed_by_user_id, subscrubed_to_user_or_community_id, in_community, created_at) FROM stdin;
1	67	78	f	2021-11-26 17:39:52
2	85	27	t	2022-05-31 05:32:57
3	97	6	f	2022-11-29 15:28:35
4	70	64	t	2022-01-17 13:37:04
5	61	9	f	2022-08-01 22:42:19
6	84	77	t	2021-10-02 13:41:08
7	34	46	t	2023-04-29 08:54:28
8	13	53	f	2021-11-15 00:04:04
9	88	29	t	2023-06-02 16:48:55
10	41	32	t	2022-08-22 00:16:45
11	34	36	f	2021-09-29 01:35:48
12	84	80	t	2022-10-17 16:50:52
13	33	40	t	2021-08-22 09:27:24
14	65	4	f	2022-11-22 09:37:05
15	68	27	f	2022-09-28 12:21:47
16	100	32	f	2022-01-07 23:02:25
17	87	10	f	2023-03-09 23:48:13
18	89	33	f	2023-06-06 04:52:23
19	87	71	f	2021-10-17 18:08:57
20	32	75	f	2022-03-19 10:06:24
21	62	47	f	2022-08-15 19:06:21
22	81	4	t	2023-03-20 13:34:56
23	59	33	f	2022-04-17 21:00:57
24	47	90	f	2023-06-14 05:10:29
25	28	20	t	2022-09-03 18:57:10
26	70	27	f	2023-03-17 03:49:08
27	35	55	f	2022-08-20 01:04:37
28	32	84	t	2021-11-15 07:16:21
29	16	42	t	2022-10-31 15:05:34
30	63	18	f	2022-11-28 00:28:01
31	75	75	f	2022-05-14 00:52:01
32	78	87	f	2022-10-05 09:41:04
33	6	67	t	2021-11-25 19:24:47
34	84	87	f	2022-02-11 00:52:24
35	99	38	f	2022-01-31 10:42:53
36	28	5	t	2022-07-17 13:58:37
37	39	14	t	2022-10-12 07:56:32
38	72	46	t	2023-03-31 07:56:24
39	65	22	f	2022-12-21 00:33:26
40	74	72	f	2022-06-04 07:52:23
41	4	3	f	2023-04-26 20:55:47
42	34	71	f	2021-09-13 14:20:44
43	46	40	f	2022-04-19 01:36:10
44	28	95	t	2022-11-23 09:13:05
45	69	86	t	2022-02-15 00:12:09
46	46	7	f	2023-06-06 18:54:06
47	61	85	t	2021-11-10 08:56:16
48	32	34	t	2023-03-26 04:14:36
49	76	34	f	2023-05-19 21:04:36
50	47	86	t	2023-05-27 08:28:26
51	56	19	t	2022-01-29 18:57:09
52	37	72	t	2023-02-05 16:40:38
53	71	72	f	2021-08-28 04:52:09
54	24	97	f	2023-02-15 00:36:33
55	86	82	t	2022-01-16 07:50:21
56	59	19	t	2022-03-29 04:27:07
57	32	81	f	2022-12-02 07:18:52
58	86	74	t	2022-11-13 05:03:49
59	96	99	f	2022-02-08 01:59:49
60	28	32	f	2021-11-27 01:07:21
61	55	62	f	2022-11-06 19:18:11
62	79	43	t	2023-07-03 08:59:34
63	52	77	t	2022-03-11 06:24:46
64	25	24	t	2022-04-29 10:03:55
65	1	29	t	2021-11-10 21:06:49
66	52	20	t	2022-03-06 16:31:38
67	83	93	t	2022-10-23 21:51:18
68	64	65	t	2023-06-08 19:20:00
69	70	68	f	2022-12-20 05:03:00
70	88	57	f	2023-06-08 15:16:42
71	5	94	f	2022-02-24 09:46:05
72	6	46	f	2022-08-14 02:04:37
73	39	52	t	2022-05-25 15:01:43
74	29	81	f	2023-03-20 12:32:55
75	47	83	t	2022-06-04 22:31:55
76	56	73	t	2021-09-09 16:02:14
77	41	99	f	2023-05-05 15:30:54
78	95	81	t	2023-03-26 04:08:05
79	94	74	f	2023-07-17 00:31:35
80	97	65	t	2022-09-08 11:13:10
81	31	75	t	2022-04-13 19:22:05
82	21	98	f	2022-09-18 14:50:14
83	65	77	t	2022-02-22 06:38:23
84	66	69	t	2022-12-05 22:44:18
85	10	4	t	2023-01-13 05:26:46
86	84	62	f	2023-03-20 00:16:17
87	31	99	t	2023-08-02 06:17:17
88	75	12	t	2022-12-08 09:26:59
89	25	62	f	2023-04-25 00:20:10
90	69	68	f	2022-04-07 20:04:30
91	69	51	f	2022-05-17 02:02:40
92	2	85	f	2023-08-06 05:38:21
93	82	34	f	2023-02-24 16:05:57
94	77	8	t	2021-08-15 02:21:31
95	1	80	t	2022-04-28 10:02:55
96	26	59	t	2022-02-04 06:21:22
97	49	97	f	2023-05-10 14:22:27
98	82	25	f	2022-10-04 14:12:40
99	57	4	t	2022-10-07 16:59:47
100	25	95	t	2023-01-15 23:44:29
\.


--
-- TOC entry 3436 (class 0 OID 16555)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.users (id, first_name, last_name, email, phone, main_photo_id, created_at) FROM stdin;
1	Alana	Berger	placerat.eget@google.edu	(073) 53771967	82	2023-05-12 00:00:00
2	Barclay	Olsen	amet.metus.aliquam@protonmail.net	(01234) 4661812	33	2022-02-24 00:00:00
3	Valentine	Whitley	quam.quis.diam@hotmail.ca	(036994) 133677	87	2023-04-22 00:00:00
4	Carter	Neal	rhoncus.id.mollis@hotmail.edu	(01331) 7169619	32	2022-02-10 00:00:00
5	Carter	Holmes	dui.in.sodales@google.ca	(028) 19636554	7	2023-02-23 00:00:00
6	Irene	Gray	dolor.sit.amet@icloud.edu	(0213) 15589775	59	2022-03-10 00:00:00
7	Ishmael	Byers	sed.eu.nibh@hotmail.org	(08663) 3027807	65	2021-09-02 00:00:00
8	Marcia	Wilcox	tellus.lorem.eu@protonmail.com	(029) 63863248	66	2022-08-12 00:00:00
9	Reece	Benjamin	orci.luctus.et@hotmail.couk	(05780) 6649393	93	2021-11-10 00:00:00
10	Avram	Velazquez	id@outlook.edu	(08413) 2248354	66	2022-01-24 00:00:00
11	Caldwell	Mcfarland	cras.interdum@yahoo.ca	(013) 55444481	52	2022-01-29 00:00:00
12	Lois	Travis	sit.amet@icloud.edu	(07623) 1986431	80	2021-10-09 00:00:00
13	Joelle	Garrison	sem.elit.pharetra@yahoo.com	(0045) 11396874	31	2022-03-12 00:00:00
14	Tobias	Moon	sed.eu@google.org	(03741) 4988942	80	2022-09-01 00:00:00
15	Jack	Graham	et@icloud.couk	(0975) 76860021	40	2021-10-08 00:00:00
16	Isabelle	Montoya	metus@aol.org	(034671) 722312	55	2023-05-20 00:00:00
17	Aphrodite	Pugh	tristique.ac.eleifend@icloud.com	(02134) 4466823	9	2021-12-17 00:00:00
18	Flavia	Lynn	eu@protonmail.couk	(034465) 382713	56	2022-12-12 00:00:00
19	Ginger	Leon	ullamcorper@aol.com	(031691) 917681	51	2021-10-13 00:00:00
20	Nehru	Dillon	suspendisse@hotmail.com	(0652) 82183346	12	2022-09-22 00:00:00
21	Zachary	Velazquez	sed.sapien@yahoo.edu	(030844) 566929	65	2023-07-06 00:00:00
22	Avram	Walton	urna.nunc@protonmail.couk	(038902) 147387	70	2022-08-06 00:00:00
23	Shannon	Roy	diam.pellentesque@outlook.org	(036266) 283248	58	2021-11-24 00:00:00
24	Chanda	Pace	aliquam@hotmail.couk	(0041) 53108582	46	2022-09-23 00:00:00
25	Avram	Foley	congue.elit@protonmail.org	(02375) 4576528	37	2022-07-14 00:00:00
26	Chloe	Herring	ligula.nullam@outlook.edu	(0041) 24634637	95	2023-03-30 00:00:00
27	Jasmine	Brock	ut.pharetra.sed@hotmail.com	(0812) 00256412	27	2022-08-07 00:00:00
28	Megan	Bullock	neque.sed.eget@aol.ca	(064) 91453766	57	2022-07-06 00:00:00
29	Ruth	Curry	at.velit@icloud.com	(0744) 30146982	52	2023-02-26 00:00:00
30	Rahim	Harris	donec.fringilla@yahoo.edu	(038) 37974886	21	2023-03-16 00:00:00
31	Hyacinth	Buckley	dui.nec@icloud.net	(031037) 124777	57	2023-04-11 00:00:00
32	Aaron	Wheeler	aliquam@hotmail.edu	(0744) 20549261	54	2023-08-02 00:00:00
33	Chantale	Clayton	arcu.vestibulum@icloud.net	(08833) 3471273	62	2023-03-16 00:00:00
34	Alec	Barnett	blandit.at@yahoo.net	(018) 22656836	31	2023-03-29 00:00:00
35	Judith	Glenn	non.justo.proin@yahoo.ca	(054) 15828635	7	2021-08-24 00:00:00
36	Ezekiel	Thomas	adipiscing.fringilla@yahoo.couk	(049) 09758139	90	2021-09-12 00:00:00
37	Arsenio	Rodgers	donec.tempor@yahoo.org	(03300) 3274080	2	2022-01-11 00:00:00
38	Remedios	Sawyer	duis@icloud.org	(034) 07276609	55	2022-12-11 00:00:00
39	Mia	Guerrero	aliquam.tincidunt@hotmail.ca	(062) 70148883	40	2021-09-19 00:00:00
40	Keane	Reilly	gravida.nunc.sed@outlook.ca	(04795) 0278487	38	2022-06-25 00:00:00
41	Hilda	Hebert	sed.nulla.ante@outlook.couk	(01021) 2988386	96	2022-04-28 00:00:00
42	Kennedy	Watkins	nec.imperdiet.nec@aol.couk	(05061) 6180941	73	2023-02-07 00:00:00
43	Camilla	Casey	faucibus.lectus@protonmail.edu	(062) 10346469	39	2022-12-16 00:00:00
44	Wilma	Battle	proin.nisl.sem@protonmail.org	(0787) 31668155	14	2022-08-21 00:00:00
45	Kevyn	Kane	tristique@google.org	(01613) 1053764	53	2022-07-13 00:00:00
46	Garth	Mcneil	imperdiet.nec@yahoo.ca	(0297) 98913516	99	2021-12-20 00:00:00
47	Zelenia	Miranda	dictum.proin@yahoo.com	(08949) 4524366	37	2022-10-24 00:00:00
48	Ignatius	Mcdaniel	nibh.quisque.nonummy@hotmail.net	(047) 64275514	74	2023-01-27 00:00:00
49	Allen	Solomon	augue.sed.molestie@icloud.org	(088) 85638977	91	2023-02-04 00:00:00
50	Regan	Anderson	nec.tempus.mauris@google.ca	(0252) 68697751	50	2022-10-28 00:00:00
51	Alan	Thomas	interdum.libero@outlook.org	(07434) 6147186	21	2023-04-07 00:00:00
52	Mollie	Carter	vitae@google.org	(03423) 7858437	44	2022-03-16 00:00:00
53	Ivy	Mitchell	dolor.fusce@hotmail.com	(032) 06665830	53	2022-09-22 00:00:00
54	Blythe	Hughes	integer.eu@yahoo.ca	(061) 27128590	51	2022-11-02 00:00:00
55	Pascale	Holt	consectetuer.euismod@icloud.net	(02477) 8747845	48	2023-02-23 00:00:00
56	Felicia	Mack	morbi.tristique.senectus@hotmail.net	(034512) 958684	79	2022-12-22 00:00:00
57	Scarlet	May	vel.sapien@google.edu	(011) 31587370	85	2022-06-11 00:00:00
58	Hammett	Hart	duis.sit.amet@aol.ca	(034564) 886375	87	2022-02-05 00:00:00
59	Whoopi	Kent	sit.amet.metus@aol.ca	(081) 67672824	39	2021-09-30 00:00:00
60	Jillian	Horn	proin@hotmail.edu	(005) 37344632	93	2023-01-12 00:00:00
61	Coby	Farley	est.congue@protonmail.org	(06970) 6286020	19	2022-10-24 00:00:00
62	Breanna	Benson	ornare.lectus.ante@google.com	(0317) 71150445	95	2023-03-10 00:00:00
63	Ira	Clay	dictum.eleifend.nunc@google.ca	(045) 07686749	43	2022-04-15 00:00:00
64	Hu	Kidd	nullam.scelerisque@icloud.com	(021) 86287296	56	2022-09-10 00:00:00
65	Aaron	Stuart	parturient.montes@icloud.edu	(0320) 11559061	11	2022-12-24 00:00:00
66	Lev	Browning	ut.eros.non@outlook.net	(036763) 151233	22	2022-05-09 00:00:00
67	Bert	Bray	tortor.dictum@yahoo.edu	(029) 99554641	67	2022-12-16 00:00:00
68	Cameron	Gibbs	egestas.urna.justo@aol.org	(033247) 661732	45	2021-09-11 00:00:00
69	Rae	Mercer	et.malesuada.fames@yahoo.com	(0685) 76149161	55	2023-08-01 00:00:00
70	Rebekah	Perry	ultricies.adipiscing@protonmail.net	(05154) 1418857	57	2022-03-15 00:00:00
71	Kerry	Davis	cum.sociis.natoque@outlook.net	(0809) 15205241	75	2021-11-17 00:00:00
72	Regan	Berger	duis.mi@google.ca	(0405) 25143270	74	2022-11-04 00:00:00
73	Lana	Harrington	molestie.arcu.sed@protonmail.net	(077) 21833368	40	2023-06-23 00:00:00
74	Aurelia	Yang	sed.nulla@icloud.couk	(071) 20742737	40	2023-01-21 00:00:00
75	Felix	Mathis	quis.diam@outlook.net	(0368) 77642829	48	2021-10-31 00:00:00
76	Trevor	Sharp	id.erat@protonmail.org	(0104) 36814264	27	2022-08-14 00:00:00
77	Mia	Carpenter	ligula.eu@outlook.com	(08483) 9133151	35	2023-06-09 00:00:00
78	Jerome	Barnes	non.massa.non@icloud.net	(045) 86112447	39	2022-04-04 00:00:00
79	Nomlanga	Tucker	metus.eu@yahoo.net	(05865) 4860522	25	2022-07-19 00:00:00
80	Sandra	Flores	felis.purus@yahoo.org	(036) 51475912	36	2023-07-25 00:00:00
81	Riley	Sampson	curae@aol.org	(032357) 441481	26	2023-03-11 00:00:00
82	Keelie	Calhoun	purus.mauris@aol.ca	(05454) 8631181	64	2023-04-26 00:00:00
83	Gisela	Young	ac@google.ca	(0456) 86389422	74	2023-06-26 00:00:00
84	Moses	Hardin	nunc.ut@google.ca	(079) 14885248	29	2022-12-02 00:00:00
85	Reuben	Wilkinson	risus.donec@google.couk	(08896) 0234672	79	2022-12-06 00:00:00
86	Jared	Carroll	sapien.nunc@icloud.couk	(00889) 6982631	48	2022-12-20 00:00:00
87	Molly	Koch	etiam.vestibulum@yahoo.ca	(01249) 3786457	45	2023-05-31 00:00:00
88	Gage	Lindsay	purus@aol.couk	(017) 62148658	39	2022-05-16 00:00:00
89	Whilemina	Perkins	nunc.mauris@icloud.couk	(0367) 59781798	52	2022-10-26 00:00:00
90	Brenden	Durham	donec.tempus.lorem@hotmail.couk	(02638) 8539152	40	2022-03-08 00:00:00
91	Jillian	Quinn	luctus@icloud.net	(034283) 148645	51	2022-02-11 00:00:00
92	Penelope	Williamson	lectus@icloud.org	(038564) 893228	57	2021-10-19 00:00:00
93	Myles	David	risus.at@icloud.net	(037095) 216425	10	2023-04-22 00:00:00
94	Nadine	Stout	vulputate.lacus@yahoo.org	(0695) 61585805	17	2021-11-29 00:00:00
95	Jerome	Estrada	odio@aol.net	(034144) 806395	41	2022-06-17 00:00:00
96	Murphy	Stanton	metus.facilisis@google.org	(01681) 2762655	76	2022-12-19 00:00:00
97	Brenden	Joseph	lectus@yahoo.ca	(032824) 949426	35	2023-01-30 00:00:00
98	Howard	Donovan	volutpat.nulla@google.com	(032) 47861896	89	2022-11-30 00:00:00
99	Conan	Blackwell	donec.nibh@aol.net	(02347) 6887801	50	2023-06-05 00:00:00
100	Elliott	Terry	congue@yahoo.org	(094) 12185083	20	2023-04-18 00:00:00
\.


--
-- TOC entry 3438 (class 0 OID 16559)
-- Dependencies: 224
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.video (id, url, owner_id, description, uploaded_at, size) FROM stdin;
1	1	6	quis, pede.	2021-09-04 12:23:41	25
2	2	3	lorem tristique aliquet. Phasellus fermentum	2023-07-01 05:17:02	66
3	3	48	dapibus quam quis diam.	2022-05-04 22:13:03	84
4	4	83	dui nec urna	2021-12-04 19:12:11	26
5	5	63	imperdiet nec, leo.	2022-01-31 02:34:47	57
6	6	15	nisl. Maecenas malesuada fringilla	2023-07-08 17:33:39	35
7	7	31	vulputate	2023-08-09 05:50:35	15
8	8	29	mi lorem, vehicula et,	2022-08-23 13:30:59	83
9	9	60	Quisque fringilla euismod	2023-07-30 23:03:53	74
10	10	54	sodales nisi magna	2022-08-29 22:13:39	29
11	11	53	velit dui,	2022-02-15 05:14:43	31
12	12	10	semper rutrum. Fusce	2022-11-27 15:37:43	1
13	13	72	ac metus	2023-07-26 20:17:25	89
14	14	33	eu tellus eu augue porttitor	2023-05-14 23:05:46	78
15	15	71	dictum sapien. Aenean massa. Integer	2022-05-30 02:08:37	65
16	16	87	cursus	2022-12-03 18:25:56	4
17	17	34	nec tempus scelerisque,	2022-04-21 10:17:02	60
18	18	26	ornare tortor	2023-06-24 17:18:42	50
19	19	31	vel sapien imperdiet ornare.	2021-09-14 12:26:33	31
20	20	84	malesuada fringilla	2021-09-23 14:13:49	64
21	21	10	luctus ut, pellentesque eget, dictum	2022-05-16 20:08:06	23
22	22	1	eros nec	2022-08-26 22:49:35	53
23	23	63	ac, feugiat non,	2022-02-24 22:51:30	16
24	24	31	vel est	2022-08-28 17:21:07	61
25	25	66	euismod mauris	2023-04-16 14:37:09	37
26	26	74	lorem tristique	2021-10-24 20:10:33	79
27	27	95	vitae purus	2022-06-22 03:31:53	74
28	28	42	quis, pede. Suspendisse dui.	2021-11-22 22:31:39	46
29	29	86	eget magna. Suspendisse	2022-12-15 20:31:28	44
30	30	54	eget nisi dictum augue malesuada	2023-05-25 04:22:58	35
31	31	73	Maecenas libero est,	2022-04-02 22:36:24	75
32	32	43	eu, eleifend nec, malesuada	2021-11-07 04:20:11	31
33	33	40	nec, eleifend non,	2022-11-01 03:52:26	21
34	34	27	molestie orci tincidunt adipiscing.	2021-11-20 09:36:26	7
35	35	53	Fusce mi lorem,	2022-08-06 20:09:31	98
36	36	19	pellentesque	2023-04-13 17:59:48	49
37	37	44	Aenean egestas	2022-06-09 15:07:32	62
38	38	36	Vivamus nibh dolor, nonummy	2021-09-12 21:32:21	54
39	39	70	Nunc	2023-05-19 21:26:43	32
40	40	52	pellentesque a,	2021-08-11 10:29:19	11
41	41	17	tempor bibendum. Donec felis	2021-09-02 10:39:10	8
42	42	82	egestas. Fusce	2022-04-23 06:23:52	93
43	43	30	non massa non ante	2021-10-02 12:14:10	60
44	44	6	Morbi quis	2022-05-24 04:30:06	80
45	45	84	volutpat. Nulla dignissim. Maecenas	2022-07-18 18:13:28	44
46	46	55	non dui nec urna	2023-03-19 16:59:27	52
47	47	13	inceptos hymenaeos. Mauris	2023-05-12 17:49:29	54
48	48	59	ante dictum mi,	2023-03-21 17:14:26	35
49	49	60	inceptos hymenaeos.	2022-08-03 07:49:12	16
50	50	51	id, ante. Nunc mauris sapien,	2023-01-20 15:46:03	47
51	51	21	est arcu ac	2022-07-29 22:01:47	52
52	52	19	vulputate velit eu sem.	2021-09-24 22:29:08	79
53	53	37	Morbi vehicula. Pellentesque	2022-01-03 18:00:49	84
54	54	13	in, dolor. Fusce	2023-06-19 22:59:55	20
55	55	90	enim. Etiam imperdiet dictum magna.	2022-10-29 18:09:58	82
56	56	88	elit erat vitae risus. Duis	2023-01-01 22:45:46	86
57	57	10	nisi magna	2022-04-05 11:17:17	84
58	58	1	felis purus	2023-03-24 04:45:45	35
59	59	84	Duis volutpat nunc sit	2022-05-19 07:38:27	47
60	60	92	natoque	2021-10-10 23:05:43	94
61	61	78	sit amet metus. Aliquam	2021-12-01 06:39:00	84
62	62	64	convallis convallis dolor. Quisque	2021-09-06 19:50:20	15
63	63	26	tristique pellentesque, tellus sem	2022-04-11 10:40:15	31
64	64	95	euismod est arcu	2022-12-01 17:32:13	46
65	65	58	Aliquam	2022-04-28 23:28:44	42
66	66	76	quis arcu vel	2022-10-07 21:19:36	66
67	67	33	justo	2022-09-19 02:35:06	35
68	68	56	iaculis quis, pede. Praesent eu	2021-09-14 07:55:25	55
69	69	18	orci lobortis augue	2023-03-25 05:46:24	2
70	70	95	luctus ut, pellentesque eget,	2023-03-09 09:35:10	95
71	71	34	placerat, augue. Sed molestie.	2022-02-16 19:40:21	5
72	72	10	natoque	2022-05-06 23:53:38	68
73	73	33	risus a ultricies adipiscing,	2022-02-23 13:38:07	60
74	74	32	ac libero nec ligula consectetuer	2022-04-05 04:25:51	51
75	75	34	ultricies	2023-06-05 20:36:15	96
76	76	53	primis	2022-12-31 01:53:28	6
77	77	17	eleifend nec,	2021-11-12 06:43:06	19
78	78	61	ut mi.	2021-08-12 12:50:51	12
79	79	48	Fusce dolor quam, elementum	2021-11-01 13:06:30	1
80	80	60	vitae	2022-10-27 15:48:28	9
81	81	23	aliquet	2021-09-05 13:58:17	94
82	82	3	ante blandit viverra. Donec	2022-01-31 15:22:37	25
83	83	30	lobortis, nisi	2021-08-15 23:41:05	52
84	84	13	a purus. Duis elementum,	2021-09-08 04:34:14	27
85	85	62	non, feugiat nec, diam.	2022-09-10 23:02:14	45
86	86	32	odio a purus. Duis	2023-06-26 07:38:29	41
87	87	31	inceptos hymenaeos. Mauris ut quam	2023-01-07 05:34:01	74
88	88	99	non magna. Nam	2023-04-28 19:49:30	84
89	89	22	est. Mauris eu turpis.	2022-01-04 13:10:04	11
90	90	10	auctor,	2023-05-26 19:22:38	38
91	91	5	nascetur ridiculus mus. Aenean	2022-04-10 12:26:03	28
92	92	58	lacus. Cras interdum. Nunc	2022-07-11 01:13:36	21
93	93	92	nec orci. Donec	2023-03-23 04:34:51	43
94	94	95	Mauris vestibulum, neque	2022-04-16 12:51:44	96
95	95	34	at, egestas a,	2022-05-13 03:20:07	2
96	96	14	Duis volutpat nunc sit	2021-10-08 03:09:28	92
97	97	33	purus mauris a nunc.	2022-11-18 10:25:09	47
98	98	98	vitae diam. Proin	2023-03-12 08:14:18	16
99	99	48	justo faucibus lectus, a sollicitudin	2022-10-15 13:34:03	73
100	100	81	mi eleifend egestas.	2021-10-15 10:02:04	22
\.


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 210
-- Name: communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.communities_id_seq', 100, true);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 213
-- Name: friendship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.friendship_id_seq', 100, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 215
-- Name: friendship_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.friendship_statuses_id_seq', 5, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 217
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.messages_id_seq', 100, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 219
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.photo_id_seq', 100, true);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 221
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 100, true);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 223
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.users_id_seq', 100, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 225
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.video_id_seq', 100, true);


--
-- TOC entry 3255 (class 2606 OID 16574)
-- Name: communities communities_name_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_name_key UNIQUE (name);


--
-- TOC entry 3257 (class 2606 OID 16576)
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16578)
-- Name: communities_users communities_users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_pkey PRIMARY KEY (community_id, user_id);


--
-- TOC entry 3261 (class 2606 OID 16580)
-- Name: friendship friendship_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16582)
-- Name: friendship_statuses friendship_statuses_name_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_name_key UNIQUE (name);


--
-- TOC entry 3265 (class 2606 OID 16584)
-- Name: friendship_statuses friendship_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16586)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16588)
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 16590)
-- Name: photo photo_url_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_url_key UNIQUE (url);


--
-- TOC entry 3273 (class 2606 OID 16592)
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16594)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3277 (class 2606 OID 16596)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3279 (class 2606 OID 16598)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 16600)
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 16602)
-- Name: video video_url_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_url_key UNIQUE (url);


-- Completed on 2022-08-11 13:33:10

--
-- PostgreSQL database dump complete
--

