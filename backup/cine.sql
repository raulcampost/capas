--
-- PostgreSQL database dump
--

-- Dumped from database version 10.8
-- Dumped by pg_dump version 10.8

-- Started on 2019-06-12 12:45:55

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

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2800 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: pelicula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    s_portada character varying(100) NOT NULL,
    s_singular character varying(100) NOT NULL,
    s_titulo character varying(100) NOT NULL,
    s_sinopsis character varying(800) NOT NULL,
    i_puestos integer NOT NULL,
    b_seleccion boolean NOT NULL,
    s_director character varying(100),
    s_singular2 character varying(100)
);


ALTER TABLE public.pelicula OWNER TO postgres;

--
-- TOC entry 2792 (class 0 OID 16394)
-- Dependencies: 196
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelicula (id_pelicula, s_portada, s_singular, s_titulo, s_sinopsis, i_puestos, b_seleccion, s_director, s_singular2) FROM stdin;
1	resources/img/bn/aladdin.jpg	resources/img/sg/aladdin.jpg	Aladdin	Un erizo de la calle de buen corazón y un Gran Visir hambriento de poder compiten por una lámpara mágica que tiene el poder de hacer realidad sus deseos más profundos.	300	f	Guy Ritchie	resources/img/sg/aladdin2.jpg
2	resources/img/bn/alita.jpg	resources/img/sg/alita.jpg	Alita: Ángel de la batalla	Una mujer cyborg desactivada es revivida, pero no puede recordar nada de su vida pasada y va en una búsqueda para descubrir quién es ella.	300	f	 Robert Rodriguez	resources/img/sg/alita2.jpg
3	resources/img/bn/capitanamarvel.jpg	resources/img/sg/capitanamarvel.jpg	Captain Marvel	Carol Danvers se convierte en uno de los héroes más poderosos del universo cuando la Tierra se ve atrapada en medio de una guerra galáctica entre dos razas alienígenas.	300	f	Anna Boden, Ryan Fleck	resources/img/sg/capitanamarvel2.jpg
4	resources/img/bn/endgame.jpg	resources/img/sg/endgame.jpg	Avengers: Endgame	Después de los devastadores eventos de Avengers: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para deshacer las acciones de Thanos y restaurar el orden en el universo.	300	f	Anthony Russo, Joe Russo	resources/img/sg/endgame2.jpg
5	resources/img/bn/glass.jpg	resources/img/sg/glass.jpeg	Glass	El guardia de seguridad David Dunn usa sus habilidades sobrenaturales para rastrear a Kevin Wendell Crumb, un hombre perturbado que tiene veinticuatro personalidades.	300	f	M. Night Shyamalan	resources/img/sg/glass2.jpeg
6	resources/img/bn/godzilla.jpg	resources/img/sg/godzilla.jpg	Godzilla: King of the Monsters	La agencia crypto-zoológica Monarch se enfrenta a una batería de monstruos del tamaño de un dios, incluida la poderosa Godzilla, que choca con Mothra, Rodan, y su némesis final, el rey Ghidorah de tres cabezas.	300	f	Michael Dougherty	resources/img/sg/godzilla2.jpg
7	resources/img/bn/it.jpg	resources/img/sg/it.jpg	It Chapter Two	Veintisiete años después de su primer encuentro con el aterrador Pennywise, el Club de Perdedores ha crecido y se ha mudado, hasta que una devastadora llamada telefónica los regresa.	300	f	Andy Muschietti	resources/img/sg/it2.jpg
8	resources/img/bn/john.jpg	resources/img/sg/john.jpg	John Wick: Chapter 3 - Parabellum.	El super asesino John Wick está huyendo luego de asesinar a un miembro del gremio internacional de asesinos, y con un precio de $ 14 millones en su cabeza, es el objetivo de hombres y mujeres sicarios de todo el mundo.	300	f	Chad Stahelski	resources/img/sg/john2.jpg
9	resources/img/bn/joker.jpg	resources/img/sg/joker.jpg	Joker	Un comediante fallido se vuelve loco y se convierte en un asesino psicopático.	300	f	Todd Phillips	resources/img/sg/joker2.jpg
10	resources/img/bn/leon.jpg	resources/img/sg/leon.jpg	The Lion King	Después del asesinato de su padre, un joven príncipe león huye de su reino solo para aprender el verdadero significado de la responsabilidad y la valentía.	300	f	Jon Favreau	resources/img/sg/leon2.jpg
11	resources/img/bn/maninblack.jpg	resources/img/sg/maninblack.jpg	Men in Black: International	Los Hombres de Negro siempre han protegido a la Tierra de la escoria del universo. En esta nueva aventura, abordan su mayor amenaza hasta la fecha: un lunar en la organización Hombres de Negro.	300	f	 F. Gary Gray	resources/img/sg/maninblack2.jpg
12	resources/img/bn/spider.jpg	resources/img/sg/spider.jpg	Spider-Man: Far from Home.	Siguiendo los eventos de Avengers: Endgame, Spider-Man debe actuar para enfrentar nuevas amenazas en un mundo que ha cambiado para siempre.	300	f	Jon Watts.	resources/img/sg/spider2.jpg
13	resources/img/bn/terminator.jpg	resources/img/sg/terminator.jpg	Terminator: Dark Fate.	Sarah Connor ha regresado de muy lejos y se está preparando con un equipo de agentes que lucharán contra el T-1000.	300	f	Tim Miller.	resources/img/sg/terminator2.jpg
14	resources/img/bn/toy.jpg	resources/img/sg/toy.jpg	Toy Story 4 	Cuando un nuevo juguete llamado "Forky" se une a Woody y la pandilla, un viaje por carretera junto a viejos y nuevos amigos revela qué tan grande puede ser el mundo para un juguete.	300	f	Josh Cooley	resources/img/sg/toy2.jpg
15	resources/img/bn/xmen.jpg	resources/img/sg/xmen.jpg	Dark Phoenix	Jean Gray comienza a desarrollar increíbles poderes que la corrompen y la convierten en un Fénix Oscuro. Ahora los X-Men tendrán que decidir si la vida de un miembro del equipo vale más que todas las personas que viven en el mundo.	300	f	Simon Kinberg	resources/img/sg/xmen2.jpg
\.


--
-- TOC entry 2670 (class 2606 OID 16398)
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);


-- Completed on 2019-06-12 12:45:56

--
-- PostgreSQL database dump complete
--

