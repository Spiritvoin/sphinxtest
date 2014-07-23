--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tbl_comment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_comment (
    id integer NOT NULL,
    content text NOT NULL,
    status integer NOT NULL,
    create_time date,
    author character varying(128) NOT NULL,
    email character varying(128) NOT NULL,
    post_id integer
);


ALTER TABLE public.tbl_comment OWNER TO postgres;

--
-- Name: tbl_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_comment_id_seq OWNER TO postgres;

--
-- Name: tbl_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_comment_id_seq OWNED BY tbl_comment.id;


--
-- Name: tbl_lookup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_lookup (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.tbl_lookup OWNER TO postgres;

--
-- Name: tbl_lookup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_lookup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_lookup_id_seq OWNER TO postgres;

--
-- Name: tbl_lookup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_lookup_id_seq OWNED BY tbl_lookup.id;


--
-- Name: tbl_post; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_post (
    id integer NOT NULL,
    title character varying(128),
    tags text,
    status integer,
    create_time date,
    update_time integer,
    author_id integer,
    content text NOT NULL
);


ALTER TABLE public.tbl_post OWNER TO postgres;

--
-- Name: tbl_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_post_id_seq OWNER TO postgres;

--
-- Name: tbl_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_post_id_seq OWNED BY tbl_post.id;


--
-- Name: tbl_tag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tag (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    frequency integer DEFAULT 1
);


ALTER TABLE public.tbl_tag OWNER TO postgres;

--
-- Name: tbl_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tag_id_seq OWNER TO postgres;

--
-- Name: tbl_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tag_id_seq OWNED BY tbl_tag.id;


--
-- Name: tbl_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_user (
    id integer NOT NULL,
    username character varying(128),
    password character(128),
    email character varying(128),
    profile text
);


ALTER TABLE public.tbl_user OWNER TO postgres;

--
-- Name: tbl_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_user_id_seq OWNER TO postgres;

--
-- Name: tbl_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_user_id_seq OWNED BY tbl_user.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_comment ALTER COLUMN id SET DEFAULT nextval('tbl_comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_lookup ALTER COLUMN id SET DEFAULT nextval('tbl_lookup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_post ALTER COLUMN id SET DEFAULT nextval('tbl_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tag ALTER COLUMN id SET DEFAULT nextval('tbl_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_user ALTER COLUMN id SET DEFAULT nextval('tbl_user_id_seq'::regclass);


--
-- Data for Name: tbl_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tbl_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_comment_id_seq', 1, false);


--
-- Data for Name: tbl_lookup; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tbl_lookup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_lookup_id_seq', 1, false);


--
-- Data for Name: tbl_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbl_post VALUES (2, 'title1', 'tags', 2, NULL, NULL, 1, 'content');
INSERT INTO tbl_post VALUES (6, 'title2', 'tags', 2, NULL, NULL, 1, 'content');
INSERT INTO tbl_post VALUES (5, 'title', 'tags', 2, NULL, NULL, 1, 'content test');
INSERT INTO tbl_post VALUES (3, 'title2', 'tags2', 2, NULL, NULL, 1, 'contentt 2');


--
-- Name: tbl_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_post_id_seq', 6, true);


--
-- Data for Name: tbl_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tbl_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tag_id_seq', 1, false);


--
-- Data for Name: tbl_user; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tbl_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_user_id_seq', 1, false);


--
-- Name: id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_lookup
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- Name: pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_post
    ADD CONSTRAINT pk PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

