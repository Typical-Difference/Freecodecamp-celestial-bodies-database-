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
    size numeric(15,3),
    description text,
    type character varying(20) NOT NULL
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
    is_rogue boolean NOT NULL,
    has_life boolean NOT NULL,
    description text,
    planet_id integer
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
-- Name: placeholder_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.placeholder_table (
    placeholder_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer NOT NULL
);


ALTER TABLE public.placeholder_table OWNER TO freecodecamp;

--
-- Name: placeholder_table_col1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.placeholder_table_col1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placeholder_table_col1_seq OWNER TO freecodecamp;

--
-- Name: placeholder_table_col1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.placeholder_table_col1_seq OWNED BY public.placeholder_table.placeholder_table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric(10,3),
    has_life boolean NOT NULL,
    description text,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric(10,3),
    distance_from_earth integer,
    description text,
    age_in_millions_of_years integer,
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
-- Name: placeholder_table placeholder_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder_table ALTER COLUMN placeholder_table_id SET DEFAULT nextval('public.placeholder_table_col1_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400.000, 'Home galaxy', 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 152000.000, '1 Trillion stars', 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Bodes Galaxy', 96000.000, 'Also called Messier 81', 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Butterfly Galaxy', NULL, 'Made up of two galaxies NGC 4567 and 4568', 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Bear Paw', 13500.000, 'Also called Bear Claw Galaxy', 'Compact Dwarf');
INSERT INTO public.galaxy VALUES (6, 'Cart Wheel Galaxy', 144300.000, 'Made up of 4 galaxies', 'Ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', false, false, 'Orbits the earth', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, false, 'Orbits Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, false, 'Orbits Mars', 4);
INSERT INTO public.moon VALUES (4, 'Io', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Himalia', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (10, 'Elara', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Sinope', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (12, 'Lede', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (13, 'Aitne', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (14, 'Kale', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (15, 'Dia', false, false, 'Orbits Jupiter', 5);
INSERT INTO public.moon VALUES (16, 'Rhea', false, false, 'Orbits Saturn', 6);
INSERT INTO public.moon VALUES (17, 'Titan', false, false, 'Orbits Saturn', 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', false, false, 'Orbits Saturn', 6);
INSERT INTO public.moon VALUES (19, 'Aegir', false, false, 'Orbits Saturn', 6);
INSERT INTO public.moon VALUES (20, 'Ariel', false, false, 'Orbits Uranus', 7);
INSERT INTO public.moon VALUES (21, 'Bianca', false, false, 'Orbits Uranus', 7);
INSERT INTO public.moon VALUES (22, 'Juliet', false, false, 'Orbits Uranus', 7);
INSERT INTO public.moon VALUES (23, 'Portia', false, false, 'Orbits Uranus', 7);
INSERT INTO public.moon VALUES (24, 'Puck', false, false, 'Orbits Uranus', 7);
INSERT INTO public.moon VALUES (25, 'Triton', false, false, 'Orbits Neptune', 8);
INSERT INTO public.moon VALUES (26, 'Charon', false, false, 'Orbits Pluto', 9);


--
-- Data for Name: placeholder_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.placeholder_table VALUES (1, 'I dont know', 2);
INSERT INTO public.placeholder_table VALUES (2, 'The purpose of', 3);
INSERT INTO public.placeholder_table VALUES (3, 'Creating this table💀', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879.000, false, 'Closst to the sun', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104.000, false, 'Bro is literally Sulphur', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12756.000, true, 'Best Planet', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6792.000, false, 'Humans have a strange obsession with colonising this one', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 142984.000, false, 'Gassy planet, protects from asteroids', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 120536.000, false, 'Hoola Hoop planet', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 51118.000, false, 'Funni name planet', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49528.000, false, 'Liquid nitrogen planet', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 2370.000, false, 'Got kicked out of the cool kids club', 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', NULL, false, 'In the habitable zone', 2);
INSERT INTO public.planet VALUES (11, '51 Pegasi b', NULL, false, 'In pegasus constellation', 7);
INSERT INTO public.planet VALUES (12, 'TrES-4b', NULL, false, 'Largest known exoplanet', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1400000.000, 150, 'Home star', 46000, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 200000.000, 40, 'Closest star', 48000, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 2500000.000, 90, 'Binary star', 230, 1);
INSERT INTO public.star VALUES (4, 'Pollux', 1224000.000, 32000, 'Gemini Constellation', 720, 1);
INSERT INTO public.star VALUES (5, 'Vega', 3280000.000, 23500, 'Lyra Constellation', 450, 1);
INSERT INTO public.star VALUES (6, 'Canopus', 293300.000, 23500, 'Carina Constellation', 10, 1);
INSERT INTO public.star VALUES (7, 'Placeholder star', 7070.000, 7070, 'Placeholder used to bypass foreign key constraint', 7070, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: placeholder_table_col1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.placeholder_table_col1_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: placeholder_table placeholder_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder_table
    ADD CONSTRAINT placeholder_table_pkey PRIMARY KEY (placeholder_table_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: placeholder_table unique_col2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder_table
    ADD CONSTRAINT unique_col2 UNIQUE (name);


--
-- Name: placeholder_table unique_col3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder_table
    ADD CONSTRAINT unique_col3 UNIQUE (col3);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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

