--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: pokemon; Type: TABLE; Schema: public; Owner: sampey
--

CREATE TABLE public.pokemon (
    id integer,
    name character varying,
    type character varying,
    evolveformid integer
);


ALTER TABLE public.pokemon OWNER TO sampey;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: sampey
--

CREATE TABLE public.trainers (
    id integer,
    name character varying,
    isgymleader boolean,
    pokemonslot1 integer,
    pokemonslot2 integer,
    pokemonslot3 integer,
    pokemonslot4 integer,
    pokemonslot5 integer,
    pokemonslot6 integer
);


ALTER TABLE public.trainers OWNER TO sampey;

--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: sampey
--

COPY public.pokemon (id, name, type, evolveformid) FROM stdin;
\N	Bulbasaur	Grass	\N
1	Bulbasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
6	Charizard	Fire	5
7	Squirtle	Water	\N
7	Wartortle	Water	7
8	Blastoise	Water	8
9	Caterpie	Bug	\N
10	Metapod	Bug	10
12	Butterfree	Bug	11
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: sampey
--

COPY public.trainers (id, name, isgymleader, pokemonslot1, pokemonslot2, pokemonslot3, pokemonslot4, pokemonslot5, pokemonslot6) FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
\.


--
-- PostgreSQL database dump complete
--

