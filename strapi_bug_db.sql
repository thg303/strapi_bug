--
-- PostgreSQL database dump
--

-- Dumped from database version 10.11 (Debian 10.11-1.pgdg90+1)
-- Dumped by pg_dump version 10.11 (Debian 10.11-1.pgdg90+1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: long_enough_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.long_enough_names (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.long_enough_names OWNER TO postgres;

--
-- Name: long_enough_names_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.long_enough_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.long_enough_names_id_seq OWNER TO postgres;

--
-- Name: long_enough_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.long_enough_names_id_seq OWNED BY public.long_enough_names.id;


--
-- Name: long_enough_names_yet_another_names__yet_another_names_long_eno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.long_enough_names_yet_another_names__yet_another_names_long_eno (
    id integer NOT NULL,
    "yet-another-name_id" integer,
    "long-enough-name_id" integer
);


ALTER TABLE public.long_enough_names_yet_another_names__yet_another_names_long_eno OWNER TO postgres;

--
-- Name: long_enough_names_yet_another_names__yet_another_names_l_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.long_enough_names_yet_another_names__yet_another_names_l_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.long_enough_names_yet_another_names__yet_another_names_l_id_seq OWNER TO postgres;

--
-- Name: long_enough_names_yet_another_names__yet_another_names_l_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.long_enough_names_yet_another_names__yet_another_names_l_id_seq OWNED BY public.long_enough_names_yet_another_names__yet_another_names_long_eno.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: yet_another_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yet_another_names (
    id integer NOT NULL,
    title character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.yet_another_names OWNER TO postgres;

--
-- Name: yet_another_names_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.yet_another_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yet_another_names_id_seq OWNER TO postgres;

--
-- Name: yet_another_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.yet_another_names_id_seq OWNED BY public.yet_another_names.id;


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: long_enough_names id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.long_enough_names ALTER COLUMN id SET DEFAULT nextval('public.long_enough_names_id_seq'::regclass);


--
-- Name: long_enough_names_yet_another_names__yet_another_names_long_eno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.long_enough_names_yet_another_names__yet_another_names_long_eno ALTER COLUMN id SET DEFAULT nextval('public.long_enough_names_yet_another_names__yet_another_names_l_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Name: yet_another_names id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yet_another_names ALTER COLUMN id SET DEFAULT nextval('public.yet_another_names_id_seq'::regclass);


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
10	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]}}	object		
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
12	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}	object		
13	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}	object		
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
17	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
18	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
21	model_def_application::long-enough-name.long-enough-name	{"uid":"application::long-enough-name.long-enough-name","collectionName":"long_enough_names","kind":"collectionType","info":{"name":"long_enough_name"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"yet_another_names":{"via":"long_enough_names","collection":"yet-another-name","attribute":"yet-another-name","column":"id","isVirtual":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}}	object	\N	\N
23	model_def_application::yet-another-name.yet-another-name	{"uid":"application::yet-another-name.yet-another-name","collectionName":"yet_another_names","kind":"collectionType","info":{"name":"yet_another_name","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string"},"long_enough_names":{"collection":"long-enough-name","via":"yet_another_names","dominant":true,"attribute":"long-enough-name","column":"id","isVirtual":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::application::yet-another-name.yet-another-name	{"uid":"application::yet-another-name.yet-another-name","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"long_enough_names":{"edit":{"label":"Long_enough_names","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Long_enough_names","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","published_at","created_at"],"edit":[[{"name":"title","size":6}]],"editRelations":["long_enough_names"]}}	object		
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::application::long-enough-name.long-enough-name	{"uid":"application::long-enough-name.long-enough-name","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"yet_another_names":{"edit":{"label":"Yet_another_names","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Yet_another_names","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","published_at","created_at"],"edit":[[{"name":"name","size":6}]],"editRelations":["yet_another_names"]}}	object		
\.


--
-- Data for Name: long_enough_names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.long_enough_names (id, name, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: long_enough_names_yet_another_names__yet_another_names_long_eno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.long_enough_names_yet_another_names__yet_another_names_long_eno (id, "yet-another-name_id", "long-enough-name_id") FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
1	test	example	\N	test@example.com	$2a$10$Ml2r0Ke2vnTpwz/McgZdWeONbCriOA/EWqsc4tzLLxM2cclOmgKXe	\N	\N	t	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	\N	[]	2	2021-01-23 19:41:43.001+03:30	2021-01-23 19:41:43.011+03:30
2	plugins::upload.assets.create	\N	\N	[]	2	2021-01-23 19:41:43.002+03:30	2021-01-23 19:41:43.012+03:30
3	plugins::upload.assets.update	\N	\N	[]	2	2021-01-23 19:41:43.002+03:30	2021-01-23 19:41:43.012+03:30
4	plugins::upload.assets.download	\N	\N	[]	2	2021-01-23 19:41:43.002+03:30	2021-01-23 19:41:43.012+03:30
5	plugins::upload.assets.copy-link	\N	\N	[]	2	2021-01-23 19:41:43.002+03:30	2021-01-23 19:41:43.015+03:30
6	plugins::upload.read	\N	\N	["admin::is-creator"]	3	2021-01-23 19:41:43.031+03:30	2021-01-23 19:41:43.041+03:30
7	plugins::upload.assets.create	\N	\N	[]	3	2021-01-23 19:41:43.031+03:30	2021-01-23 19:41:43.042+03:30
8	plugins::upload.assets.update	\N	\N	["admin::is-creator"]	3	2021-01-23 19:41:43.031+03:30	2021-01-23 19:41:43.042+03:30
9	plugins::upload.assets.download	\N	\N	[]	3	2021-01-23 19:41:43.031+03:30	2021-01-23 19:41:43.042+03:30
10	plugins::upload.assets.copy-link	\N	\N	[]	3	2021-01-23 19:41:43.032+03:30	2021-01-23 19:41:43.042+03:30
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-23 19:41:43.075+03:30	2021-01-23 19:41:43.095+03:30
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-23 19:41:43.076+03:30	2021-01-23 19:41:43.095+03:30
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.095+03:30
14	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.095+03:30
15	plugins::content-type-builder.read	\N	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.096+03:30
16	plugins::upload.read	\N	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.096+03:30
17	plugins::upload.assets.create	\N	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.096+03:30
18	plugins::upload.assets.update	\N	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.096+03:30
19	plugins::upload.assets.download	\N	\N	[]	1	2021-01-23 19:41:43.077+03:30	2021-01-23 19:41:43.096+03:30
20	plugins::upload.assets.copy-link	\N	\N	[]	1	2021-01-23 19:41:43.078+03:30	2021-01-23 19:41:43.096+03:30
21	plugins::upload.settings.read	\N	\N	[]	1	2021-01-23 19:41:43.123+03:30	2021-01-23 19:41:43.142+03:30
22	plugins::content-manager.single-types.configure-view	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
23	plugins::content-manager.collection-types.configure-view	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
24	plugins::content-manager.components.configure-layout	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
25	plugins::users-permissions.roles.create	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
26	plugins::users-permissions.roles.read	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
27	plugins::users-permissions.roles.update	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
28	plugins::users-permissions.roles.delete	\N	\N	[]	1	2021-01-23 19:41:43.127+03:30	2021-01-23 19:41:43.148+03:30
29	plugins::users-permissions.providers.read	\N	\N	[]	1	2021-01-23 19:41:43.128+03:30	2021-01-23 19:41:43.149+03:30
30	plugins::users-permissions.providers.update	\N	\N	[]	1	2021-01-23 19:41:43.134+03:30	2021-01-23 19:41:43.154+03:30
31	plugins::users-permissions.email-templates.read	\N	\N	[]	1	2021-01-23 19:41:43.176+03:30	2021-01-23 19:41:43.193+03:30
32	plugins::users-permissions.email-templates.update	\N	\N	[]	1	2021-01-23 19:41:43.18+03:30	2021-01-23 19:41:43.198+03:30
33	plugins::users-permissions.advanced-settings.read	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.202+03:30
34	plugins::users-permissions.advanced-settings.update	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.202+03:30
35	admin::marketplace.read	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.202+03:30
49	admin::roles.delete	\N	\N	[]	1	2021-01-23 19:41:43.238+03:30	2021-01-23 19:41:43.254+03:30
36	admin::marketplace.plugins.install	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.203+03:30
48	admin::roles.update	\N	\N	[]	1	2021-01-23 19:41:43.237+03:30	2021-01-23 19:41:43.253+03:30
37	admin::marketplace.plugins.uninstall	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.203+03:30
46	admin::roles.create	\N	\N	[]	1	2021-01-23 19:41:43.237+03:30	2021-01-23 19:41:43.253+03:30
38	admin::webhooks.create	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.203+03:30
44	admin::users.update	\N	\N	[]	1	2021-01-23 19:41:43.237+03:30	2021-01-23 19:41:43.253+03:30
39	admin::webhooks.read	\N	\N	[]	1	2021-01-23 19:41:43.182+03:30	2021-01-23 19:41:43.203+03:30
47	admin::roles.read	\N	\N	[]	1	2021-01-23 19:41:43.237+03:30	2021-01-23 19:41:43.253+03:30
40	admin::webhooks.update	\N	\N	[]	1	2021-01-23 19:41:43.188+03:30	2021-01-23 19:41:43.208+03:30
41	admin::webhooks.delete	\N	\N	[]	1	2021-01-23 19:41:43.23+03:30	2021-01-23 19:41:43.246+03:30
42	admin::users.create	\N	\N	[]	1	2021-01-23 19:41:43.233+03:30	2021-01-23 19:41:43.25+03:30
43	admin::users.read	\N	\N	[]	1	2021-01-23 19:41:43.236+03:30	2021-01-23 19:41:43.253+03:30
45	admin::users.delete	\N	\N	[]	1	2021-01-23 19:41:43.237+03:30	2021-01-23 19:41:43.253+03:30
53	plugins::content-manager.explorer.delete	application::long-enough-name.long-enough-name	\N	[]	1	2021-01-23 19:46:21.657+03:30	2021-01-23 19:46:21.671+03:30
54	plugins::content-manager.explorer.publish	application::long-enough-name.long-enough-name	\N	[]	1	2021-01-23 19:46:21.657+03:30	2021-01-23 19:46:21.672+03:30
58	plugins::content-manager.explorer.delete	application::yet-another-name.yet-another-name	\N	[]	1	2021-01-23 19:47:02.483+03:30	2021-01-23 19:47:02.526+03:30
59	plugins::content-manager.explorer.publish	application::yet-another-name.yet-another-name	\N	[]	1	2021-01-23 19:47:02.484+03:30	2021-01-23 19:47:02.535+03:30
60	plugins::content-manager.explorer.create	application::long-enough-name.long-enough-name	["name", "yet_another_names"]	[]	1	2021-01-23 19:48:31.563+03:30	2021-01-23 19:48:31.604+03:30
61	plugins::content-manager.explorer.create	application::yet-another-name.yet-another-name	["title", "long_enough_names"]	[]	1	2021-01-23 19:48:31.563+03:30	2021-01-23 19:48:31.604+03:30
62	plugins::content-manager.explorer.read	application::long-enough-name.long-enough-name	["name", "yet_another_names"]	[]	1	2021-01-23 19:48:31.563+03:30	2021-01-23 19:48:31.605+03:30
63	plugins::content-manager.explorer.read	application::yet-another-name.yet-another-name	["title", "long_enough_names"]	[]	1	2021-01-23 19:48:31.564+03:30	2021-01-23 19:48:31.605+03:30
64	plugins::content-manager.explorer.update	application::long-enough-name.long-enough-name	["name", "yet_another_names"]	[]	1	2021-01-23 19:48:31.565+03:30	2021-01-23 19:48:31.605+03:30
65	plugins::content-manager.explorer.update	application::yet-another-name.yet-another-name	["title", "long_enough_names"]	[]	1	2021-01-23 19:48:31.565+03:30	2021-01-23 19:48:31.611+03:30
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-01-23 19:41:42.966+03:30	2021-01-23 19:41:42.966+03:30
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-01-23 19:41:42.98+03:30	2021-01-23 19:41:42.98+03:30
3	Author	strapi-author	Authors can manage the content they have created.	2021-01-23 19:41:42.99+03:30	2021-01-23 19:41:42.99+03:30
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
7	content-manager	collection-types	find	f		1	\N	\N
8	content-manager	collection-types	find	f		2	\N	\N
9	content-manager	collection-types	findone	f		1	\N	\N
10	content-manager	collection-types	findone	f		2	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
29	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
30	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
31	content-manager	relations	find	f		1	\N	\N
32	content-manager	relations	find	f		2	\N	\N
33	content-manager	single-types	createorupdate	f		1	\N	\N
34	content-manager	single-types	createorupdate	f		2	\N	\N
35	content-manager	single-types	delete	f		1	\N	\N
36	content-manager	single-types	delete	f		2	\N	\N
37	content-manager	single-types	find	f		1	\N	\N
38	content-manager	single-types	find	f		2	\N	\N
39	content-manager	single-types	publish	f		1	\N	\N
40	content-manager	single-types	publish	f		2	\N	\N
41	content-manager	single-types	unpublish	f		1	\N	\N
42	content-manager	single-types	unpublish	f		2	\N	\N
43	content-manager	uid	checkuidavailability	f		1	\N	\N
44	content-manager	uid	checkuidavailability	f		2	\N	\N
45	content-manager	uid	generateuid	f		1	\N	\N
46	content-manager	uid	generateuid	f		2	\N	\N
47	content-type-builder	builder	getreservednames	f		1	\N	\N
48	content-type-builder	builder	getreservednames	f		2	\N	\N
49	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
50	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
51	content-type-builder	componentcategories	editcategory	f		1	\N	\N
52	content-type-builder	componentcategories	editcategory	f		2	\N	\N
53	content-type-builder	components	createcomponent	f		1	\N	\N
54	content-type-builder	components	createcomponent	f		2	\N	\N
55	content-type-builder	components	deletecomponent	f		1	\N	\N
56	content-type-builder	components	deletecomponent	f		2	\N	\N
57	content-type-builder	components	getcomponent	f		1	\N	\N
58	content-type-builder	components	getcomponent	f		2	\N	\N
59	content-type-builder	components	getcomponents	f		1	\N	\N
60	content-type-builder	components	getcomponents	f		2	\N	\N
61	content-type-builder	components	updatecomponent	f		1	\N	\N
62	content-type-builder	components	updatecomponent	f		2	\N	\N
63	content-type-builder	connections	getconnections	f		1	\N	\N
64	content-type-builder	connections	getconnections	f		2	\N	\N
65	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
66	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
67	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
68	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
69	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
70	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
71	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
72	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
73	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
74	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
79	upload	upload	destroy	f		1	\N	\N
80	upload	upload	destroy	f		2	\N	\N
155	application	long-enough-name	count	f		1	\N	\N
81	upload	upload	find	f		1	\N	\N
82	upload	upload	find	f		2	\N	\N
165	application	long-enough-name	update	f		1	\N	\N
168	application	yet-another-name	count	f		2	\N	\N
178	application	yet-another-name	update	f		2	\N	\N
75	email	email	send	f		1	\N	\N
88	upload	upload	search	f		2	\N	\N
94	users-permissions	auth	callback	t		2	\N	\N
108	users-permissions	user	count	f		2	\N	\N
115	users-permissions	user	find	f		1	\N	\N
128	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
134	users-permissions	userspermissions	getpolicies	f		2	\N	\N
146	users-permissions	userspermissions	searchusers	f		2	\N	\N
154	users-permissions	userspermissions	updaterole	f		2	\N	\N
156	application	long-enough-name	count	f		2	\N	\N
169	application	yet-another-name	create	f		1	\N	\N
76	email	email	send	f		2	\N	\N
87	upload	upload	search	f		1	\N	\N
96	users-permissions	auth	connect	t		2	\N	\N
107	users-permissions	user	count	f		1	\N	\N
118	users-permissions	user	findone	f		2	\N	\N
125	users-permissions	userspermissions	deleterole	f		1	\N	\N
133	users-permissions	userspermissions	getpolicies	f		1	\N	\N
144	users-permissions	userspermissions	index	f		2	\N	\N
157	application	long-enough-name	create	f		1	\N	\N
170	application	yet-another-name	create	f		2	\N	\N
77	upload	upload	count	f		1	\N	\N
85	upload	upload	getsettings	f		1	\N	\N
98	users-permissions	auth	emailconfirmation	t		2	\N	\N
105	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
116	users-permissions	user	find	f		2	\N	\N
127	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
136	users-permissions	userspermissions	getproviders	f		2	\N	\N
148	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
158	application	long-enough-name	create	f		2	\N	\N
171	application	yet-another-name	delete	f		1	\N	\N
78	upload	upload	count	f		2	\N	\N
84	upload	upload	findone	f		2	\N	\N
95	users-permissions	auth	connect	t		1	\N	\N
104	users-permissions	auth	resetpassword	t		2	\N	\N
117	users-permissions	user	findone	f		1	\N	\N
124	users-permissions	userspermissions	createrole	f		2	\N	\N
138	users-permissions	userspermissions	getrole	f		2	\N	\N
147	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
153	users-permissions	userspermissions	updaterole	f		1	\N	\N
159	application	long-enough-name	delete	f		1	\N	\N
172	application	yet-another-name	delete	f		2	\N	\N
83	upload	upload	findone	f		1	\N	\N
93	users-permissions	auth	callback	f		1	\N	\N
103	users-permissions	auth	resetpassword	f		1	\N	\N
113	users-permissions	user	destroyall	f		1	\N	\N
123	users-permissions	userspermissions	createrole	f		1	\N	\N
135	users-permissions	userspermissions	getproviders	f		1	\N	\N
143	users-permissions	userspermissions	index	f		1	\N	\N
160	application	long-enough-name	delete	f		2	\N	\N
173	application	yet-another-name	find	f		1	\N	\N
86	upload	upload	getsettings	f		2	\N	\N
97	users-permissions	auth	emailconfirmation	f		1	\N	\N
106	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
114	users-permissions	user	destroyall	f		2	\N	\N
126	users-permissions	userspermissions	deleterole	f		2	\N	\N
137	users-permissions	userspermissions	getrole	f		1	\N	\N
145	users-permissions	userspermissions	searchusers	f		1	\N	\N
161	application	long-enough-name	find	f		1	\N	\N
174	application	yet-another-name	find	f		2	\N	\N
89	upload	upload	updatesettings	f		1	\N	\N
99	users-permissions	auth	forgotpassword	f		1	\N	\N
109	users-permissions	user	create	f		1	\N	\N
119	users-permissions	user	me	t		1	\N	\N
129	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
139	users-permissions	userspermissions	getroles	f		1	\N	\N
149	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
162	application	long-enough-name	find	f		2	\N	\N
166	application	long-enough-name	update	f		2	\N	\N
175	application	yet-another-name	findone	f		1	\N	\N
90	upload	upload	updatesettings	f		2	\N	\N
100	users-permissions	auth	forgotpassword	t		2	\N	\N
110	users-permissions	user	create	f		2	\N	\N
120	users-permissions	user	me	t		2	\N	\N
130	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
140	users-permissions	userspermissions	getroles	f		2	\N	\N
150	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
163	application	long-enough-name	findone	f		1	\N	\N
176	application	yet-another-name	findone	f		2	\N	\N
91	upload	upload	upload	f		1	\N	\N
101	users-permissions	auth	register	f		1	\N	\N
111	users-permissions	user	destroy	f		1	\N	\N
121	users-permissions	user	update	f		1	\N	\N
131	users-permissions	userspermissions	getpermissions	f		1	\N	\N
141	users-permissions	userspermissions	getroutes	f		1	\N	\N
151	users-permissions	userspermissions	updateproviders	f		1	\N	\N
164	application	long-enough-name	findone	f		2	\N	\N
92	upload	upload	upload	f		2	\N	\N
102	users-permissions	auth	register	t		2	\N	\N
112	users-permissions	user	destroy	f		2	\N	\N
122	users-permissions	user	update	f		2	\N	\N
132	users-permissions	userspermissions	getpermissions	f		2	\N	\N
142	users-permissions	userspermissions	getroutes	f		2	\N	\N
152	users-permissions	userspermissions	updateproviders	f		2	\N	\N
167	application	yet-another-name	count	f		1	\N	\N
177	application	yet-another-name	update	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: yet_another_names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.yet_another_names (id, title, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 24, true);


--
-- Name: long_enough_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.long_enough_names_id_seq', 1, false);


--
-- Name: long_enough_names_yet_another_names__yet_another_names_l_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.long_enough_names_yet_another_names__yet_another_names_l_id_seq', 1, false);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 65, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: yet_another_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.yet_another_names_id_seq', 1, false);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: long_enough_names long_enough_names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.long_enough_names
    ADD CONSTRAINT long_enough_names_pkey PRIMARY KEY (id);


--
-- Name: long_enough_names_yet_another_names__yet_another_names_long_eno long_enough_names_yet_another_names__yet_another_names_lon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.long_enough_names_yet_another_names__yet_another_names_long_eno
    ADD CONSTRAINT long_enough_names_yet_another_names__yet_another_names_lon_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: yet_another_names yet_another_names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yet_another_names
    ADD CONSTRAINT yet_another_names_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

