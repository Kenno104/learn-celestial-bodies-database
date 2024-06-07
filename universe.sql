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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    age integer,
    population integer,
    life_boolean boolean NOT NULL,
    name character varying(60)
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_to_earth integer,
    galaxy_id integer NOT NULL,
    estimated_age integer
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
    distance_to_earth integer,
    age_in_millions_of_years integer,
    moon_id integer NOT NULL,
    biggest_crater text,
    planet_id integer NOT NULL,
    name character varying(60)
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
    distance_to_earth integer,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL,
    life_support_rating numeric,
    life_boolean boolean,
    solar_system_boolean boolean,
    star_id integer NOT NULL,
    name character varying(60)
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
    distance_to_earth integer,
    age_in_millions_of_years integer,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    estimated_age integer,
    name character varying(60)
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 100, NULL, true, NULL);
INSERT INTO public.earth VALUES (2, 200, NULL, true, NULL);
INSERT INTO public.earth VALUES (3, 300, NULL, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', NULL, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', NULL, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES ('Unknown', NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES ('4', NULL, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES ('5', NULL, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES ('6', NULL, NULL, 6, NULL);
INSERT INTO public.galaxy VALUES ('7', NULL, NULL, 7, NULL);
INSERT INTO public.galaxy VALUES ('8', NULL, NULL, 8, NULL);
INSERT INTO public.galaxy VALUES ('9', NULL, NULL, 9, NULL);
INSERT INTO public.galaxy VALUES ('10', NULL, NULL, 10, NULL);
INSERT INTO public.galaxy VALUES ('11', NULL, NULL, 11, NULL);
INSERT INTO public.galaxy VALUES ('12', NULL, NULL, 12, NULL);
INSERT INTO public.galaxy VALUES ('13', NULL, NULL, 13, NULL);
INSERT INTO public.galaxy VALUES ('14', NULL, NULL, 14, NULL);
INSERT INTO public.galaxy VALUES ('15', NULL, NULL, 15, NULL);
INSERT INTO public.galaxy VALUES ('16', NULL, NULL, 16, NULL);
INSERT INTO public.galaxy VALUES ('17', NULL, NULL, 17, NULL);
INSERT INTO public.galaxy VALUES ('18', NULL, NULL, 18, NULL);
INSERT INTO public.galaxy VALUES ('19', NULL, NULL, 19, NULL);
INSERT INTO public.galaxy VALUES ('20', NULL, NULL, 20, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, NULL, 1, NULL, 3, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 2, NULL, 1, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 3, NULL, 2, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 7, NULL, 7, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 8, NULL, 8, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 9, NULL, 9, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 10, NULL, 10, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 11, NULL, 11, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 12, NULL, 12, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 13, NULL, 13, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 14, NULL, 14, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 15, NULL, 15, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 16, NULL, 16, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 17, NULL, 17, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 18, NULL, 18, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 19, NULL, 19, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 20, NULL, 20, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 4, NULL, 4, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 5, NULL, 5, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, 6, NULL, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, 1, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 2, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 3, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 7, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 8, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 9, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 10, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 11, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 12, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 13, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 14, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 15, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 16, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 17, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 18, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 19, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 20, NULL, NULL, NULL, 20, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 4, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 5, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, 6, NULL, NULL, NULL, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, 1, 3, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 2, 1, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 4, 4, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 5, 5, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 6, 6, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 7, 7, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 8, 8, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 9, 9, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 10, 10, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 11, 11, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 12, 12, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 13, 13, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 14, 14, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 15, 15, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 16, 16, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 17, 17, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 18, 18, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 19, 19, NULL, NULL);
INSERT INTO public.star VALUES (NULL, NULL, 20, 20, NULL, NULL);


--
-- Name: earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_orbit; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_orbit UNIQUE (planet_id);


--
-- Name: earth unique_population; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT unique_population UNIQUE (population);


--
-- Name: planet unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_star UNIQUE (star_id);


--
-- Name: moon fk_moon_to_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_to_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_to_closest_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_to_closest_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_to_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_to_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

