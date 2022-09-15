--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.4

-- Started on 2022-09-15 12:56:08

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
-- TOC entry 215 (class 1259 OID 16460)
-- Name: adresses; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.adresses (
    id integer NOT NULL,
    adress_name character varying(250) NOT NULL
);


ALTER TABLE public.adresses OWNER TO gb_user;

--
-- TOC entry 214 (class 1259 OID 16458)
-- Name: adresses_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.adresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresses_id_seq OWNER TO gb_user;

--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 214
-- Name: adresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.adresses_id_seq OWNED BY public.adresses.id;


--
-- TOC entry 209 (class 1259 OID 16432)
-- Name: age_types; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.age_types (
    id integer NOT NULL,
    age_type_name character varying(120) NOT NULL
);


ALTER TABLE public.age_types OWNER TO gb_user;

--
-- TOC entry 208 (class 1259 OID 16430)
-- Name: age_types_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.age_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_types_id_seq OWNER TO gb_user;

--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 208
-- Name: age_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.age_types_id_seq OWNED BY public.age_types.id;


--
-- TOC entry 220 (class 1259 OID 16491)
-- Name: brends; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.brends (
    id integer NOT NULL,
    brand_name character varying(120) NOT NULL
);


ALTER TABLE public.brends OWNER TO gb_user;

--
-- TOC entry 219 (class 1259 OID 16489)
-- Name: brends_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.brends_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brends_id_seq OWNER TO gb_user;

--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 219
-- Name: brends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.brends_id_seq OWNED BY public.brends.id;


--
-- TOC entry 203 (class 1259 OID 16400)
-- Name: catalog; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.catalog (
    id integer NOT NULL,
    category_id integer NOT NULL,
    brend_id integer NOT NULL,
    product_type_id integer NOT NULL,
    age_type_id integer NOT NULL,
    season_type_id integer NOT NULL,
    price money
);


ALTER TABLE public.catalog OWNER TO gb_user;

--
-- TOC entry 202 (class 1259 OID 16398)
-- Name: catalog_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.catalog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_id_seq OWNER TO gb_user;

--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 202
-- Name: catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.catalog_id_seq OWNED BY public.catalog.id;


--
-- TOC entry 205 (class 1259 OID 16408)
-- Name: categories; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    category_name character varying(120) NOT NULL
);


ALTER TABLE public.categories OWNER TO gb_user;

--
-- TOC entry 204 (class 1259 OID 16406)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO gb_user;

--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 204
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 213 (class 1259 OID 16448)
-- Name: customers; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    phone character varying(15),
    created_at timestamp without time zone
);


ALTER TABLE public.customers OWNER TO gb_user;

--
-- TOC entry 212 (class 1259 OID 16446)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO gb_user;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 212
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 218 (class 1259 OID 16474)
-- Name: order_products; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.order_products (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    count integer NOT NULL
);


ALTER TABLE public.order_products OWNER TO gb_user;

--
-- TOC entry 217 (class 1259 OID 16468)
-- Name: orders; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    adress_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.orders OWNER TO gb_user;

--
-- TOC entry 216 (class 1259 OID 16466)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO gb_user;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 216
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 207 (class 1259 OID 16424)
-- Name: product_types; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.product_types (
    id integer NOT NULL,
    product_type_name character varying(120) NOT NULL
);


ALTER TABLE public.product_types OWNER TO gb_user;

--
-- TOC entry 206 (class 1259 OID 16422)
-- Name: product_types_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.product_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_types_id_seq OWNER TO gb_user;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 206
-- Name: product_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.product_types_id_seq OWNED BY public.product_types.id;


--
-- TOC entry 211 (class 1259 OID 16440)
-- Name: season_types; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.season_types (
    id integer NOT NULL,
    season_type_name character varying(120) NOT NULL
);


ALTER TABLE public.season_types OWNER TO gb_user;

--
-- TOC entry 210 (class 1259 OID 16438)
-- Name: season_types_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.season_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.season_types_id_seq OWNER TO gb_user;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 210
-- Name: season_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.season_types_id_seq OWNED BY public.season_types.id;


--
-- TOC entry 2927 (class 2604 OID 16463)
-- Name: adresses id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.adresses ALTER COLUMN id SET DEFAULT nextval('public.adresses_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 16435)
-- Name: age_types id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.age_types ALTER COLUMN id SET DEFAULT nextval('public.age_types_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 16494)
-- Name: brends id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.brends ALTER COLUMN id SET DEFAULT nextval('public.brends_id_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 16403)
-- Name: catalog id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog ALTER COLUMN id SET DEFAULT nextval('public.catalog_id_seq'::regclass);


--
-- TOC entry 2922 (class 2604 OID 16411)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 2926 (class 2604 OID 16451)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 16471)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 16427)
-- Name: product_types id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.product_types ALTER COLUMN id SET DEFAULT nextval('public.product_types_id_seq'::regclass);


--
-- TOC entry 2925 (class 2604 OID 16443)
-- Name: season_types id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.season_types ALTER COLUMN id SET DEFAULT nextval('public.season_types_id_seq'::regclass);


--
-- TOC entry 3102 (class 0 OID 16460)
-- Dependencies: 215
-- Data for Name: adresses; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.adresses (id, adress_name) FROM stdin;
1	3640 Nunc St.
2	3192 Est. Ave
3	Ap #432-9150 Egestas. Ave
4	310-3669 Massa St.
5	Ap #245-5044 Et Road
6	Ap #150-2658 Sapien, Rd.
7	P.O. Box 958, 953 Amet Avenue
8	Ap #738-8034 Purus Road
9	694-9193 Sagittis Av.
10	8678 Nec, Road
11	Ap #569-6664 Mauris. Road
12	Ap #649-6449 Fusce Av.
13	4015 Ac, Ave
14	Ap #598-4128 Luctus Ave
15	554-2527 Quam Road
16	986-8536 Accumsan Street
17	9229 Egestas Street
18	466-3967 Cras St.
19	2172 Ac Street
20	Ap #742-9941 Luctus, Av.
21	Ap #714-7033 Vitae St.
22	Ap #367-1754 Accumsan Street
23	Ap #110-5992 Quis Street
24	Ap #287-4058 Donec Av.
25	Ap #526-9322 Sed Ave
26	Ap #655-1641 In St.
27	332-1376 Nunc Rd.
28	165-662 Nascetur St.
29	977-673 Id, Avenue
30	Ap #793-6337 Fusce Rd.
31	7318 Amet Ave
32	Ap #692-6405 Tempor Road
33	Ap #495-7465 Et Ave
34	P.O. Box 139, 3514 Augue St.
35	2641 Dolor Ave
36	7469 Est. Rd.
37	5219 Erat St.
38	Ap #906-4742 Mauris St.
39	Ap #933-284 Quis Rd.
40	718-5473 Metus. Rd.
41	738 Aliquet Av.
42	9431 Augue Ave
43	P.O. Box 710, 8215 Pede. Rd.
44	910-2339 Nullam Street
45	P.O. Box 985, 1499 Dictum. Street
46	9722 Aliquet Street
47	8083 Ipsum Rd.
48	Ap #946-4766 Nam Road
49	4532 Feugiat. St.
50	5144 Turpis. St.
51	Ap #349-1878 Quam, Road
52	1558 Ultrices, Ave
53	554-9827 Id, Avenue
54	P.O. Box 126, 2029 Iaculis Rd.
55	Ap #952-6890 Molestie Ave
56	340-6106 Vel St.
57	952-1272 Non, Rd.
58	Ap #605-144 Est Ave
59	499-4145 Facilisi. St.
60	844-6410 Diam Street
61	477-6957 Cras Street
62	242-8322 Aliquam Street
63	Ap #163-673 Quam St.
64	P.O. Box 842, 7463 Pede, St.
65	Ap #790-4120 Ac St.
66	Ap #108-5710 Donec Ave
67	357 Luctus, Street
68	Ap #272-3004 Aliquam Avenue
69	Ap #586-7639 Nulla Road
70	649-9479 Et, Avenue
71	Ap #966-8419 Ut Rd.
72	192-3431 Libero. Avenue
73	Ap #285-3180 Nulla Street
74	Ap #310-3860 Ante St.
75	Ap #508-9687 Euismod Av.
76	686-7932 Tincidunt Street
77	2299 Etiam St.
78	6567 Magna Rd.
79	P.O. Box 790, 5770 At Rd.
80	248-9152 Ultricies Avenue
81	Ap #182-8049 Quam. Av.
82	Ap #167-8233 Tellus Av.
83	6041 Eget, Ave
84	6130 Ut, St.
85	468-3142 Magna. Avenue
86	Ap #963-2087 Maecenas Rd.
87	Ap #298-7829 Lacus. St.
88	572-806 Quisque Avenue
89	P.O. Box 994, 7311 Adipiscing Ave
90	Ap #319-317 Non, Rd.
91	546 Nisi Av.
92	P.O. Box 864, 321 Blandit. Ave
93	P.O. Box 270, 3885 Nam Street
94	P.O. Box 430, 3758 Sed Avenue
95	P.O. Box 571, 2974 Lorem, Road
96	2820 Sagittis Rd.
97	Ap #330-2717 Lacus. Ave
98	454-5502 Imperdiet, Ave
99	609-5616 Arcu. Av.
100	Ap #270-9615 Eget St.
\.


--
-- TOC entry 3096 (class 0 OID 16432)
-- Dependencies: 209
-- Data for Name: age_types; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.age_types (id, age_type_name) FROM stdin;
1	Детская
2	Подростковая
3	Молодежная
4	Взрослая
\.


--
-- TOC entry 3107 (class 0 OID 16491)
-- Dependencies: 220
-- Data for Name: brends; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.brends (id, brand_name) FROM stdin;
1	felis, adipiscing fringilla,
2	odio a purus.
3	urna.
4	mattis
5	lobortis quis, pede.
6	cursus a,
7	pharetra
8	Nam ac
9	neque. Sed
10	libero et
11	Ut sagittis lobortis
12	sem. Pellentesque
13	hendrerit consectetuer,
14	Aenean
15	pede.
16	sodales. Mauris
17	orci luctus
18	Fusce mi
19	massa. Suspendisse
20	aliquet odio.
21	dui, nec
22	Cras
23	lobortis ultrices. Vivamus
24	faucibus ut, nulla.
25	sem semper erat,
26	Maecenas malesuada fringilla
27	adipiscing fringilla, porttitor
28	lectus sit
29	Nulla facilisis.
30	ornare sagittis
31	nec, malesuada
32	primis
33	lorem ipsum
34	in molestie
35	malesuada malesuada.
36	auctor velit.
37	Donec tincidunt. Donec
38	massa lobortis ultrices.
39	odio tristique
40	lorem ipsum
41	tortor,
42	conubia
43	Nunc laoreet lectus
44	sapien,
45	porttitor scelerisque
46	aliquam
47	Proin non massa
48	adipiscing elit.
49	nulla. Cras
50	elit
51	Donec elementum,
52	est. Nunc
53	Phasellus libero
54	ornare
55	vestibulum, neque
56	arcu. Aliquam
57	lorem ac
58	Suspendisse commodo tincidunt
59	sit
60	lectus.
61	Nullam
62	purus ac
63	nec,
64	dui nec
65	erat neque
66	elit, pellentesque a,
67	vel arcu.
68	parturient
69	enim. Etiam imperdiet
70	bibendum
71	Suspendisse commodo
72	Aliquam fringilla
73	erat. Etiam vestibulum
74	porttitor scelerisque
75	dui nec
76	elit, pretium
77	magna. Sed eu
78	Vivamus sit
79	risus odio,
80	Nunc
81	hymenaeos. Mauris ut
82	nunc sit amet
83	diam. Pellentesque
84	semper
85	Sed eu nibh
86	interdum ligula
87	malesuada vel,
88	vitae dolor.
89	lorem vitae odio
90	vel
91	id, libero.
92	odio, auctor vitae,
93	Donec
94	lacinia orci,
95	sodales at, velit.
96	augue id
97	nec ligula
98	nec
99	Quisque varius.
100	dui. Fusce
\.


--
-- TOC entry 3090 (class 0 OID 16400)
-- Dependencies: 203
-- Data for Name: catalog; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.catalog (id, category_id, brend_id, product_type_id, age_type_id, season_type_id, price) FROM stdin;
1	2	26	3	2	2	447.62 руб
2	1	10	11	2	2	995.23 руб
3	1	40	11	3	3	722.74 руб
4	1	25	7	3	1	906.82 руб
5	1	4	20	4	2	801.31 руб
6	2	59	7	2	4	196.36 руб
7	1	43	4	3	2	149.00 руб
8	1	62	13	4	2	303.93 руб
9	1	78	11	4	3	870.16 руб
10	2	3	11	3	2	891.64 руб
11	2	80	4	4	2	152.03 руб
12	2	52	19	4	1	590.09 руб
13	2	19	19	1	4	11.58 руб
14	2	14	3	2	1	577.62 руб
15	2	72	10	2	4	941.96 руб
16	2	98	3	2	3	657.22 руб
17	1	83	12	2	3	371.97 руб
18	2	86	7	3	4	823.65 руб
19	1	72	8	1	1	285.14 руб
20	1	24	17	2	3	753.14 руб
21	2	71	1	3	4	115.43 руб
22	1	51	6	4	3	937.61 руб
23	1	15	12	4	2	737.88 руб
24	2	79	3	4	5	465.75 руб
25	2	88	3	2	1	746.23 руб
26	2	39	19	4	4	406.33 руб
27	1	69	19	1	4	554.32 руб
28	2	13	7	3	2	950.76 руб
29	1	8	5	1	3	667.58 руб
30	2	18	3	1	4	836.12 руб
31	1	7	17	1	2	818.26 руб
32	2	10	12	1	4	74.06 руб
33	1	83	13	2	4	344.97 руб
34	2	51	16	2	4	535.61 руб
35	1	66	16	4	2	755.99 руб
36	1	56	17	3	2	531.87 руб
37	2	41	2	4	5	591.57 руб
38	1	72	9	1	2	942.92 руб
39	1	87	18	1	2	368.05 руб
40	2	23	8	3	2	535.11 руб
41	2	50	9	2	4	67.96 руб
42	2	92	15	4	3	565.79 руб
43	1	11	18	2	5	340.95 руб
44	2	94	13	1	4	682.70 руб
45	1	61	2	1	2	392.11 руб
46	2	43	6	1	2	337.23 руб
47	2	35	3	2	3	431.09 руб
48	2	5	1	1	4	384.46 руб
49	2	35	8	3	1	161.89 руб
50	2	21	15	1	2	67.06 руб
51	1	48	15	3	1	94.49 руб
52	1	96	16	3	3	716.79 руб
53	1	8	14	3	3	167.58 руб
54	2	65	11	2	1	811.83 руб
55	1	10	8	2	4	678.68 руб
56	2	10	11	3	2	328.72 руб
57	2	19	16	1	5	858.00 руб
58	1	8	16	2	1	301.95 руб
59	2	31	1	3	3	353.10 руб
60	2	53	9	2	4	584.93 руб
61	2	55	10	1	4	628.66 руб
62	2	61	5	3	4	800.05 руб
63	2	58	4	4	3	457.26 руб
64	1	54	15	3	4	354.82 руб
65	1	53	18	2	1	36.55 руб
66	2	67	10	2	2	409.10 руб
67	1	35	15	3	5	628.68 руб
68	2	72	6	4	4	722.88 руб
69	1	73	5	4	3	613.96 руб
70	1	52	10	3	3	353.70 руб
71	2	75	13	2	1	363.95 руб
72	2	77	3	1	3	120.26 руб
73	2	53	7	4	5	459.32 руб
74	2	34	7	1	5	828.30 руб
75	1	58	1	2	3	260.25 руб
76	2	82	12	2	5	437.36 руб
77	2	6	18	3	4	931.80 руб
78	1	64	9	4	1	205.45 руб
79	1	61	17	3	5	772.10 руб
80	1	31	5	4	1	761.01 руб
81	1	73	18	4	1	898.67 руб
82	2	91	14	2	4	796.56 руб
83	1	69	3	2	2	461.88 руб
84	2	39	16	4	4	137.41 руб
85	1	94	2	2	2	611.26 руб
86	1	57	7	2	4	394.81 руб
87	2	94	16	1	2	281.56 руб
88	1	83	20	1	3	905.25 руб
89	1	14	6	3	5	94.73 руб
90	2	68	13	2	3	302.41 руб
91	1	18	15	2	3	519.15 руб
92	2	30	6	2	3	707.45 руб
93	2	47	5	4	2	435.45 руб
94	1	61	3	2	5	418.08 руб
95	2	16	15	4	4	536.26 руб
96	1	16	13	1	1	674.37 руб
97	2	95	9	1	5	162.47 руб
98	2	43	12	2	4	474.27 руб
99	2	43	15	3	2	24.70 руб
100	2	46	15	3	4	886.56 руб
\.


--
-- TOC entry 3092 (class 0 OID 16408)
-- Dependencies: 205
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.categories (id, category_name) FROM stdin;
1	Мужская одежда
2	Женская одежда
\.


--
-- TOC entry 3100 (class 0 OID 16448)
-- Dependencies: 213
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.customers (id, first_name, last_name, email, phone, created_at) FROM stdin;
1	Lucian	Pratt	aliquam.rutrum@aol.edu	1-957-477-2232	2023-07-26 19:02:06
2	Dolan	Rutledge	aliquam.gravida@icloud.edu	1-792-270-1273	2023-08-15 23:16:37
3	Tobias	Cochran	arcu.morbi@yahoo.ca	1-874-544-3311	2023-06-26 13:53:30
4	Evelyn	Moon	donec.nibh.enim@protonmail.ca	1-528-656-1168	2022-02-24 00:10:41
5	Christine	Decker	quisque.fringilla.euismod@yahoo.org	1-579-141-2467	2023-08-07 12:33:33
6	Michelle	Sampson	est.nunc.laoreet@icloud.org	1-831-472-5768	2022-10-08 07:27:54
7	Hunter	Fulton	lorem.sit.amet@google.net	1-547-992-6323	2023-08-24 13:24:27
8	Kaitlin	Hahn	vitae.sodales@protonmail.com	1-362-877-0441	2023-08-25 18:26:03
9	Brock	Mccullough	integer.vitae@icloud.ca	1-831-799-2862	2022-05-14 18:44:50
10	Victor	Savage	mi.aliquam@aol.org	1-944-227-6924	2023-07-22 12:46:49
11	Giacomo	Rodgers	sit@yahoo.org	1-484-502-3532	2023-01-20 22:16:11
12	Catherine	Powell	turpis.non.enim@icloud.com	1-636-997-4607	2023-08-28 10:50:58
13	Yuli	Duncan	eros.nec@aol.org	1-438-236-4681	2022-05-15 10:55:50
14	Demetrius	Heath	sagittis.nullam.vitae@yahoo.org	1-371-444-6664	2022-02-13 21:46:19
15	Kylee	Grant	mi.tempor@google.couk	1-702-878-6167	2022-04-30 00:18:51
16	Vance	Wong	enim@aol.com	1-381-745-1836	2023-01-08 09:38:15
17	Abigail	Peterson	nulla@google.ca	1-872-686-6921	2023-07-24 23:17:19
18	Graiden	Barnett	vivamus.nibh.dolor@google.edu	1-745-238-9153	2022-05-07 08:29:59
19	Camden	Emerson	eget.odio@hotmail.org	1-832-731-3249	2022-10-23 04:19:58
20	Florence	Fleming	amet.consectetuer.adipiscing@icloud.couk	1-762-785-2865	2023-04-23 01:20:57
21	Miranda	Vang	molestie.tortor@aol.couk	1-877-998-7346	2023-05-11 10:28:35
22	Dana	Delaney	a.feugiat@outlook.org	1-185-168-2087	2022-06-20 04:37:06
23	Logan	Keller	ut.pellentesque@protonmail.edu	1-347-278-2746	2022-06-27 03:28:23
24	Darrel	Robbins	lorem.vitae.odio@hotmail.org	1-147-873-6555	2023-05-12 08:53:29
25	Hanna	Burt	vitae.mauris.sit@protonmail.couk	1-322-370-4539	2022-08-23 06:02:09
26	Raya	Mullen	amet.consectetuer.adipiscing@aol.net	1-665-693-8382	2022-06-07 14:07:52
27	Mariam	Gallagher	nisi@yahoo.com	1-273-674-6341	2022-11-08 13:09:30
28	Judith	Mayer	ligula.aenean@icloud.ca	1-882-272-5128	2021-10-15 15:04:54
29	Francesca	Deleon	suscipit.nonummy@yahoo.com	1-753-741-3831	2023-04-21 20:16:01
30	Clementine	Baldwin	phasellus@outlook.org	1-783-465-6828	2022-01-03 06:21:40
31	Macon	Robinson	elementum.lorem@yahoo.net	1-259-401-6654	2022-08-21 16:26:38
32	Tucker	Mcgowan	ultricies@outlook.org	1-359-883-1264	2023-01-27 08:13:59
33	Hashim	Kaufman	ipsum@aol.ca	1-683-666-2881	2023-07-11 03:01:41
34	Graham	Coleman	aliquet.libero.integer@google.ca	1-635-999-9480	2022-07-07 15:09:45
35	Alice	Dillard	cras.vulputate@yahoo.edu	1-685-862-0861	2023-04-04 03:23:37
36	Ciaran	Hewitt	nostra@outlook.ca	1-973-221-1878	2022-06-15 08:18:07
37	Desirae	Wagner	aliquam@outlook.net	1-784-658-0415	2022-03-05 06:44:42
38	Leo	Hayes	orci.quis@icloud.com	1-211-684-4348	2022-08-27 21:05:35
39	Murphy	Calhoun	quis@yahoo.org	1-493-871-8675	2023-01-03 04:06:50
40	Clinton	Ryan	cubilia.curae@aol.net	1-838-812-8646	2023-06-19 04:08:32
41	Rae	Hanson	elit@outlook.net	1-324-911-7577	2022-09-05 08:49:21
42	Sydnee	Kirby	senectus.et@google.com	1-722-451-1775	2023-05-29 13:59:02
43	Ashton	Randolph	nam.interdum@aol.com	1-736-677-8330	2021-10-09 05:14:35
44	Mannix	Gray	nunc.sit.amet@outlook.couk	1-453-165-8890	2023-08-29 05:46:44
45	Medge	Wyatt	dolor.quam@google.org	1-277-626-4823	2022-09-26 14:05:40
46	Brittany	Butler	vulputate.eu@hotmail.com	1-438-767-2789	2022-05-27 20:44:43
47	Timon	O'donnell	luctus@icloud.net	1-246-174-0726	2022-01-26 16:25:14
48	Eaton	Powers	mauris@aol.org	1-377-472-4911	2023-06-01 11:44:32
49	Amanda	Sargent	montes@hotmail.com	1-640-452-7283	2022-10-30 06:56:11
50	Ethan	Rich	dapibus.id.blandit@hotmail.net	1-142-638-8134	2022-01-01 02:07:47
51	Benjamin	Horn	orci.in@outlook.edu	1-693-337-3761	2021-12-24 23:56:18
52	Indigo	Rodriquez	dolor.quam@aol.ca	1-713-676-6330	2022-08-26 03:53:27
53	MacKensie	Holland	erat@yahoo.ca	1-678-382-8665	2022-07-25 07:30:04
54	Mufutau	Green	morbi.tristique@icloud.edu	1-976-985-8968	2023-06-27 01:25:36
55	Amir	Villarreal	purus.duis.elementum@icloud.edu	1-538-833-8289	2022-09-21 04:27:27
56	Juliet	Whitney	vestibulum.nec@hotmail.ca	1-203-258-0412	2023-03-01 09:32:31
57	Hedwig	Hopper	euismod.est@yahoo.ca	1-848-487-8221	2022-05-29 07:46:59
58	Rina	Porter	ligula.aliquam@icloud.ca	1-452-727-6772	2023-07-28 16:10:38
59	Jolie	Macdonald	varius.nam.porttitor@hotmail.edu	1-553-263-3933	2023-01-12 22:01:23
60	Cora	Dodson	suspendisse.ac.metus@yahoo.edu	1-521-804-2554	2022-09-11 19:05:58
61	Naomi	Roth	quam.elementum.at@yahoo.net	1-402-625-2861	2023-07-22 10:27:13
62	Germaine	Wade	euismod.ac@icloud.couk	1-107-740-5730	2021-11-14 13:11:17
63	Mason	Holman	tempor.erat@yahoo.ca	1-855-974-0894	2023-02-27 20:39:18
64	Alvin	Sanchez	ac.arcu@yahoo.edu	1-379-876-7966	2022-06-11 11:01:01
65	Katelyn	Noble	aenean.euismod@yahoo.com	1-294-762-2533	2023-02-08 20:03:49
66	Wyatt	Stewart	et@outlook.ca	1-215-238-5822	2023-08-06 14:17:20
67	Flynn	Brooks	ipsum.primis@aol.org	1-634-833-4261	2023-06-07 07:47:22
68	Hu	Willis	vel.arcu@hotmail.com	1-211-566-3772	2022-08-26 23:51:33
69	Jameson	Cardenas	porttitor.vulputate@icloud.couk	1-845-253-6454	2023-08-26 19:26:01
70	Tanek	Armstrong	eget@protonmail.edu	1-814-375-4645	2022-03-30 05:21:08
71	Georgia	Berry	orci.adipiscing@aol.org	1-612-464-1075	2022-10-29 03:30:25
72	Lillian	Kirby	vitae@yahoo.couk	1-515-214-9261	2022-07-10 07:11:17
73	Jasper	Singleton	molestie.sodales@protonmail.edu	1-284-422-7252	2022-10-05 05:32:28
74	Yeo	Saunders	sem.pellentesque.ut@outlook.edu	1-355-416-7270	2022-06-24 07:27:25
75	Lysandra	Herrera	nec.ante@hotmail.net	1-644-582-9129	2023-03-23 23:21:05
76	Eugenia	French	gravida.non@icloud.couk	1-345-884-3973	2022-08-22 10:08:26
77	Emi	Peters	nullam.lobortis@aol.edu	1-147-316-1122	2021-11-01 22:13:03
78	Dustin	Duncan	nulla.integer.vulputate@icloud.edu	1-722-526-8379	2022-10-25 13:02:48
79	Hayden	Powers	feugiat.tellus.lorem@aol.edu	1-656-661-5369	2023-05-17 01:56:28
80	Dacey	Rollins	nec@google.org	1-582-223-8248	2023-02-19 00:40:31
81	Colt	Cash	vel.sapien@hotmail.com	1-306-481-6173	2023-04-14 20:15:01
82	Whitney	Greene	tellus.eu@hotmail.net	1-146-250-4764	2022-08-31 19:18:41
83	Madeson	Reeves	morbi@protonmail.org	1-829-334-2741	2023-05-18 18:26:40
84	Uriel	Beasley	sit.amet.ultricies@icloud.ca	1-359-731-2925	2022-12-14 16:52:01
85	Jerry	Wolf	tortor.dictum@yahoo.net	1-825-567-3607	2022-04-09 21:38:10
86	Rahim	Haynes	consequat.enim@outlook.org	1-486-352-4088	2022-07-19 10:46:11
87	Keane	Goodman	dolor.fusce.feugiat@yahoo.com	1-523-210-2294	2021-10-29 15:22:41
88	Ali	Hanson	pellentesque@icloud.net	1-257-783-3866	2023-02-13 04:49:40
89	Lani	Talley	sit.amet.orci@protonmail.org	1-946-381-8278	2022-03-09 02:11:31
90	Mikayla	Warren	pretium.et.rutrum@aol.com	1-653-822-9342	2022-09-04 05:36:37
91	Tate	Holder	tortor@icloud.org	1-676-859-8359	2023-05-03 04:33:42
92	Marah	Chandler	blandit@icloud.com	1-424-327-8756	2022-10-12 05:21:57
93	Ruby	Gutierrez	erat.semper.rutrum@yahoo.net	1-369-453-8389	2022-10-13 23:38:07
94	Martena	White	dui.fusce@hotmail.couk	1-948-155-8552	2022-06-08 09:04:45
95	Phoebe	Molina	placerat.augue@yahoo.net	1-444-441-0017	2023-09-02 19:56:29
96	Berk	Wells	quis.urna@yahoo.com	1-415-348-1143	2022-07-21 04:09:53
97	Heather	Webster	risus.donec@yahoo.com	1-182-111-3615	2023-03-29 12:47:13
98	Laith	Hutchinson	quam.pellentesque@outlook.net	1-912-877-2528	2023-06-03 08:11:24
99	Breanna	White	urna.convallis@outlook.com	1-443-282-1453	2022-02-22 17:00:39
100	Macy	Jones	enim@icloud.com	1-674-511-1630	2022-08-22 03:34:48
\.


--
-- TOC entry 3105 (class 0 OID 16474)
-- Dependencies: 218
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.order_products (order_id, product_id, count) FROM stdin;
1	39	47
2	48	34
3	30	23
4	12	46
5	69	63
6	46	26
7	53	23
8	54	77
9	25	47
10	46	70
11	8	34
12	3	98
13	68	35
14	58	82
15	67	70
16	44	77
17	89	64
18	53	71
19	71	99
20	47	66
21	17	13
22	44	71
23	1	45
24	59	34
25	1	81
26	18	36
27	94	44
28	21	93
29	76	99
30	2	50
31	73	91
32	11	69
33	84	42
34	35	26
35	82	88
36	90	28
37	63	41
38	95	4
39	6	8
40	75	58
41	4	38
42	13	13
43	87	2
44	2	49
45	98	69
46	60	67
47	68	60
48	61	33
49	29	23
50	12	81
51	54	98
52	79	61
53	20	21
54	88	13
55	69	32
56	59	59
57	79	20
58	32	96
59	40	58
60	71	80
61	3	42
62	91	56
63	63	49
64	50	58
65	38	9
66	63	94
67	90	32
68	26	98
69	4	50
70	91	77
71	26	43
72	13	17
73	68	13
74	21	89
75	63	15
76	26	81
77	29	75
78	64	7
79	56	16
80	22	88
81	75	86
82	76	82
83	71	17
84	80	69
85	10	34
86	31	67
87	42	99
88	3	19
89	94	94
90	9	12
91	16	80
92	72	1
93	85	24
94	9	92
95	26	41
96	65	94
97	19	44
98	32	29
99	88	16
100	40	94
\.


--
-- TOC entry 3104 (class 0 OID 16468)
-- Dependencies: 217
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.orders (id, customer_id, adress_id, created_at) FROM stdin;
1	71	18	2022-03-10 06:00:42
2	78	13	2023-03-21 17:56:28
3	86	90	2022-12-06 07:13:12
4	58	47	2023-05-04 23:10:12
5	35	13	2022-09-01 06:24:29
6	100	28	2021-09-15 18:45:13
7	91	71	2021-12-11 22:40:15
8	51	26	2023-03-28 07:57:43
9	32	21	2022-11-23 18:56:21
10	3	76	2022-06-24 09:04:45
11	56	7	2022-12-06 21:23:50
12	67	7	2021-10-16 14:34:41
13	29	68	2022-07-03 01:13:16
14	88	28	2022-02-13 09:30:42
15	81	47	2022-02-24 18:00:16
16	20	71	2022-05-27 16:31:59
17	61	44	2023-05-09 05:40:57
18	53	7	2022-12-06 11:07:53
19	74	25	2022-12-06 12:05:07
20	18	90	2022-12-25 08:36:30
21	92	62	2021-11-23 17:50:02
22	5	55	2023-08-10 08:17:35
23	69	24	2021-12-22 09:19:50
24	77	67	2022-01-13 18:40:58
25	13	12	2021-11-18 17:06:42
26	8	6	2023-04-06 21:57:18
27	44	17	2023-01-09 13:04:34
28	80	37	2022-09-28 20:09:19
29	100	20	2022-07-02 10:28:58
30	84	54	2022-09-30 11:47:56
31	33	15	2023-01-10 08:44:29
32	13	8	2023-07-27 01:27:02
33	80	71	2022-02-09 10:46:31
34	54	34	2022-11-19 10:04:39
35	58	55	2021-11-18 10:10:52
36	98	83	2022-12-31 05:59:51
37	2	29	2022-01-25 04:18:24
38	73	30	2023-08-05 11:09:34
39	12	66	2023-05-12 04:56:25
40	70	58	2022-12-24 04:10:28
41	49	17	2022-08-06 17:00:58
42	66	83	2023-02-11 03:54:18
43	7	96	2023-07-05 10:27:44
44	21	39	2022-03-13 13:46:22
45	76	98	2021-10-18 02:01:51
46	84	67	2022-04-14 03:52:40
47	4	94	2023-07-28 08:57:30
48	32	17	2022-01-22 18:47:09
49	33	24	2023-03-29 13:59:21
50	58	46	2023-01-28 09:39:34
51	12	31	2021-12-29 14:31:05
52	83	79	2022-09-03 14:58:56
53	63	83	2022-06-29 01:57:39
54	80	35	2023-07-30 11:09:10
55	81	8	2021-10-24 00:45:12
56	80	4	2023-05-13 12:13:15
57	40	42	2022-04-06 07:56:09
58	50	20	2021-10-22 11:20:44
59	77	25	2023-05-17 08:40:54
60	88	67	2023-08-08 17:47:25
61	24	51	2022-04-19 13:24:41
62	15	65	2022-10-24 02:33:40
63	19	51	2023-06-19 05:31:36
64	36	18	2022-08-08 13:36:25
65	37	20	2023-04-03 22:36:35
66	42	3	2023-06-02 04:42:10
67	5	89	2022-08-04 01:45:03
68	4	57	2021-12-02 02:55:59
69	83	54	2022-12-18 12:42:20
70	21	42	2023-01-19 08:31:01
71	11	82	2021-12-07 03:29:57
72	33	53	2021-09-21 07:48:02
73	37	67	2022-04-26 20:53:49
74	21	23	2022-06-08 12:07:33
75	19	38	2022-11-05 08:53:10
76	34	96	2021-10-16 11:21:41
77	54	55	2023-02-20 06:11:43
78	1	38	2022-05-19 23:29:58
79	75	75	2023-04-15 18:59:44
80	98	93	2022-11-10 18:05:43
81	42	81	2022-03-08 06:10:52
82	98	40	2023-06-02 10:51:13
83	82	89	2022-11-12 05:38:28
84	40	51	2022-05-21 06:06:42
85	76	79	2023-08-20 09:11:01
86	20	6	2023-01-29 17:19:40
87	9	9	2021-12-09 16:18:13
88	98	67	2023-02-13 04:26:16
89	42	72	2023-04-07 09:00:08
90	56	32	2021-12-01 21:20:36
91	97	1	2022-11-11 18:35:55
92	100	63	2023-07-11 22:15:58
93	98	55	2022-07-04 03:28:05
94	38	9	2022-06-02 17:13:20
95	25	75	2022-09-01 15:12:41
96	33	49	2022-01-16 05:37:56
97	9	90	2022-11-28 12:54:59
98	16	31	2022-12-26 13:59:04
99	2	58	2022-07-30 16:28:01
100	66	49	2023-06-18 03:57:17
\.


--
-- TOC entry 3094 (class 0 OID 16424)
-- Dependencies: 207
-- Data for Name: product_types; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.product_types (id, product_type_name) FROM stdin;
1	Шляпа
2	Кепка
3	Майка
4	Нижнее белье
5	Штаны
6	Брюки
7	Футболка
8	Носки
9	Лосины
10	Кардиган
11	Кофта
12	Свитер
13	Рубашка
14	Пиджак
15	Куртка
16	Мастерка
17	Кеды
18	Кросовки
19	Туфли
20	Ботинки
\.


--
-- TOC entry 3098 (class 0 OID 16440)
-- Dependencies: 211
-- Data for Name: season_types; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.season_types (id, season_type_name) FROM stdin;
1	Летняя
2	Весенняя
3	Осенняя
4	Зимняя
5	Демисезонная
\.


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 214
-- Name: adresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.adresses_id_seq', 1, false);


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 208
-- Name: age_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.age_types_id_seq', 1, false);


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 219
-- Name: brends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.brends_id_seq', 1, false);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 202
-- Name: catalog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.catalog_id_seq', 1, false);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 204
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 212
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 216
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 206
-- Name: product_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.product_types_id_seq', 1, false);


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 210
-- Name: season_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.season_types_id_seq', 1, false);


--
-- TOC entry 2947 (class 2606 OID 16465)
-- Name: adresses adresses_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 16437)
-- Name: age_types age_types_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.age_types
    ADD CONSTRAINT age_types_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 16496)
-- Name: brends brends_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.brends
    ADD CONSTRAINT brends_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 16405)
-- Name: catalog catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 16413)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 16455)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 2943 (class 2606 OID 16457)
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- TOC entry 2945 (class 2606 OID 16453)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 2951 (class 2606 OID 16478)
-- Name: order_products order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (order_id, product_id);


--
-- TOC entry 2949 (class 2606 OID 16473)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 16429)
-- Name: product_types product_types_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);


--
-- TOC entry 2939 (class 2606 OID 16445)
-- Name: season_types season_types_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.season_types
    ADD CONSTRAINT season_types_pkey PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 16502)
-- Name: catalog catalog_age_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_age_type_id_fk FOREIGN KEY (age_type_id) REFERENCES public.age_types(id);


--
-- TOC entry 2956 (class 2606 OID 16497)
-- Name: catalog catalog_brend_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_brend_id_fk FOREIGN KEY (brend_id) REFERENCES public.brends(id);


--
-- TOC entry 2954 (class 2606 OID 16479)
-- Name: catalog catalog_category_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_category_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 2955 (class 2606 OID 16484)
-- Name: catalog catalog_product_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_product_type_id_fk FOREIGN KEY (product_type_id) REFERENCES public.product_types(id);


--
-- TOC entry 2958 (class 2606 OID 16507)
-- Name: catalog catalog_season_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_season_type_id_fk FOREIGN KEY (season_type_id) REFERENCES public.season_types(id);


--
-- TOC entry 2961 (class 2606 OID 16522)
-- Name: order_products order_products_order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_order_id_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- TOC entry 2962 (class 2606 OID 16527)
-- Name: order_products order_products_product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_product_id_fk FOREIGN KEY (product_id) REFERENCES public.catalog(id) ON DELETE CASCADE;


--
-- TOC entry 2960 (class 2606 OID 16517)
-- Name: orders orders_adress_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_adress_id_fk FOREIGN KEY (adress_id) REFERENCES public.adresses(id);


--
-- TOC entry 2959 (class 2606 OID 16512)
-- Name: orders orders_customer_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id);


-- Completed on 2022-09-15 12:56:08

--
-- PostgreSQL database dump complete
--

