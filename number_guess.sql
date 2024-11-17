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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 18);
INSERT INTO public.games VALUES (2, 1, 787);
INSERT INTO public.games VALUES (3, 2, 968);
INSERT INTO public.games VALUES (4, 2, 164);
INSERT INTO public.games VALUES (5, 1, 41);
INSERT INTO public.games VALUES (6, 1, 503);
INSERT INTO public.games VALUES (7, 1, 540);
INSERT INTO public.games VALUES (8, 3, 288);
INSERT INTO public.games VALUES (9, 3, 366);
INSERT INTO public.games VALUES (10, 4, 922);
INSERT INTO public.games VALUES (11, 4, 697);
INSERT INTO public.games VALUES (12, 3, 339);
INSERT INTO public.games VALUES (13, 3, 77);
INSERT INTO public.games VALUES (14, 3, 470);
INSERT INTO public.games VALUES (15, 5, 114);
INSERT INTO public.games VALUES (16, 5, 265);
INSERT INTO public.games VALUES (17, 6, 659);
INSERT INTO public.games VALUES (18, 6, 416);
INSERT INTO public.games VALUES (19, 5, 881);
INSERT INTO public.games VALUES (20, 5, 411);
INSERT INTO public.games VALUES (21, 5, 30);
INSERT INTO public.games VALUES (22, 7, 795);
INSERT INTO public.games VALUES (23, 7, 557);
INSERT INTO public.games VALUES (24, 8, 97);
INSERT INTO public.games VALUES (25, 8, 285);
INSERT INTO public.games VALUES (26, 7, 42);
INSERT INTO public.games VALUES (27, 7, 351);
INSERT INTO public.games VALUES (28, 7, 234);
INSERT INTO public.games VALUES (29, 9, 244);
INSERT INTO public.games VALUES (30, 9, 964);
INSERT INTO public.games VALUES (31, 10, 811);
INSERT INTO public.games VALUES (32, 10, 827);
INSERT INTO public.games VALUES (33, 9, 599);
INSERT INTO public.games VALUES (34, 9, 988);
INSERT INTO public.games VALUES (35, 9, 105);
INSERT INTO public.games VALUES (36, 11, 650);
INSERT INTO public.games VALUES (37, 11, 439);
INSERT INTO public.games VALUES (38, 12, 493);
INSERT INTO public.games VALUES (39, 12, 907);
INSERT INTO public.games VALUES (40, 11, 175);
INSERT INTO public.games VALUES (41, 11, 73);
INSERT INTO public.games VALUES (42, 11, 325);
INSERT INTO public.games VALUES (43, 13, 526);
INSERT INTO public.games VALUES (44, 13, 492);
INSERT INTO public.games VALUES (45, 14, 876);
INSERT INTO public.games VALUES (46, 14, 764);
INSERT INTO public.games VALUES (47, 13, 36);
INSERT INTO public.games VALUES (48, 13, 562);
INSERT INTO public.games VALUES (49, 13, 818);
INSERT INTO public.games VALUES (50, 15, 608);
INSERT INTO public.games VALUES (51, 15, 398);
INSERT INTO public.games VALUES (52, 16, 355);
INSERT INTO public.games VALUES (53, 16, 168);
INSERT INTO public.games VALUES (54, 15, 805);
INSERT INTO public.games VALUES (55, 15, 587);
INSERT INTO public.games VALUES (56, 15, 890);
INSERT INTO public.games VALUES (57, 17, 19);
INSERT INTO public.games VALUES (58, 17, 876);
INSERT INTO public.games VALUES (59, 18, 192);
INSERT INTO public.games VALUES (60, 18, 51);
INSERT INTO public.games VALUES (61, 17, 448);
INSERT INTO public.games VALUES (62, 17, 723);
INSERT INTO public.games VALUES (63, 17, 259);
INSERT INTO public.games VALUES (64, 19, 576);
INSERT INTO public.games VALUES (65, 19, 179);
INSERT INTO public.games VALUES (66, 20, 291);
INSERT INTO public.games VALUES (67, 20, 55);
INSERT INTO public.games VALUES (68, 19, 46);
INSERT INTO public.games VALUES (69, 19, 714);
INSERT INTO public.games VALUES (70, 19, 741);
INSERT INTO public.games VALUES (71, 21, 333);
INSERT INTO public.games VALUES (72, 21, 986);
INSERT INTO public.games VALUES (73, 22, 164);
INSERT INTO public.games VALUES (74, 22, 103);
INSERT INTO public.games VALUES (75, 21, 607);
INSERT INTO public.games VALUES (76, 21, 74);
INSERT INTO public.games VALUES (77, 21, 310);
INSERT INTO public.games VALUES (78, 23, 406);
INSERT INTO public.games VALUES (79, 23, 544);
INSERT INTO public.games VALUES (80, 24, 508);
INSERT INTO public.games VALUES (81, 24, 121);
INSERT INTO public.games VALUES (82, 23, 375);
INSERT INTO public.games VALUES (83, 23, 76);
INSERT INTO public.games VALUES (84, 23, 892);
INSERT INTO public.games VALUES (85, 25, 680);
INSERT INTO public.games VALUES (86, 25, 166);
INSERT INTO public.games VALUES (87, 26, 496);
INSERT INTO public.games VALUES (88, 26, 891);
INSERT INTO public.games VALUES (89, 25, 343);
INSERT INTO public.games VALUES (90, 25, 794);
INSERT INTO public.games VALUES (91, 25, 462);
INSERT INTO public.games VALUES (92, 27, 225);
INSERT INTO public.games VALUES (93, 27, 879);
INSERT INTO public.games VALUES (94, 28, 598);
INSERT INTO public.games VALUES (95, 28, 746);
INSERT INTO public.games VALUES (96, 27, 733);
INSERT INTO public.games VALUES (97, 27, 23);
INSERT INTO public.games VALUES (98, 27, 152);
INSERT INTO public.games VALUES (99, 29, 169);
INSERT INTO public.games VALUES (100, 29, 6);
INSERT INTO public.games VALUES (101, 30, 2);
INSERT INTO public.games VALUES (102, 30, 778);
INSERT INTO public.games VALUES (103, 29, 572);
INSERT INTO public.games VALUES (104, 29, 20);
INSERT INTO public.games VALUES (105, 29, 679);
INSERT INTO public.games VALUES (106, 31, 308);
INSERT INTO public.games VALUES (107, 31, 572);
INSERT INTO public.games VALUES (108, 32, 171);
INSERT INTO public.games VALUES (109, 32, 727);
INSERT INTO public.games VALUES (110, 31, 290);
INSERT INTO public.games VALUES (111, 31, 311);
INSERT INTO public.games VALUES (112, 31, 464);
INSERT INTO public.games VALUES (113, 33, 296);
INSERT INTO public.games VALUES (114, 33, 567);
INSERT INTO public.games VALUES (115, 34, 801);
INSERT INTO public.games VALUES (116, 34, 675);
INSERT INTO public.games VALUES (117, 33, 306);
INSERT INTO public.games VALUES (118, 33, 459);
INSERT INTO public.games VALUES (119, 33, 163);
INSERT INTO public.games VALUES (120, 35, 300);
INSERT INTO public.games VALUES (121, 35, 181);
INSERT INTO public.games VALUES (122, 36, 946);
INSERT INTO public.games VALUES (123, 36, 668);
INSERT INTO public.games VALUES (124, 35, 931);
INSERT INTO public.games VALUES (125, 35, 632);
INSERT INTO public.games VALUES (126, 35, 640);
INSERT INTO public.games VALUES (127, 37, 826);
INSERT INTO public.games VALUES (128, 37, 616);
INSERT INTO public.games VALUES (129, 38, 428);
INSERT INTO public.games VALUES (130, 38, 772);
INSERT INTO public.games VALUES (131, 37, 734);
INSERT INTO public.games VALUES (132, 37, 115);
INSERT INTO public.games VALUES (133, 37, 462);
INSERT INTO public.games VALUES (134, 39, 554);
INSERT INTO public.games VALUES (135, 39, 447);
INSERT INTO public.games VALUES (136, 40, 626);
INSERT INTO public.games VALUES (137, 40, 171);
INSERT INTO public.games VALUES (138, 39, 380);
INSERT INTO public.games VALUES (139, 39, 300);
INSERT INTO public.games VALUES (140, 39, 923);
INSERT INTO public.games VALUES (141, 41, 725);
INSERT INTO public.games VALUES (142, 41, 308);
INSERT INTO public.games VALUES (143, 42, 190);
INSERT INTO public.games VALUES (144, 42, 711);
INSERT INTO public.games VALUES (145, 41, 1);
INSERT INTO public.games VALUES (146, 41, 991);
INSERT INTO public.games VALUES (147, 41, 960);
INSERT INTO public.games VALUES (148, 43, 645);
INSERT INTO public.games VALUES (149, 43, 189);
INSERT INTO public.games VALUES (150, 44, 698);
INSERT INTO public.games VALUES (151, 44, 504);
INSERT INTO public.games VALUES (152, 43, 729);
INSERT INTO public.games VALUES (153, 43, 737);
INSERT INTO public.games VALUES (154, 43, 32);
INSERT INTO public.games VALUES (155, 45, 122);
INSERT INTO public.games VALUES (156, 45, 493);
INSERT INTO public.games VALUES (157, 46, 561);
INSERT INTO public.games VALUES (158, 46, 994);
INSERT INTO public.games VALUES (159, 45, 1001);
INSERT INTO public.games VALUES (160, 45, 275);
INSERT INTO public.games VALUES (161, 45, 334);
INSERT INTO public.games VALUES (162, 47, 375);
INSERT INTO public.games VALUES (163, 47, 858);
INSERT INTO public.games VALUES (164, 48, 987);
INSERT INTO public.games VALUES (165, 48, 580);
INSERT INTO public.games VALUES (166, 47, 270);
INSERT INTO public.games VALUES (167, 47, 877);
INSERT INTO public.games VALUES (168, 47, 839);
INSERT INTO public.games VALUES (169, 49, 924);
INSERT INTO public.games VALUES (170, 49, 497);
INSERT INTO public.games VALUES (171, 50, 793);
INSERT INTO public.games VALUES (172, 50, 881);
INSERT INTO public.games VALUES (173, 49, 895);
INSERT INTO public.games VALUES (174, 49, 568);
INSERT INTO public.games VALUES (175, 49, 633);
INSERT INTO public.games VALUES (176, 51, 708);
INSERT INTO public.games VALUES (177, 51, 25);
INSERT INTO public.games VALUES (178, 52, 885);
INSERT INTO public.games VALUES (179, 52, 184);
INSERT INTO public.games VALUES (180, 51, 963);
INSERT INTO public.games VALUES (181, 51, 165);
INSERT INTO public.games VALUES (182, 51, 853);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731871054396');
INSERT INTO public.users VALUES (2, 'user_1731871054395');
INSERT INTO public.users VALUES (3, 'user_1731871146347');
INSERT INTO public.users VALUES (4, 'user_1731871146346');
INSERT INTO public.users VALUES (5, 'user_1731871209968');
INSERT INTO public.users VALUES (6, 'user_1731871209967');
INSERT INTO public.users VALUES (7, 'user_1731871216006');
INSERT INTO public.users VALUES (8, 'user_1731871216005');
INSERT INTO public.users VALUES (9, 'user_1731871219505');
INSERT INTO public.users VALUES (10, 'user_1731871219504');
INSERT INTO public.users VALUES (11, 'user_1731871312743');
INSERT INTO public.users VALUES (12, 'user_1731871312742');
INSERT INTO public.users VALUES (13, 'user_1731871370116');
INSERT INTO public.users VALUES (14, 'user_1731871370115');
INSERT INTO public.users VALUES (15, 'user_1731871414042');
INSERT INTO public.users VALUES (16, 'user_1731871414041');
INSERT INTO public.users VALUES (17, 'user_1731871468560');
INSERT INTO public.users VALUES (18, 'user_1731871468559');
INSERT INTO public.users VALUES (19, 'user_1731871594784');
INSERT INTO public.users VALUES (20, 'user_1731871594783');
INSERT INTO public.users VALUES (21, 'user_1731871650647');
INSERT INTO public.users VALUES (22, 'user_1731871650646');
INSERT INTO public.users VALUES (23, 'user_1731871780722');
INSERT INTO public.users VALUES (24, 'user_1731871780721');
INSERT INTO public.users VALUES (25, 'user_1731871913294');
INSERT INTO public.users VALUES (26, 'user_1731871913293');
INSERT INTO public.users VALUES (27, 'user_1731872236683');
INSERT INTO public.users VALUES (28, 'user_1731872236682');
INSERT INTO public.users VALUES (29, 'user_1731872269298');
INSERT INTO public.users VALUES (30, 'user_1731872269297');
INSERT INTO public.users VALUES (31, 'user_1731872559907');
INSERT INTO public.users VALUES (32, 'user_1731872559906');
INSERT INTO public.users VALUES (33, 'user_1731872684934');
INSERT INTO public.users VALUES (34, 'user_1731872684933');
INSERT INTO public.users VALUES (35, 'user_1731872699374');
INSERT INTO public.users VALUES (36, 'user_1731872699373');
INSERT INTO public.users VALUES (37, 'user_1731872863872');
INSERT INTO public.users VALUES (38, 'user_1731872863871');
INSERT INTO public.users VALUES (39, 'user_1731873121678');
INSERT INTO public.users VALUES (40, 'user_1731873121677');
INSERT INTO public.users VALUES (41, 'user_1731873147239');
INSERT INTO public.users VALUES (42, 'user_1731873147238');
INSERT INTO public.users VALUES (43, 'user_1731873325960');
INSERT INTO public.users VALUES (44, 'user_1731873325959');
INSERT INTO public.users VALUES (45, 'user_1731873346020');
INSERT INTO public.users VALUES (46, 'user_1731873346019');
INSERT INTO public.users VALUES (47, 'user_1731873355775');
INSERT INTO public.users VALUES (48, 'user_1731873355774');
INSERT INTO public.users VALUES (49, 'user_1731873440575');
INSERT INTO public.users VALUES (50, 'user_1731873440574');
INSERT INTO public.users VALUES (51, 'user_1731873451327');
INSERT INTO public.users VALUES (52, 'user_1731873451326');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 182, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 52, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

