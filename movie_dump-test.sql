--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-12 13:38:46

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
-- TOC entry 215 (class 1259 OID 16420)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    name_actor character varying(30)
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16419)
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_actor_id_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 214
-- Name: actors_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;


--
-- TOC entry 219 (class 1259 OID 16434)
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    film_id integer NOT NULL,
    film_name character varying(50),
    year integer,
    budget numeric(8,2),
    actor_id integer,
    producer_id integer
);


ALTER TABLE public.films OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16433)
-- Name: films_film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_film_id_seq OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 218
-- Name: films_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_film_id_seq OWNED BY public.films.film_id;


--
-- TOC entry 217 (class 1259 OID 16427)
-- Name: producers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producers (
    producer_id integer NOT NULL,
    name_producer character varying(30)
);


ALTER TABLE public.producers OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16426)
-- Name: producers_producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producers_producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producers_producer_id_seq OWNER TO postgres;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 216
-- Name: producers_producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producers_producer_id_seq OWNED BY public.producers.producer_id;


--
-- TOC entry 3183 (class 2604 OID 16423)
-- Name: actors actor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 16437)
-- Name: films film_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN film_id SET DEFAULT nextval('public.films_film_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 16430)
-- Name: producers producer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producers ALTER COLUMN producer_id SET DEFAULT nextval('public.producers_producer_id_seq'::regclass);


--
-- TOC entry 3337 (class 0 OID 16420)
-- Dependencies: 215
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (actor_id, name_actor) FROM stdin;
1	Tom Cruise
2	Robert Pattinson
3	Michelle Yeoh
4	Alexander Skarsgard
5	Rosalie Chiang
\.


--
-- TOC entry 3341 (class 0 OID 16434)
-- Dependencies: 219
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (film_id, film_name, year, budget, actor_id, producer_id) FROM stdin;
1	TOP GUN: MAVERICK	2022	716.60	1	1
2	THE BATMAN	2021	369.30	2	2
3	EVERYTHING EVERYWHERE ALL AT ONCE	2022	69.50	3	3
4	THE NORTHMAN	2022	34.20	4	4
5	TURNING RED	2020	1.20	5	5
\.


--
-- TOC entry 3339 (class 0 OID 16427)
-- Dependencies: 217
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producers (producer_id, name_producer) FROM stdin;
1	Jerry Bruckheimer
2	Dylan Clark
3	Joe Russo
4	Robert Eggers
5	Lindsey Collins
\.


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 214
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 5, true);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 218
-- Name: films_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_film_id_seq', 5, true);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 216
-- Name: producers_producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producers_producer_id_seq', 5, true);


--
-- TOC entry 3187 (class 2606 OID 16425)
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);


--
-- TOC entry 3191 (class 2606 OID 16439)
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (film_id);


--
-- TOC entry 3189 (class 2606 OID 16432)
-- Name: producers producers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (producer_id);


--
-- TOC entry 3192 (class 2606 OID 16440)
-- Name: films films_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(actor_id);


--
-- TOC entry 3193 (class 2606 OID 16445)
-- Name: films films_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.producers(producer_id);


-- Completed on 2022-11-12 13:38:53

--
-- PostgreSQL database dump complete
--

