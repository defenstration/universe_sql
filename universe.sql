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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(20) NOT NULL,
    constellation_id integer NOT NULL,
    eng_name text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    type text,
    distance_to_earth_ly integer,
    constellation text,
    galaxy text,
    galaxy_name text
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
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    distance_from_home_planet_th_km integer,
    radius_km integer,
    water boolean,
    planet text,
    planet_name text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_moons_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_moons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_moons_id_seq OWNER TO freecodecamp;

--
-- Name: moons_moons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_moons_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    mass_kg_10_24 numeric(8,4),
    diameter_km integer,
    distance_from_sun_10_6_km integer,
    number_of_moons integer,
    star text,
    star_name text,
    planet_name text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    magnitude numeric(4,2),
    visible_by_eye boolean,
    constellation text,
    galaxy text,
    galaxy_name text,
    star_name text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: starts_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starts_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starts_star_id_seq OWNER TO freecodecamp;

--
-- Name: starts_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starts_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_moons_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.starts_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Andromeda', 1, NULL);
INSERT INTO public.constellation VALUES ('Ursa Major', 2, NULL);
INSERT INTO public.constellation VALUES ('Ursa Minor', 3, NULL);
INSERT INTO public.constellation VALUES ('Cygnus', 4, NULL);
INSERT INTO public.constellation VALUES ('Centaurus', 5, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Spiral', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Bodes', 4, 'Spiral', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel', 5, 'Lenticular', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cigar', 6, 'Starburst', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Spiral', 0, NULL, NULL, 'Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, NULL, NULL, NULL, 'Earth', 'Earth');
INSERT INTO public.moon VALUES ('Ganymede', 2, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Callisto', 3, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Io', 4, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Europa', 5, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Amalthea', 6, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Himala', 7, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Elara', 8, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Pasiphae', 9, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Sinope', 10, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Lysitlea', 11, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Carme', 12, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Aranke', 13, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Leda', 14, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Thebe', 15, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Adrastea', 16, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Metis', 17, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Callirrhoe', 18, NULL, NULL, NULL, 'Jupiter', 'Jupiter');
INSERT INTO public.moon VALUES ('Phobos', 19, NULL, NULL, NULL, 'Mars', 'Mars');
INSERT INTO public.moon VALUES ('Deimos', 20, NULL, NULL, NULL, 'Mars', 'Mars');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Kepler 16b', 8, NULL, NULL, NULL, NULL, 'Kepler', 'Kepler', 'Kepler 16b');
INSERT INTO public.planet VALUES ('TRAPPIST b', 9, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST b');
INSERT INTO public.planet VALUES ('TRAPPIST c', 10, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST c');
INSERT INTO public.planet VALUES ('TRAPPIST d', 11, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST d');
INSERT INTO public.planet VALUES ('TRAPPIST e', 12, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST e');
INSERT INTO public.planet VALUES ('TRAPPIST f', 13, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST f');
INSERT INTO public.planet VALUES ('TRAPPIST g', 14, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST g');
INSERT INTO public.planet VALUES ('TRAPPIST h', 15, NULL, NULL, NULL, NULL, 'TRAPPIST 1', 'TRAPPIST 1', 'TRAPPIST h');
INSERT INTO public.planet VALUES ('Mercury', 1, 0.3300, 4879, 58, 0, 'Sun', 'Sun', 'Mercury');
INSERT INTO public.planet VALUES ('Venus', 2, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Venus');
INSERT INTO public.planet VALUES ('Earth', 3, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Earth');
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Mars');
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Jupiter');
INSERT INTO public.planet VALUES ('Saturn', 6, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Saturn');
INSERT INTO public.planet VALUES ('Uranus', 7, NULL, NULL, NULL, NULL, 'Sun', 'Sun', 'Uranus');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Kepler', 2, NULL, false, 'Cygnus', 'Milky Way', 'Milky Way', 'Kepler');
INSERT INTO public.star VALUES ('TRAPPIST 1', 3, NULL, NULL, NULL, 'Milky Way', 'Milky Way', 'TRAPPIST 1');
INSERT INTO public.star VALUES ('Proxima Centauri', 4, NULL, true, NULL, 'Milky Way', 'Milky Way', 'Proxima Centauri');
INSERT INTO public.star VALUES ('Alpha Centauri', 5, NULL, true, NULL, 'Milky Way', 'Milky Way', 'Alpha Centauri');
INSERT INTO public.star VALUES ('Wolf 359', 6, NULL, true, NULL, 'Milky Way', 'Milky Way', 'Wolf 359');
INSERT INTO public.star VALUES ('Sun', 1, NULL, true, NULL, 'Milky Way', 'Milky Way', 'Sun');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moons_moons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_moons_id_seq', 20, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 15, true);


--
-- Name: starts_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starts_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: planet planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: star starts_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starts_name_key UNIQUE (name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

