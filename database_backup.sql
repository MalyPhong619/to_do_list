--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: lists; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.lists (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.lists OWNER TO "Guest";

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_id_seq OWNER TO "Guest";

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.lists_id_seq OWNED BY public.lists.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    description character varying,
    list_id integer
);


ALTER TABLE public.tasks OWNER TO "Guest";

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO "Guest";

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.lists ALTER COLUMN id SET DEFAULT nextval('public.lists_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.lists (id, name) FROM stdin;
3	
5	new list
6	Renamed list
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.tasks (id, description, list_id) FROM stdin;
\.


--
-- Name: lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.lists_id_seq', 7, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.tasks_id_seq', 5, true);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

