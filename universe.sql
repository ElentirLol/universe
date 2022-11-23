--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_by integer NOT NULL,
    size_in_ly numeric NOT NULL,
    infos text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    hascraters boolean,
    planet_id integer,
    info text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    havelife boolean,
    size_in_km integer,
    infos text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    name character varying(30),
    hasblackmatter boolean,
    hasdarkenergy boolean NOT NULL,
    hasblackholes boolean NOT NULL,
    space_id integer NOT NULL
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_by numeric NOT NULL,
    size_in_km numeric NOT NULL,
    infos text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 52850, 'Our Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 110, 'Closest Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 6, 120, 'Status as a galaxy disputed');
INSERT INTO public.galaxy VALUES (4, 'Draco II', 11, 120, 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 3, 14000, 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (6, 'Pictor II', 5, 300, 'Sattelite of Milky Way, possibly associated with the Large Magellanic Cloud');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 1, 'Our Moon!');
INSERT INTO public.moon VALUES (2, 'Titan', true, 5, 'Second biggest moon of Saturn');
INSERT INTO public.moon VALUES (3, 'Sirius Alpha Moon Alpha', true, 10, '');
INSERT INTO public.moon VALUES (4, 'Sirus Alpha Moon Beta', false, 10, '');
INSERT INTO public.moon VALUES (5, 'Sirius Alpha Moon Beta', false, 10, '');
INSERT INTO public.moon VALUES (6, 'Sirius Beta Moon Alpha', false, 11, '');
INSERT INTO public.moon VALUES (7, 'Sirius Beta Moon Beta', true, 11, '');
INSERT INTO public.moon VALUES (8, 'Ganimede', true, 5, '');
INSERT INTO public.moon VALUES (9, 'WOHG64 Alpha Moon Alpha', true, 12, '');
INSERT INTO public.moon VALUES (10, 'WOHG64 Alpha Moon Beta', false, 12, '');
INSERT INTO public.moon VALUES (11, 'WOHG64 Beta Moon Alpha', false, 13, '');
INSERT INTO public.moon VALUES (12, 'WOHG64 Beta Moon Beta', true, 13, '');
INSERT INTO public.moon VALUES (13, 'Moon1', true, 6, '');
INSERT INTO public.moon VALUES (14, 'Moon2', false, 9, '');
INSERT INTO public.moon VALUES (15, 'Moon3', true, 9, '');
INSERT INTO public.moon VALUES (16, 'Moon4', false, 8, '');
INSERT INTO public.moon VALUES (17, 'Moon5', true, 3, '');
INSERT INTO public.moon VALUES (18, 'Moon6', false, 6, '');
INSERT INTO public.moon VALUES (19, 'Moon7', true, 2, '');
INSERT INTO public.moon VALUES (20, 'Moon8', false, 7, 'Last one');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 6371, 'Our planet!', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 3389, 'Sister of Earth', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 6051, 'Second planet of our Sun System', 1);
INSERT INTO public.planet VALUES (4, 'Mercury', false, 2439, 'First planet of our Sun System', 1);
INSERT INTO public.planet VALUES (5, 'Saturne', false, 58232, 'A planet with a big ring!', 1);
INSERT INTO public.planet VALUES (6, 'Neptune', false, 24622, 'Blue planet of our Sun System', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 25362, 'Care with some jokes.', 1);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri B', false, 8000, 'One of the exoplanet in the universe', 2);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri', false, 12000, 'Also a exoplanet', 2);
INSERT INTO public.planet VALUES (10, 'Sirius Alpha', false, 14000, '', 5);
INSERT INTO public.planet VALUES (11, 'Sirius Beta', false, 4500, '', 5);
INSERT INTO public.planet VALUES (12, 'WOHG64 Alpha', false, 5694, '', 3);
INSERT INTO public.planet VALUES (13, 'WOHG64 Beta', false, 6705, '', 3);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES ('1', true, true, true, 1);
INSERT INTO public.space VALUES ('2', false, false, false, 2);
INSERT INTO public.space VALUES ('3', true, false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4, 696340, 'Our Star', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 5, 107280, 'Closest Star', 1);
INSERT INTO public.star VALUES (3, 'WOH G64', 5, 1051473400, 'One of the largest star!', 5);
INSERT INTO public.star VALUES (4, 'Alpha Andromedae', 1, 1044000, '', 2);
INSERT INTO public.star VALUES (5, 'Sirius', 250, 240000, 'A really White Star', 3);
INSERT INTO public.star VALUES (6, 'Rigel', 8, 54890000, 'One of the Brightest star', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moonnanme; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moonnanme UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_starname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_starname UNIQUE (name);


--
-- Name: planet uniqueplanet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniqueplanet_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
