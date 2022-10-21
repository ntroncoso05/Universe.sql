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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_km numeric(6,2) NOT NULL,
    description text NOT NULL
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
-- Name: life_form; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_form (
    life_form_id integer NOT NULL,
    name character varying(10),
    planet_id integer NOT NULL
);


ALTER TABLE public.life_form OWNER TO freecodecamp;

--
-- Name: life_form_life_form_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_form_life_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_form_life_form_id_seq OWNER TO freecodecamp;

--
-- Name: life_form_life_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_form_life_form_id_seq OWNED BY public.life_form.life_form_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mean_radius_km numeric(7,3) NOT NULL,
    orbital_km integer NOT NULL,
    discovery_year integer,
    get_sun_light boolean,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    mass_mj numeric(5,3) NOT NULL,
    period_days integer NOT NULL,
    discovery_year integer NOT NULL,
    star_id integer NOT NULL,
    has_life boolean
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    designation character varying(20),
    constellation character varying(15) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: life_form life_form_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form ALTER COLUMN life_form_id SET DEFAULT nextval('public.life_form_life_form_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100, 4560.20, 'Andromeda is the closest big galaxy to the milky way');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 50, 8500.32, 'Appaearance is similar to an insect antennae');
INSERT INTO public.galaxy VALUES (3, 'Backward', 80, 1300.40, 'It appears to rotate backwards');
INSERT INTO public.galaxy VALUES (4, 'Black eye', 320, 7423.65, 'It has a dark band of absorving dust');
INSERT INTO public.galaxy VALUES (5, 'Bode', 65, 6214.80, 'Named for Johann Bode who discovered the galaxy');
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 321, 2200.45, 'Looks are similar to a butterfly');


--
-- Data for Name: life_form; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_form VALUES (1, 'Ogre', 3);
INSERT INTO public.life_form VALUES (2, 'Elf', 5);
INSERT INTO public.life_form VALUES (3, 'Beast', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 11.267, 9380, 1877, false, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 6.200, 23460, 1877, false, 2);
INSERT INTO public.moon VALUES (3, 'Io', 1821.600, 421800, 1610, true, 3);
INSERT INTO public.moon VALUES (4, 'Europa', 1560.800, 671100, 1610, false, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 2634.100, 1070400, 1610, false, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 2410.300, 1882700, 1610, false, 6);
INSERT INTO public.moon VALUES (7, 'amalthea', 83.500, 181400, 1892, true, 7);
INSERT INTO public.moon VALUES (8, 'Himalia', 69.800, 11461000, 1904, true, 8);
INSERT INTO public.moon VALUES (9, 'Elara', 43.000, 11741000, 1905, true, 9);
INSERT INTO public.moon VALUES (10, 'Pasiphae', 30.000, 23624000, 1908, false, 10);
INSERT INTO public.moon VALUES (11, 'Sinope', 19.000, 23939000, 1914, false, 11);
INSERT INTO public.moon VALUES (12, 'Lysithea', 18.000, 11717000, 1938, true, 12);
INSERT INTO public.moon VALUES (13, 'Carme', 23.000, 23404000, 1938, true, 3);
INSERT INTO public.moon VALUES (14, 'Ananke', 14.000, 21276000, 1951, true, 4);
INSERT INTO public.moon VALUES (15, 'Leda', 10.000, 11165000, 1974, false, 5);
INSERT INTO public.moon VALUES (16, 'Thebe', 49.300, 1882700, 1979, false, 6);
INSERT INTO public.moon VALUES (17, 'Adrastea', 8.200, 129000, 1979, true, 7);
INSERT INTO public.moon VALUES (18, 'Metis', 21.500, 128000, 1979, true, 8);
INSERT INTO public.moon VALUES (19, 'Callirrhoe', 4.500, 24103000, 2000, false, 9);
INSERT INTO public.moon VALUES (20, 'Themisto', 4.000, 7284000, 1975, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Spe', 4.800, 185, 2008, 1, true);
INSERT INTO public.planet VALUES (2, 'Arion', 10.300, 993, 2008, 2, false);
INSERT INTO public.planet VALUES (3, 'Arkas', 2.700, 184, 2007, 3, true);
INSERT INTO public.planet VALUES (4, 'Orbitar', 3.880, 479, 2008, 4, false);
INSERT INTO public.planet VALUES (5, 'Taphao Thong', 2.530, 1078, 1996, 5, true);
INSERT INTO public.planet VALUES (6, 'Taphao Kaew', 0.540, 2391, 2001, 6, false);
INSERT INTO public.planet VALUES (7, 'Dimidiom', 0.472, 4, 1995, 6, false);
INSERT INTO public.planet VALUES (8, 'Galileo', 0.830, 14, 1996, 5, false);
INSERT INTO public.planet VALUES (9, 'Brahe', 0.171, 44, 2004, 4, false);
INSERT INTO public.planet VALUES (10, 'Lipprhey', 3.878, 4825, 2002, 3, true);
INSERT INTO public.planet VALUES (11, 'Janssen', 0.025, 1, 2004, 2, false);
INSERT INTO public.planet VALUES (12, 'Harriot', 0.141, 262, 2007, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Absoluto', 65, 'XO-5', 'Lynx', 1);
INSERT INTO public.star VALUES (2, 'Acamar', 32, 'Eridani A', 'Eridanus', 2);
INSERT INTO public.star VALUES (3, 'Achird', 55, 'Cassiopeiae A', 'Cassiopeia', 3);
INSERT INTO public.star VALUES (4, 'Acrab', 285, 'Scorpii Aa', 'Scorpius', 4);
INSERT INTO public.star VALUES (5, 'Acrux', 28, 'Crucis Aa', 'Crux', 5);
INSERT INTO public.star VALUES (6, 'Acubens', 310, 'Cancri Aa', 'Cancer', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_form_life_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_form_life_form_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life_form life_form_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_form_name_key UNIQUE (name);


--
-- Name: life_form life_form_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_form_pkey PRIMARY KEY (life_form_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: life_form life_form_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_form_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

