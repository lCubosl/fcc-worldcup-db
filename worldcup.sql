--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (49, 2018, 'Final', 635, 636, 4, 2);
INSERT INTO public.games VALUES (50, 2018, 'Third Place', 637, 638, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Semi-Final', 636, 638, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Semi-Final', 635, 637, 1, 0);
INSERT INTO public.games VALUES (53, 2018, 'Quarter-Final', 636, 639, 3, 2);
INSERT INTO public.games VALUES (54, 2018, 'Quarter-Final', 638, 640, 2, 0);
INSERT INTO public.games VALUES (55, 2018, 'Quarter-Final', 637, 641, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Quarter-Final', 635, 642, 2, 0);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 638, 643, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Eighth-Final', 640, 644, 1, 0);
INSERT INTO public.games VALUES (59, 2018, 'Eighth-Final', 637, 645, 3, 2);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 641, 646, 2, 0);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 636, 647, 2, 1);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 639, 648, 2, 1);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 642, 649, 2, 1);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 635, 650, 4, 3);
INSERT INTO public.games VALUES (65, 2014, 'Final', 651, 650, 1, 0);
INSERT INTO public.games VALUES (66, 2014, 'Third Place', 652, 641, 3, 0);
INSERT INTO public.games VALUES (67, 2014, 'Semi-Final', 650, 652, 1, 0);
INSERT INTO public.games VALUES (68, 2014, 'Semi-Final', 651, 641, 7, 1);
INSERT INTO public.games VALUES (69, 2014, 'Quarter-Final', 652, 653, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Quarter-Final', 650, 637, 1, 0);
INSERT INTO public.games VALUES (71, 2014, 'Quarter-Final', 641, 643, 2, 1);
INSERT INTO public.games VALUES (72, 2014, 'Quarter-Final', 651, 635, 1, 0);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 641, 654, 2, 1);
INSERT INTO public.games VALUES (74, 2014, 'Eighth-Final', 643, 642, 2, 0);
INSERT INTO public.games VALUES (75, 2014, 'Eighth-Final', 635, 655, 2, 0);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 651, 656, 2, 1);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 652, 646, 2, 1);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 653, 657, 2, 1);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 650, 644, 1, 0);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 637, 658, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (635, 'France');
INSERT INTO public.teams VALUES (636, 'Croatia');
INSERT INTO public.teams VALUES (637, 'Belgium');
INSERT INTO public.teams VALUES (638, 'England');
INSERT INTO public.teams VALUES (639, 'Russia');
INSERT INTO public.teams VALUES (640, 'Sweden');
INSERT INTO public.teams VALUES (641, 'Brazil');
INSERT INTO public.teams VALUES (642, 'Uruguay');
INSERT INTO public.teams VALUES (643, 'Colombia');
INSERT INTO public.teams VALUES (644, 'Switzerland');
INSERT INTO public.teams VALUES (645, 'Japan');
INSERT INTO public.teams VALUES (646, 'Mexico');
INSERT INTO public.teams VALUES (647, 'Denmark');
INSERT INTO public.teams VALUES (648, 'Spain');
INSERT INTO public.teams VALUES (649, 'Portugal');
INSERT INTO public.teams VALUES (650, 'Argentina');
INSERT INTO public.teams VALUES (651, 'Germany');
INSERT INTO public.teams VALUES (652, 'Netherlands');
INSERT INTO public.teams VALUES (653, 'Costa Rica');
INSERT INTO public.teams VALUES (654, 'Chile');
INSERT INTO public.teams VALUES (655, 'Nigeria');
INSERT INTO public.teams VALUES (656, 'Algeria');
INSERT INTO public.teams VALUES (657, 'Greece');
INSERT INTO public.teams VALUES (658, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 80, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 658, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

