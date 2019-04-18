--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.17
-- Dumped by pg_dump version 9.4.17
-- Started on 2019-04-18 15:41:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2246 (class 1262 OID 49578)
-- Name: scatobe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE scatobe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';


ALTER DATABASE scatobe OWNER TO postgres;

\connect scatobe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 178 (class 1259 OID 50780)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 50778)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2250 (class 0 OID 0)
-- Dependencies: 177
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 176 (class 1259 OID 50770)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 50768)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2251 (class 0 OID 0)
-- Dependencies: 175
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 174 (class 1259 OID 50759)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 50757)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 179 (class 1259 OID 50827)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 50839)
-- Name: solicitudes_categorias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_categorias (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.solicitudes_categorias OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 50837)
-- Name: solicitudes_categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_categorias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_categorias_id_seq OWNER TO postgres;

--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 180
-- Name: solicitudes_categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_categorias_id_seq OWNED BY public.solicitudes_categorias.id;


--
-- TOC entry 183 (class 1259 OID 50847)
-- Name: solicitudes_facturas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_facturas (
    id integer NOT NULL,
    factura character varying(100) NOT NULL,
    nombre character varying(50),
    anio character varying(4) NOT NULL,
    mes character varying(2) NOT NULL
);


ALTER TABLE public.solicitudes_facturas OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 50845)
-- Name: solicitudes_facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_facturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_facturas_id_seq OWNER TO postgres;

--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 182
-- Name: solicitudes_facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_facturas_id_seq OWNED BY public.solicitudes_facturas.id;


--
-- TOC entry 185 (class 1259 OID 50855)
-- Name: solicitudes_fanpages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_fanpages (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    zona_id integer NOT NULL
);


ALTER TABLE public.solicitudes_fanpages OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 50853)
-- Name: solicitudes_fanpages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_fanpages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_fanpages_id_seq OWNER TO postgres;

--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 184
-- Name: solicitudes_fanpages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_fanpages_id_seq OWNED BY public.solicitudes_fanpages.id;


--
-- TOC entry 187 (class 1259 OID 50863)
-- Name: solicitudes_gerentes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_gerentes (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    zona_id integer NOT NULL
);


ALTER TABLE public.solicitudes_gerentes OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 50861)
-- Name: solicitudes_gerentes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_gerentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_gerentes_id_seq OWNER TO postgres;

--
-- TOC entry 2256 (class 0 OID 0)
-- Dependencies: 186
-- Name: solicitudes_gerentes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_gerentes_id_seq OWNED BY public.solicitudes_gerentes.id;


--
-- TOC entry 189 (class 1259 OID 50871)
-- Name: solicitudes_imagenes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_imagenes (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    nombre character varying(50),
    solicitud_id integer
);


ALTER TABLE public.solicitudes_imagenes OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 50869)
-- Name: solicitudes_imagenes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_imagenes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_imagenes_id_seq OWNER TO postgres;

--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 188
-- Name: solicitudes_imagenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_imagenes_id_seq OWNED BY public.solicitudes_imagenes.id;


--
-- TOC entry 209 (class 1259 OID 51092)
-- Name: solicitudes_materiales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_materiales (
    id integer NOT NULL,
    material character varying(100) NOT NULL,
    nombre character varying(50),
    solicitud_id integer
);


ALTER TABLE public.solicitudes_materiales OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 51090)
-- Name: solicitudes_materiales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_materiales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_materiales_id_seq OWNER TO postgres;

--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 208
-- Name: solicitudes_materiales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_materiales_id_seq OWNED BY public.solicitudes_materiales.id;


--
-- TOC entry 191 (class 1259 OID 50879)
-- Name: solicitudes_solicitudes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_solicitudes (
    id integer NOT NULL,
    fecha date NOT NULL,
    folio character varying(10) NOT NULL,
    post date NOT NULL,
    link character varying(200) NOT NULL,
    categoria_id integer NOT NULL,
    "fanPage_id" integer NOT NULL,
    gerente_id integer NOT NULL,
    tipo_id integer NOT NULL,
    zona_id integer NOT NULL
);


ALTER TABLE public.solicitudes_solicitudes OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 50877)
-- Name: solicitudes_solicitudes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_solicitudes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_solicitudes_id_seq OWNER TO postgres;

--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 190
-- Name: solicitudes_solicitudes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_solicitudes_id_seq OWNED BY public.solicitudes_solicitudes.id;


--
-- TOC entry 193 (class 1259 OID 50887)
-- Name: solicitudes_tipos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_tipos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.solicitudes_tipos OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 50885)
-- Name: solicitudes_tipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_tipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_tipos_id_seq OWNER TO postgres;

--
-- TOC entry 2260 (class 0 OID 0)
-- Dependencies: 192
-- Name: solicitudes_tipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_tipos_id_seq OWNED BY public.solicitudes_tipos.id;


--
-- TOC entry 195 (class 1259 OID 50895)
-- Name: solicitudes_zonas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.solicitudes_zonas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.solicitudes_zonas OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 50893)
-- Name: solicitudes_zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitudes_zonas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_zonas_id_seq OWNER TO postgres;

--
-- TOC entry 2261 (class 0 OID 0)
-- Dependencies: 194
-- Name: solicitudes_zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solicitudes_zonas_id_seq OWNED BY public.solicitudes_zonas.id;


--
-- TOC entry 199 (class 1259 OID 50978)
-- Name: usuarios_permisos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_permisos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codename character varying(50) NOT NULL
);


ALTER TABLE public.usuarios_permisos OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 50976)
-- Name: usuarios_permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_permisos_id_seq OWNER TO postgres;

--
-- TOC entry 2262 (class 0 OID 0)
-- Dependencies: 198
-- Name: usuarios_permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_permisos_id_seq OWNED BY public.usuarios_permisos.id;


--
-- TOC entry 201 (class 1259 OID 50986)
-- Name: usuarios_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_roles (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codename character varying(50) NOT NULL
);


ALTER TABLE public.usuarios_roles OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 50984)
-- Name: usuarios_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_roles_id_seq OWNER TO postgres;

--
-- TOC entry 2263 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuarios_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_roles_id_seq OWNED BY public.usuarios_roles.id;


--
-- TOC entry 203 (class 1259 OID 50994)
-- Name: usuarios_roles_permisos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_roles_permisos (
    id integer NOT NULL,
    roles_id integer NOT NULL,
    permisos_id integer NOT NULL
);


ALTER TABLE public.usuarios_roles_permisos OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 50992)
-- Name: usuarios_roles_permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_roles_permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_roles_permisos_id_seq OWNER TO postgres;

--
-- TOC entry 2264 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuarios_roles_permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_roles_permisos_id_seq OWNED BY public.usuarios_roles_permisos.id;


--
-- TOC entry 197 (class 1259 OID 50957)
-- Name: usuarios_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    rol_id integer
);


ALTER TABLE public.usuarios_user OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 50955)
-- Name: usuarios_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_user_id_seq OWNER TO postgres;

--
-- TOC entry 2265 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuarios_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_user_id_seq OWNED BY public.usuarios_user.id;


--
-- TOC entry 205 (class 1259 OID 51002)
-- Name: usuarios_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.usuarios_user_user_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 51000)
-- Name: usuarios_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2266 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuarios_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_user_user_permissions_id_seq OWNED BY public.usuarios_user_user_permissions.id;


--
-- TOC entry 207 (class 1259 OID 51010)
-- Name: usuarios_user_zonas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.usuarios_user_zonas (
    id integer NOT NULL,
    user_id integer NOT NULL,
    zonas_id integer NOT NULL
);


ALTER TABLE public.usuarios_user_zonas OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 51008)
-- Name: usuarios_user_zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_user_zonas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_user_zonas_id_seq OWNER TO postgres;

--
-- TOC entry 2267 (class 0 OID 0)
-- Dependencies: 206
-- Name: usuarios_user_zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_user_zonas_id_seq OWNED BY public.usuarios_user_zonas.id;


--
-- TOC entry 1992 (class 2604 OID 50783)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 1991 (class 2604 OID 50773)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 1990 (class 2604 OID 50762)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 1993 (class 2604 OID 50842)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_categorias ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_categorias_id_seq'::regclass);


--
-- TOC entry 1994 (class 2604 OID 50850)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_facturas ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_facturas_id_seq'::regclass);


--
-- TOC entry 1995 (class 2604 OID 50858)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_fanpages ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_fanpages_id_seq'::regclass);


--
-- TOC entry 1996 (class 2604 OID 50866)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_gerentes ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_gerentes_id_seq'::regclass);


--
-- TOC entry 1997 (class 2604 OID 50874)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_imagenes ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_imagenes_id_seq'::regclass);


--
-- TOC entry 2007 (class 2604 OID 51095)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_materiales ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_materiales_id_seq'::regclass);


--
-- TOC entry 1998 (class 2604 OID 50882)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_solicitudes_id_seq'::regclass);


--
-- TOC entry 1999 (class 2604 OID 50890)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_tipos ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_tipos_id_seq'::regclass);


--
-- TOC entry 2000 (class 2604 OID 50898)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_zonas ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_zonas_id_seq'::regclass);


--
-- TOC entry 2002 (class 2604 OID 50981)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_permisos ALTER COLUMN id SET DEFAULT nextval('public.usuarios_permisos_id_seq'::regclass);


--
-- TOC entry 2003 (class 2604 OID 50989)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles ALTER COLUMN id SET DEFAULT nextval('public.usuarios_roles_id_seq'::regclass);


--
-- TOC entry 2004 (class 2604 OID 50997)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles_permisos ALTER COLUMN id SET DEFAULT nextval('public.usuarios_roles_permisos_id_seq'::regclass);


--
-- TOC entry 2001 (class 2604 OID 50960)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_id_seq'::regclass);


--
-- TOC entry 2005 (class 2604 OID 51005)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2006 (class 2604 OID 51013)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_zonas ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_zonas_id_seq'::regclass);


--
-- TOC entry 2209 (class 0 OID 50780)
-- Dependencies: 178
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add content type', 3, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change content type', 3, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view content type', 3, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add session', 4, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change session', 4, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete session', 4, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view session', 4, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add tipos', 5, 'add_tipos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change tipos', 5, 'change_tipos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete tipos', 5, 'delete_tipos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view tipos', 5, 'view_tipos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add fan pages', 6, 'add_fanpages');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change fan pages', 6, 'change_fanpages');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete fan pages', 6, 'delete_fanpages');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view fan pages', 6, 'view_fanpages');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add solicitudes', 7, 'add_solicitudes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change solicitudes', 7, 'change_solicitudes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete solicitudes', 7, 'delete_solicitudes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view solicitudes', 7, 'view_solicitudes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add facturas', 8, 'add_facturas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change facturas', 8, 'change_facturas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete facturas', 8, 'delete_facturas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view facturas', 8, 'view_facturas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add zonas', 9, 'add_zonas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change zonas', 9, 'change_zonas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete zonas', 9, 'delete_zonas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view zonas', 9, 'view_zonas');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add gerentes', 10, 'add_gerentes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change gerentes', 10, 'change_gerentes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete gerentes', 10, 'delete_gerentes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view gerentes', 10, 'view_gerentes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add imagenes', 11, 'add_imagenes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change imagenes', 11, 'change_imagenes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete imagenes', 11, 'delete_imagenes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view imagenes', 11, 'view_imagenes');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add categorias', 12, 'add_categorias');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change categorias', 12, 'change_categorias');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete categorias', 12, 'delete_categorias');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view categorias', 12, 'view_categorias');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add permisos', 13, 'add_permisos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change permisos', 13, 'change_permisos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete permisos', 13, 'delete_permisos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view permisos', 13, 'view_permisos');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add roles', 15, 'add_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change roles', 15, 'change_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete roles', 15, 'delete_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view roles', 15, 'view_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add materiales', 16, 'add_materiales');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change materiales', 16, 'change_materiales');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete materiales', 16, 'delete_materiales');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view materiales', 16, 'view_materiales');


--
-- TOC entry 2268 (class 0 OID 0)
-- Dependencies: 177
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- TOC entry 2207 (class 0 OID 50770)
-- Dependencies: 176
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'solicitudes', 'tipos');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'solicitudes', 'fanpages');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'solicitudes', 'solicitudes');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'solicitudes', 'facturas');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'solicitudes', 'zonas');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'solicitudes', 'gerentes');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'solicitudes', 'imagenes');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'solicitudes', 'categorias');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'usuarios', 'permisos');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'usuarios', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'usuarios', 'roles');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'solicitudes', 'materiales');


--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 175
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- TOC entry 2205 (class 0 OID 50759)
-- Dependencies: 174
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2019-04-16 13:56:12.400995-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-04-16 13:56:12.491614-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2019-04-16 13:56:13.194117-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-04-16 13:56:13.217579-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-04-16 13:56:13.245038-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-04-16 13:56:13.276984-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-04-16 13:56:13.306936-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-04-16 13:56:13.322412-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-04-16 13:56:13.357854-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-04-16 13:56:13.390802-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-04-16 13:56:13.449209-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'sessions', '0001_initial', '2019-04-16 13:56:13.705799-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'solicitudes', '0001_initial', '2019-04-16 13:56:15.652492-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'usuarios', '0001_initial', '2019-04-16 13:56:17.414495-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'usuarios', '0002_auto_20190416_1605', '2019-04-16 16:06:05.063928-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'solicitudes', '0002_auto_20190416_2350', '2019-04-16 23:50:16.475748-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'solicitudes', '0003_materiales', '2019-04-17 08:17:52.278615-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'solicitudes', '0004_remove_facturas_solicitud', '2019-04-18 14:43:58.529653-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'solicitudes', '0005_auto_20190418_1447', '2019-04-18 14:47:22.265753-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'solicitudes', '0006_auto_20190418_1523', '2019-04-18 15:23:54.976138-05');


--
-- TOC entry 2270 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 2210 (class 0 OID 50827)
-- Dependencies: 179
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ojqoeqw9uojwqkfbgrw5p2wuhclz91xy', 'N2FhNGU5ZWMzZGNmMDZiMjQ3M2FlYzc3OTE0MTZmYWM4ODZhOTU4Zjp7fQ==', '2019-04-30 16:09:04.880533-05');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('81dj8h4rwbkojav5r9ey9umz8tvyzl21', 'ZWFhYTMwNTMxZWY2ZWZjY2UzOGI3NTE0M2M3NGQ0MDVlZDdmNzIxNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MGZhOGNiNTMzYTFmNTI3NWFmZGNhOTc4NDk4OGUzNjYwZTFiMWMyIn0=', '2019-05-02 13:05:19.876128-05');


--
-- TOC entry 2212 (class 0 OID 50839)
-- Dependencies: 181
-- Data for Name: solicitudes_categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (1, 'Solicitud específica');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (2, 'Martimiércoles');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (3, 'Chequeo de mercado');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (4, 'Panadería');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (5, 'Almacenes');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (6, 'Perecederos');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (7, 'Selecto');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (8, 'Vinos y licores');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (9, 'Comestibles');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (10, 'Carnes');
INSERT INTO public.solicitudes_categorias (id, nombre) VALUES (11, 'No comestibles');


--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 180
-- Name: solicitudes_categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_categorias_id_seq', 11, true);


--
-- TOC entry 2214 (class 0 OID 50847)
-- Dependencies: 183
-- Data for Name: solicitudes_facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 182
-- Name: solicitudes_facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_facturas_id_seq', 1, false);


--
-- TOC entry 2216 (class 0 OID 50855)
-- Dependencies: 185
-- Data for Name: solicitudes_fanpages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (1, 'Chetumal', 1);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (2, 'Campeche', 1);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (3, 'Yucatán', 4);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (4, 'Tabasco', 3);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (5, 'Tabasco', 2);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (6, 'Quintana Roo', 5);
INSERT INTO public.solicitudes_fanpages (id, nombre, zona_id) VALUES (7, 'Quintana Roo', 6);


--
-- TOC entry 2273 (class 0 OID 0)
-- Dependencies: 184
-- Name: solicitudes_fanpages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_fanpages_id_seq', 7, true);


--
-- TOC entry 2218 (class 0 OID 50863)
-- Dependencies: 187
-- Data for Name: solicitudes_gerentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_gerentes (id, nombre, zona_id) VALUES (1, 'Gerardo Pérez', 1);
INSERT INTO public.solicitudes_gerentes (id, nombre, zona_id) VALUES (2, 'José Balam', 1);


--
-- TOC entry 2274 (class 0 OID 0)
-- Dependencies: 186
-- Name: solicitudes_gerentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_gerentes_id_seq', 2, true);


--
-- TOC entry 2220 (class 0 OID 50871)
-- Dependencies: 189
-- Data for Name: solicitudes_imagenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (9, 'screens/Captura.JPG', 'Captura.JPG', 5);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (10, 'screens/kjhkj.JPG', 'kjhkj.JPG', 5);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (11, 'screens/Captura_C88aA3n.JPG', 'Captura.JPG', 6);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (12, 'screens/kjhkj_iatMmg2.JPG', 'kjhkj.JPG', 6);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (13, 'screens/scatobebd.JPG', 'scatobebd.JPG', 7);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (14, 'screens/kjhkj_YlA8Xhj.JPG', 'kjhkj.JPG', 8);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (15, 'screens/Captura_4ZILQrz.JPG', 'Captura.JPG', 9);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (16, 'screens/Captura_mnWtfZ0.JPG', 'Captura.JPG', 10);
INSERT INTO public.solicitudes_imagenes (id, imagen, nombre, solicitud_id) VALUES (17, 'screens/reer.JPG', 'reer.JPG', 11);


--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 188
-- Name: solicitudes_imagenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_imagenes_id_seq', 17, true);


--
-- TOC entry 2240 (class 0 OID 51092)
-- Dependencies: 209
-- Data for Name: solicitudes_materiales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (3, 'materiales/oración.pptx', 'oración.pptx', 5);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (4, 'materiales/usu_bien.txt', 'usu bien.txt', 5);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (5, 'materiales/Captura.JPG', 'Captura.JPG', 6);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (6, 'materiales/GitHubDesktop.exe', 'GitHubDesktop.exe', 6);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (7, 'materiales/Captura_m323sQ9.JPG', 'Captura.JPG', 7);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (8, 'materiales/oración_L0qj2HJ.pptx', 'oración.pptx', 8);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (9, 'materiales/kjhkj.JPG', 'kjhkj.JPG', 9);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (10, 'materiales/GitHubDesktop_E9LbHXR.exe', 'GitHubDesktop.exe', 10);
INSERT INTO public.solicitudes_materiales (id, material, nombre, solicitud_id) VALUES (11, 'materiales/oración_NWumcWg.pptx', 'oración.pptx', 11);


--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 208
-- Name: solicitudes_materiales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_materiales_id_seq', 11, true);


--
-- TOC entry 2222 (class 0 OID 50879)
-- Dependencies: 191
-- Data for Name: solicitudes_solicitudes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (1, '2019-04-16', 'kjjkjk', '2019-04-18', 'www.perro.com', 5, 4, 1, 2, 2);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (2, '2019-04-17', 'cghgfh', '2019-04-18', 'ghfghg.cmo', 6, 4, 1, 2, 1);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (3, '2019-04-17', 'nfgfh', '2019-04-24', 'www.google.com', 5, 3, 1, 2, 1);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (4, '2019-04-18', 'cghgfh', '2019-04-19', 'www.google.com', 5, 5, 2, 3, 1);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (5, '2019-04-17', 'ghjgh', '2019-04-19', 'sdfsdfdsf', 7, 2, 1, 3, 2);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (6, '2019-04-09', 'cfgfdg', '2019-04-18', 'dfgfdgfd', 5, 3, 2, 2, 2);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (7, '2019-04-25', 'dgjgj', '2019-04-11', 'www.ff.com', 5, 4, 2, 2, 2);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (8, '2019-04-08', 'fdgdfgf', '2019-04-10', 'www.perro.com', 6, 4, 2, 2, 4);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (9, '2019-04-18', 'cghgfh', '2019-04-19', 'www.perro.com', 3, 1, 1, 2, 1);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (10, '2019-04-09', 'fdgdfgf', '2019-04-18', 'sdfsdfdsf', 4, 1, 1, 3, 1);
INSERT INTO public.solicitudes_solicitudes (id, fecha, folio, post, link, categoria_id, "fanPage_id", gerente_id, tipo_id, zona_id) VALUES (11, '2019-04-17', 'fdgdfgf', '2019-04-19', 'dfgfdgfd', 3, 2, 2, 1, 1);


--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 190
-- Name: solicitudes_solicitudes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_solicitudes_id_seq', 11, true);


--
-- TOC entry 2224 (class 0 OID 50887)
-- Dependencies: 193
-- Data for Name: solicitudes_tipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_tipos (id, nombre) VALUES (1, 'Local');
INSERT INTO public.solicitudes_tipos (id, nombre) VALUES (2, 'Regional');
INSERT INTO public.solicitudes_tipos (id, nombre) VALUES (3, 'Especial');
INSERT INTO public.solicitudes_tipos (id, nombre) VALUES (4, 'Orgánica');


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 192
-- Name: solicitudes_tipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_tipos_id_seq', 4, true);


--
-- TOC entry 2226 (class 0 OID 50895)
-- Dependencies: 195
-- Data for Name: solicitudes_zonas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (1, 'Campeche');
INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (2, 'Tabasco');
INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (3, 'Villahermosa');
INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (4, 'Mérida');
INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (5, 'Cancún');
INSERT INTO public.solicitudes_zonas (id, nombre) VALUES (6, 'Riviera');


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 194
-- Name: solicitudes_zonas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitudes_zonas_id_seq', 6, true);


--
-- TOC entry 2230 (class 0 OID 50978)
-- Dependencies: 199
-- Data for Name: usuarios_permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_permisos (id, nombre, codename) VALUES (1, 'Agregar solicitudes', 'agregar_solicitud');


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 198
-- Name: usuarios_permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_permisos_id_seq', 1, true);


--
-- TOC entry 2232 (class 0 OID 50986)
-- Dependencies: 201
-- Data for Name: usuarios_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_roles (id, nombre, codename) VALUES (1, 'Administrador', 'admin');
INSERT INTO public.usuarios_roles (id, nombre, codename) VALUES (2, 'Chedraui general', 'ch_gral');
INSERT INTO public.usuarios_roles (id, nombre, codename) VALUES (3, 'Chedraui zona', 'ch_zona');


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuarios_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_roles_id_seq', 3, true);


--
-- TOC entry 2234 (class 0 OID 50994)
-- Dependencies: 203
-- Data for Name: usuarios_roles_permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuarios_roles_permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_roles_permisos_id_seq', 1, false);


--
-- TOC entry 2228 (class 0 OID 50957)
-- Dependencies: 197
-- Data for Name: usuarios_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, rol_id) VALUES (9, 'pbkdf2_sha256$120000$uv3fXlNKTXLF$REGGnf7QN6RdCv43G8NcFpu3LSHw+j5zF00aX/vMOgA=', '2019-04-16 18:54:13.587105-05', false, 'pancho', 'pancho', 'pepa', 'pancho@pancho.com', false, true, '2019-04-16 18:54:01.060607-05', 3);
INSERT INTO public.usuarios_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, rol_id) VALUES (8, 'pbkdf2_sha256$120000$iQP3WBE7Sitd$zmk9rX05VnIOL0RLa1fpCsLUkXOsKVhifFwI0tEtSAQ=', '2019-04-18 13:05:05.073137-05', false, 'jona', 'jona', 'orla', 'jona@jo.com', false, true, '2019-04-16 17:43:13.302973-05', 2);
INSERT INTO public.usuarios_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, rol_id) VALUES (2, 'pbkdf2_sha256$120000$ZHvrPf9DGGXl$1YrzCPIWLQdZDtBKBi02GGMU3g/XbrPEQ2nEhaEzNDg=', '2019-04-18 13:05:19.866145-05', true, 'admin', '', '', 'admin@admin.com', true, true, '2019-04-16 16:07:33.352694-05', 1);


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuarios_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_user_id_seq', 9, true);


--
-- TOC entry 2236 (class 0 OID 51002)
-- Dependencies: 205
-- Data for Name: usuarios_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuarios_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2238 (class 0 OID 51010)
-- Dependencies: 207
-- Data for Name: usuarios_user_zonas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_user_zonas (id, user_id, zonas_id) VALUES (4, 8, 1);
INSERT INTO public.usuarios_user_zonas (id, user_id, zonas_id) VALUES (7, 9, 3);


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 206
-- Name: usuarios_user_zonas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_user_zonas_id_seq', 7, true);


--
-- TOC entry 2016 (class 2606 OID 50810)
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2018 (class 2606 OID 50785)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2011 (class 2606 OID 50777)
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2013 (class 2606 OID 50775)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2009 (class 2606 OID 50767)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2021 (class 2606 OID 50834)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2024 (class 2606 OID 50844)
-- Name: solicitudes_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_categorias
    ADD CONSTRAINT solicitudes_categorias_pkey PRIMARY KEY (id);


--
-- TOC entry 2026 (class 2606 OID 50852)
-- Name: solicitudes_facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_facturas
    ADD CONSTRAINT solicitudes_facturas_pkey PRIMARY KEY (id);


--
-- TOC entry 2028 (class 2606 OID 50860)
-- Name: solicitudes_fanpages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_fanpages
    ADD CONSTRAINT solicitudes_fanpages_pkey PRIMARY KEY (id);


--
-- TOC entry 2031 (class 2606 OID 50868)
-- Name: solicitudes_gerentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_gerentes
    ADD CONSTRAINT solicitudes_gerentes_pkey PRIMARY KEY (id);


--
-- TOC entry 2034 (class 2606 OID 50876)
-- Name: solicitudes_imagenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_imagenes
    ADD CONSTRAINT solicitudes_imagenes_pkey PRIMARY KEY (id);


--
-- TOC entry 2076 (class 2606 OID 51097)
-- Name: solicitudes_materiales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_materiales
    ADD CONSTRAINT solicitudes_materiales_pkey PRIMARY KEY (id);


--
-- TOC entry 2040 (class 2606 OID 50884)
-- Name: solicitudes_solicitudes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT solicitudes_solicitudes_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 2606 OID 50892)
-- Name: solicitudes_tipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_tipos
    ADD CONSTRAINT solicitudes_tipos_pkey PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 50900)
-- Name: solicitudes_zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.solicitudes_zonas
    ADD CONSTRAINT solicitudes_zonas_pkey PRIMARY KEY (id);


--
-- TOC entry 2054 (class 2606 OID 50983)
-- Name: usuarios_permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_permisos
    ADD CONSTRAINT usuarios_permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 2059 (class 2606 OID 50999)
-- Name: usuarios_roles_permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_roles_permisos
    ADD CONSTRAINT usuarios_roles_permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 2062 (class 2606 OID 51042)
-- Name: usuarios_roles_permisos_roles_id_permisos_id_8f8708fb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_roles_permisos
    ADD CONSTRAINT usuarios_roles_permisos_roles_id_permisos_id_8f8708fb_uniq UNIQUE (roles_id, permisos_id);


--
-- TOC entry 2056 (class 2606 OID 50991)
-- Name: usuarios_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_roles
    ADD CONSTRAINT usuarios_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2048 (class 2606 OID 50965)
-- Name: usuarios_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2064 (class 2606 OID 51062)
-- Name: usuarios_user_user_permi_user_id_permission_id_801d2da9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_permi_user_id_permission_id_801d2da9_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2067 (class 2606 OID 51007)
-- Name: usuarios_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 50967)
-- Name: usuarios_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_username_key UNIQUE (username);


--
-- TOC entry 2070 (class 2606 OID 51015)
-- Name: usuarios_user_zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user_zonas
    ADD CONSTRAINT usuarios_user_zonas_pkey PRIMARY KEY (id);


--
-- TOC entry 2073 (class 2606 OID 51076)
-- Name: usuarios_user_zonas_user_id_zonas_id_edae0aff_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.usuarios_user_zonas
    ADD CONSTRAINT usuarios_user_zonas_user_id_zonas_id_edae0aff_uniq UNIQUE (user_id, zonas_id);


--
-- TOC entry 2014 (class 1259 OID 50811)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2019 (class 1259 OID 50836)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2022 (class 1259 OID 50835)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2029 (class 1259 OID 50943)
-- Name: solicitudes_fanpages_zona_id_186cc400; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_fanpages_zona_id_186cc400 ON public.solicitudes_fanpages USING btree (zona_id);


--
-- TOC entry 2032 (class 1259 OID 50937)
-- Name: solicitudes_gerentes_zona_id_b4d17604; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_gerentes_zona_id_b4d17604 ON public.solicitudes_gerentes USING btree (zona_id);


--
-- TOC entry 2035 (class 1259 OID 50931)
-- Name: solicitudes_imagenes_solicitud_id_5da95133; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_imagenes_solicitud_id_5da95133 ON public.solicitudes_imagenes USING btree (solicitud_id);


--
-- TOC entry 2077 (class 1259 OID 51103)
-- Name: solicitudes_materiales_solicitud_id_2baa5aa9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_materiales_solicitud_id_2baa5aa9 ON public.solicitudes_materiales USING btree (solicitud_id);


--
-- TOC entry 2036 (class 1259 OID 50916)
-- Name: solicitudes_solicitudes_categoria_id_2e13d0e9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_solicitudes_categoria_id_2e13d0e9 ON public.solicitudes_solicitudes USING btree (categoria_id);


--
-- TOC entry 2037 (class 1259 OID 50917)
-- Name: solicitudes_solicitudes_fanPage_id_1f6e1353; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "solicitudes_solicitudes_fanPage_id_1f6e1353" ON public.solicitudes_solicitudes USING btree ("fanPage_id");


--
-- TOC entry 2038 (class 1259 OID 50918)
-- Name: solicitudes_solicitudes_gerente_id_ef338f52; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_solicitudes_gerente_id_ef338f52 ON public.solicitudes_solicitudes USING btree (gerente_id);


--
-- TOC entry 2041 (class 1259 OID 50919)
-- Name: solicitudes_solicitudes_tipo_id_17612a40; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_solicitudes_tipo_id_17612a40 ON public.solicitudes_solicitudes USING btree (tipo_id);


--
-- TOC entry 2042 (class 1259 OID 50925)
-- Name: solicitudes_solicitudes_zona_id_e0b2df70; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX solicitudes_solicitudes_zona_id_e0b2df70 ON public.solicitudes_solicitudes USING btree (zona_id);


--
-- TOC entry 2057 (class 1259 OID 51044)
-- Name: usuarios_roles_permisos_permisos_id_cce1547d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_roles_permisos_permisos_id_cce1547d ON public.usuarios_roles_permisos USING btree (permisos_id);


--
-- TOC entry 2060 (class 1259 OID 51043)
-- Name: usuarios_roles_permisos_roles_id_11a3e38c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_roles_permisos_roles_id_11a3e38c ON public.usuarios_roles_permisos USING btree (roles_id);


--
-- TOC entry 2049 (class 1259 OID 51045)
-- Name: usuarios_user_rol_id_fa398025; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_rol_id_fa398025 ON public.usuarios_user USING btree (rol_id);


--
-- TOC entry 2065 (class 1259 OID 51064)
-- Name: usuarios_user_user_permissions_permission_id_32dd035e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_user_permissions_permission_id_32dd035e ON public.usuarios_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2068 (class 1259 OID 51063)
-- Name: usuarios_user_user_permissions_user_id_6770e840; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_user_permissions_user_id_6770e840 ON public.usuarios_user_user_permissions USING btree (user_id);


--
-- TOC entry 2050 (class 1259 OID 51016)
-- Name: usuarios_user_username_5ab4f1db_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_username_5ab4f1db_like ON public.usuarios_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2071 (class 1259 OID 51077)
-- Name: usuarios_user_zonas_user_id_727de491; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_zonas_user_id_727de491 ON public.usuarios_user_zonas USING btree (user_id);


--
-- TOC entry 2074 (class 1259 OID 51078)
-- Name: usuarios_user_zonas_zonas_id_3907d501; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX usuarios_user_zonas_zonas_id_3907d501 ON public.usuarios_user_zonas USING btree (zonas_id);


--
-- TOC entry 2078 (class 2606 OID 50804)
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2079 (class 2606 OID 50944)
-- Name: solicitudes_fanpages_zona_id_186cc400_fk_solicitudes_zonas_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_fanpages
    ADD CONSTRAINT solicitudes_fanpages_zona_id_186cc400_fk_solicitudes_zonas_id FOREIGN KEY (zona_id) REFERENCES public.solicitudes_zonas(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2080 (class 2606 OID 50938)
-- Name: solicitudes_gerentes_zona_id_b4d17604_fk_solicitudes_zonas_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_gerentes
    ADD CONSTRAINT solicitudes_gerentes_zona_id_b4d17604_fk_solicitudes_zonas_id FOREIGN KEY (zona_id) REFERENCES public.solicitudes_zonas(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2081 (class 2606 OID 50932)
-- Name: solicitudes_imagenes_solicitud_id_5da95133_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_imagenes
    ADD CONSTRAINT solicitudes_imagenes_solicitud_id_5da95133_fk_solicitud FOREIGN KEY (solicitud_id) REFERENCES public.solicitudes_solicitudes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2094 (class 2606 OID 51098)
-- Name: solicitudes_material_solicitud_id_2baa5aa9_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_materiales
    ADD CONSTRAINT solicitudes_material_solicitud_id_2baa5aa9_fk_solicitud FOREIGN KEY (solicitud_id) REFERENCES public.solicitudes_solicitudes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2082 (class 2606 OID 50901)
-- Name: solicitudes_solicitu_categoria_id_2e13d0e9_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT solicitudes_solicitu_categoria_id_2e13d0e9_fk_solicitud FOREIGN KEY (categoria_id) REFERENCES public.solicitudes_categorias(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2083 (class 2606 OID 50906)
-- Name: solicitudes_solicitu_fanPage_id_1f6e1353_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT "solicitudes_solicitu_fanPage_id_1f6e1353_fk_solicitud" FOREIGN KEY ("fanPage_id") REFERENCES public.solicitudes_fanpages(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2084 (class 2606 OID 50911)
-- Name: solicitudes_solicitu_gerente_id_ef338f52_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT solicitudes_solicitu_gerente_id_ef338f52_fk_solicitud FOREIGN KEY (gerente_id) REFERENCES public.solicitudes_gerentes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2085 (class 2606 OID 50920)
-- Name: solicitudes_solicitu_tipo_id_17612a40_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT solicitudes_solicitu_tipo_id_17612a40_fk_solicitud FOREIGN KEY (tipo_id) REFERENCES public.solicitudes_tipos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2086 (class 2606 OID 51085)
-- Name: solicitudes_solicitu_zona_id_e0b2df70_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitudes_solicitudes
    ADD CONSTRAINT solicitudes_solicitu_zona_id_e0b2df70_fk_solicitud FOREIGN KEY (zona_id) REFERENCES public.solicitudes_zonas(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2089 (class 2606 OID 51036)
-- Name: usuarios_roles_permi_permisos_id_cce1547d_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles_permisos
    ADD CONSTRAINT usuarios_roles_permi_permisos_id_cce1547d_fk_usuarios_ FOREIGN KEY (permisos_id) REFERENCES public.usuarios_permisos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2088 (class 2606 OID 51031)
-- Name: usuarios_roles_permisos_roles_id_11a3e38c_fk_usuarios_roles_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles_permisos
    ADD CONSTRAINT usuarios_roles_permisos_roles_id_11a3e38c_fk_usuarios_roles_id FOREIGN KEY (roles_id) REFERENCES public.usuarios_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2087 (class 2606 OID 51080)
-- Name: usuarios_user_rol_id_fa398025_fk_usuarios_roles_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_rol_id_fa398025_fk_usuarios_roles_id FOREIGN KEY (rol_id) REFERENCES public.usuarios_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2091 (class 2606 OID 51056)
-- Name: usuarios_user_user_p_permission_id_32dd035e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_p_permission_id_32dd035e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2090 (class 2606 OID 51051)
-- Name: usuarios_user_user_p_user_id_6770e840_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_p_user_id_6770e840_fk_usuarios_ FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2092 (class 2606 OID 51065)
-- Name: usuarios_user_zonas_user_id_727de491_fk_usuarios_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_zonas
    ADD CONSTRAINT usuarios_user_zonas_user_id_727de491_fk_usuarios_user_id FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2093 (class 2606 OID 51070)
-- Name: usuarios_user_zonas_zonas_id_3907d501_fk_solicitudes_zonas_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user_zonas
    ADD CONSTRAINT usuarios_user_zonas_zonas_id_3907d501_fk_solicitudes_zonas_id FOREIGN KEY (zonas_id) REFERENCES public.solicitudes_zonas(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-04-18 15:41:42

--
-- PostgreSQL database dump complete
--

