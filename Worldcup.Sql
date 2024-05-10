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
    round character varying NOT NULL,
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (55, 2018, 'Final', 686, 687, 4, 2);
INSERT INTO public.games VALUES (56, 2018, 'Third Place', 688, 689, 2, 0);
INSERT INTO public.games VALUES (57, 2018, 'Semi-Final', 687, 689, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Semi-Final', 686, 688, 1, 0);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 687, 690, 3, 2);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 689, 691, 2, 0);
INSERT INTO public.games VALUES (61, 2018, 'Quarter-Final', 688, 692, 2, 1);
INSERT INTO public.games VALUES (62, 2018, 'Quarter-Final', 686, 693, 2, 0);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 689, 694, 2, 1);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 691, 695, 1, 0);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 688, 696, 3, 2);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 692, 697, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 687, 698, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 690, 699, 2, 1);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 693, 700, 2, 1);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 686, 701, 4, 3);
INSERT INTO public.games VALUES (71, 2014, 'Final', 702, 701, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Third Place', 703, 692, 3, 0);
INSERT INTO public.games VALUES (73, 2014, 'Semi-Final', 701, 703, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Semi-Final', 702, 692, 7, 1);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 703, 704, 1, 0);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 701, 688, 1, 0);
INSERT INTO public.games VALUES (77, 2014, 'Quarter-Final', 692, 694, 2, 1);
INSERT INTO public.games VALUES (78, 2014, 'Quarter-Final', 702, 686, 1, 0);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 692, 705, 2, 1);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 694, 693, 2, 0);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 686, 706, 2, 0);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 702, 707, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 703, 697, 2, 1);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 704, 708, 2, 1);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 701, 695, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 688, 709, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (686, 'France');
INSERT INTO public.teams VALUES (687, 'Croatia');
INSERT INTO public.teams VALUES (688, 'Belgium');
INSERT INTO public.teams VALUES (689, 'England');
INSERT INTO public.teams VALUES (690, 'Russia');
INSERT INTO public.teams VALUES (691, 'Sweden');
INSERT INTO public.teams VALUES (692, 'Brazil');
INSERT INTO public.teams VALUES (693, 'Uruguay');
INSERT INTO public.teams VALUES (694, 'Colombia');
INSERT INTO public.teams VALUES (695, 'Switzerland');
INSERT INTO public.teams VALUES (696, 'Japan');
INSERT INTO public.teams VALUES (697, 'Mexico');
INSERT INTO public.teams VALUES (698, 'Denmark');
INSERT INTO public.teams VALUES (699, 'Spain');
INSERT INTO public.teams VALUES (700, 'Portugal');
INSERT INTO public.teams VALUES (701, 'Argentina');
INSERT INTO public.teams VALUES (702, 'Germany');
INSERT INTO public.teams VALUES (703, 'Netherlands');
INSERT INTO public.teams VALUES (704, 'Costa Rica');
INSERT INTO public.teams VALUES (705, 'Chile');
INSERT INTO public.teams VALUES (706, 'Nigeria');
INSERT INTO public.teams VALUES (707, 'Algeria');
INSERT INTO public.teams VALUES (708, 'Greece');
INSERT INTO public.teams VALUES (709, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 86, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 709, true);


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

