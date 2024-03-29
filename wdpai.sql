PGDMP  9                    {            wdpai    16.0 (Debian 16.0-1.pgdg120+1)    16.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    wdpai    DATABASE     p   CREATE DATABASE wdpai WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE wdpai;
                admin    false            �            1259    32874    armors    TABLE     a   CREATE TABLE public.armors (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.armors;
       public         heap    admin    false            �            1259    32873    armors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.armors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.armors_id_seq;
       public          admin    false    238            �           0    0    armors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.armors_id_seq OWNED BY public.armors.id;
          public          admin    false    237            �            1259    24718    backgrounds    TABLE     {   CREATE TABLE public.backgrounds (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    bonuses integer
);
    DROP TABLE public.backgrounds;
       public         heap    admin    false            �            1259    24725    backgroundsEntries    TABLE     �   CREATE TABLE public."backgroundsEntries" (
    id integer NOT NULL,
    background integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);
 (   DROP TABLE public."backgroundsEntries";
       public         heap    admin    false            �            1259    24724    backgroundsEntries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."backgroundsEntries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."backgroundsEntries_id_seq";
       public          admin    false    234            �           0    0    backgroundsEntries_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."backgroundsEntries_id_seq" OWNED BY public."backgroundsEntries".id;
          public          admin    false    233            �            1259    24717    backgrounds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.backgrounds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.backgrounds_id_seq;
       public          admin    false    232            �           0    0    backgrounds_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.backgrounds_id_seq OWNED BY public.backgrounds.id;
          public          admin    false    231            �            1259    32902    bonuses    TABLE     9   CREATE TABLE public.bonuses (
    id integer NOT NULL
);
    DROP TABLE public.bonuses;
       public         heap    admin    false            �            1259    32923    bonuses_armors    TABLE     b   CREATE TABLE public.bonuses_armors (
    bonuses integer NOT NULL,
    armors integer NOT NULL
);
 "   DROP TABLE public.bonuses_armors;
       public         heap    admin    false            �            1259    32901    bonuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bonuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bonuses_id_seq;
       public          admin    false    246            �           0    0    bonuses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bonuses_id_seq OWNED BY public.bonuses.id;
          public          admin    false    245            �            1259    32953    bonuses_languages    TABLE     h   CREATE TABLE public.bonuses_languages (
    bonuses integer NOT NULL,
    languages integer NOT NULL
);
 %   DROP TABLE public.bonuses_languages;
       public         heap    admin    false            �            1259    32968    bonuses_saves    TABLE     `   CREATE TABLE public.bonuses_saves (
    bonuses integer NOT NULL,
    saves integer NOT NULL
);
 !   DROP TABLE public.bonuses_saves;
       public         heap    admin    false            �            1259    32908    bonuses_skills    TABLE     b   CREATE TABLE public.bonuses_skills (
    bonuses integer NOT NULL,
    skills integer NOT NULL
);
 "   DROP TABLE public.bonuses_skills;
       public         heap    admin    false            �            1259    32938    bonuses_tools    TABLE     `   CREATE TABLE public.bonuses_tools (
    bonuses integer NOT NULL,
    tools integer NOT NULL
);
 !   DROP TABLE public.bonuses_tools;
       public         heap    admin    false            �            1259    16483    classes    TABLE     �   CREATE TABLE public.classes (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    hd smallint NOT NULL,
    features integer NOT NULL,
    bonuses integer NOT NULL
);
    DROP TABLE public.classes;
       public         heap    admin    false            �            1259    16482    classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.classes_id_seq;
       public          admin    false    222            �           0    0    classes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;
          public          admin    false    221            �            1259    24682    features    TABLE     �   CREATE TABLE public.features (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    level smallint NOT NULL,
    reference integer NOT NULL,
    bonuses integer
);
    DROP TABLE public.features;
       public         heap    admin    false            �            1259    24694    featuresEntries    TABLE     �   CREATE TABLE public."featuresEntries" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    feature integer NOT NULL,
    description text NOT NULL
);
 %   DROP TABLE public."featuresEntries";
       public         heap    admin    false            �            1259    24675    featuresReference    TABLE     E   CREATE TABLE public."featuresReference" (
    id integer NOT NULL
);
 '   DROP TABLE public."featuresReference";
       public         heap    admin    false            �            1259    24681    features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public          admin    false    228            �           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
          public          admin    false    227            �            1259    24693    featuresentries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.featuresentries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.featuresentries_id_seq;
       public          admin    false    230            �           0    0    featuresentries_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.featuresentries_id_seq OWNED BY public."featuresEntries".id;
          public          admin    false    229            �            1259    24674    featuresreference_id_seq    SEQUENCE     �   CREATE SEQUENCE public.featuresreference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.featuresreference_id_seq;
       public          admin    false    226            �           0    0    featuresreference_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.featuresreference_id_seq OWNED BY public."featuresReference".id;
          public          admin    false    225            �            1259    32888 	   languages    TABLE     d   CREATE TABLE public.languages (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.languages;
       public         heap    admin    false            �            1259    32887    languages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.languages_id_seq;
       public          admin    false    242            �           0    0    languages_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;
          public          admin    false    241            �            1259    16408    races    TABLE     �   CREATE TABLE public.races (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    speed integer DEFAULT 30 NOT NULL,
    subrace integer,
    bonuses integer
);
    DROP TABLE public.races;
       public         heap    admin    false            �            1259    16437    racesEntries    TABLE     �   CREATE TABLE public."racesEntries" (
    id integer NOT NULL,
    race integer,
    name character varying(50) NOT NULL,
    description text NOT NULL
);
 "   DROP TABLE public."racesEntries";
       public         heap    admin    false            �            1259    16436    racesEntry_id_seq    SEQUENCE     �   CREATE SEQUENCE public."racesEntry_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."racesEntry_id_seq";
       public          admin    false    220            �           0    0    racesEntry_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."racesEntry_id_seq" OWNED BY public."racesEntries".id;
          public          admin    false    219            �            1259    16407    races_id_seq    SEQUENCE     �   CREATE SEQUENCE public.races_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.races_id_seq;
       public          admin    false    218            �           0    0    races_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.races_id_seq OWNED BY public.races.id;
          public          admin    false    217            �            1259    32895    saves    TABLE     `   CREATE TABLE public.saves (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.saves;
       public         heap    admin    false            �            1259    32894    saves_id_seq    SEQUENCE     �   CREATE SEQUENCE public.saves_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.saves_id_seq;
       public          admin    false    244            �           0    0    saves_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.saves_id_seq OWNED BY public.saves.id;
          public          admin    false    243            �            1259    32867    skills    TABLE     a   CREATE TABLE public.skills (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.skills;
       public         heap    admin    false            �            1259    32866    skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.skills_id_seq;
       public          admin    false    236            �           0    0    skills_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;
          public          admin    false    235            �            1259    16490 
   subclasses    TABLE     �   CREATE TABLE public.subclasses (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    class integer NOT NULL,
    features integer NOT NULL
);
    DROP TABLE public.subclasses;
       public         heap    admin    false            �            1259    16489    subclasses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subclasses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.subclasses_id_seq;
       public          admin    false    224            �           0    0    subclasses_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.subclasses_id_seq OWNED BY public.subclasses.id;
          public          admin    false    223            �            1259    32881    tools    TABLE     `   CREATE TABLE public.tools (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.tools;
       public         heap    admin    false            �            1259    32880    tools_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tools_id_seq;
       public          admin    false    240            �           0    0    tools_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tools_id_seq OWNED BY public.tools.id;
          public          admin    false    239            �            1259    16399    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(106) NOT NULL,
    email character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    admin    false            �            1259    16398    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          admin    false    216                        0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          admin    false    215            �           2604    32877 	   armors id    DEFAULT     f   ALTER TABLE ONLY public.armors ALTER COLUMN id SET DEFAULT nextval('public.armors_id_seq'::regclass);
 8   ALTER TABLE public.armors ALTER COLUMN id DROP DEFAULT;
       public          admin    false    237    238    238            �           2604    24721    backgrounds id    DEFAULT     p   ALTER TABLE ONLY public.backgrounds ALTER COLUMN id SET DEFAULT nextval('public.backgrounds_id_seq'::regclass);
 =   ALTER TABLE public.backgrounds ALTER COLUMN id DROP DEFAULT;
       public          admin    false    231    232    232            �           2604    24728    backgroundsEntries id    DEFAULT     �   ALTER TABLE ONLY public."backgroundsEntries" ALTER COLUMN id SET DEFAULT nextval('public."backgroundsEntries_id_seq"'::regclass);
 F   ALTER TABLE public."backgroundsEntries" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    234    233    234            �           2604    32905 
   bonuses id    DEFAULT     h   ALTER TABLE ONLY public.bonuses ALTER COLUMN id SET DEFAULT nextval('public.bonuses_id_seq'::regclass);
 9   ALTER TABLE public.bonuses ALTER COLUMN id DROP DEFAULT;
       public          admin    false    246    245    246            �           2604    16486 
   classes id    DEFAULT     h   ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);
 9   ALTER TABLE public.classes ALTER COLUMN id DROP DEFAULT;
       public          admin    false    222    221    222            �           2604    24685    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public          admin    false    227    228    228            �           2604    24697    featuresEntries id    DEFAULT     z   ALTER TABLE ONLY public."featuresEntries" ALTER COLUMN id SET DEFAULT nextval('public.featuresentries_id_seq'::regclass);
 C   ALTER TABLE public."featuresEntries" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    229    230    230            �           2604    24678    featuresReference id    DEFAULT     ~   ALTER TABLE ONLY public."featuresReference" ALTER COLUMN id SET DEFAULT nextval('public.featuresreference_id_seq'::regclass);
 E   ALTER TABLE public."featuresReference" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    226    225    226            �           2604    32891    languages id    DEFAULT     l   ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);
 ;   ALTER TABLE public.languages ALTER COLUMN id DROP DEFAULT;
       public          admin    false    242    241    242            �           2604    16411    races id    DEFAULT     d   ALTER TABLE ONLY public.races ALTER COLUMN id SET DEFAULT nextval('public.races_id_seq'::regclass);
 7   ALTER TABLE public.races ALTER COLUMN id DROP DEFAULT;
       public          admin    false    218    217    218            �           2604    16440    racesEntries id    DEFAULT     t   ALTER TABLE ONLY public."racesEntries" ALTER COLUMN id SET DEFAULT nextval('public."racesEntry_id_seq"'::regclass);
 @   ALTER TABLE public."racesEntries" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    219    220    220            �           2604    32898    saves id    DEFAULT     d   ALTER TABLE ONLY public.saves ALTER COLUMN id SET DEFAULT nextval('public.saves_id_seq'::regclass);
 7   ALTER TABLE public.saves ALTER COLUMN id DROP DEFAULT;
       public          admin    false    244    243    244            �           2604    32870 	   skills id    DEFAULT     f   ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);
 8   ALTER TABLE public.skills ALTER COLUMN id DROP DEFAULT;
       public          admin    false    235    236    236            �           2604    16493    subclasses id    DEFAULT     n   ALTER TABLE ONLY public.subclasses ALTER COLUMN id SET DEFAULT nextval('public.subclasses_id_seq'::regclass);
 <   ALTER TABLE public.subclasses ALTER COLUMN id DROP DEFAULT;
       public          admin    false    223    224    224            �           2604    32884    tools id    DEFAULT     d   ALTER TABLE ONLY public.tools ALTER COLUMN id SET DEFAULT nextval('public.tools_id_seq'::regclass);
 7   ALTER TABLE public.tools ALTER COLUMN id DROP DEFAULT;
       public          admin    false    240    239    240            �           2604    16402    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          admin    false    216    215    216            �          0    32874    armors 
   TABLE DATA           *   COPY public.armors (id, name) FROM stdin;
    public          admin    false    238   ,�       �          0    24718    backgrounds 
   TABLE DATA           8   COPY public.backgrounds (id, name, bonuses) FROM stdin;
    public          admin    false    232   I�       �          0    24725    backgroundsEntries 
   TABLE DATA           Q   COPY public."backgroundsEntries" (id, background, name, description) FROM stdin;
    public          admin    false    234   }�       �          0    32902    bonuses 
   TABLE DATA           %   COPY public.bonuses (id) FROM stdin;
    public          admin    false    246   ��       �          0    32923    bonuses_armors 
   TABLE DATA           9   COPY public.bonuses_armors (bonuses, armors) FROM stdin;
    public          admin    false    248   �       �          0    32953    bonuses_languages 
   TABLE DATA           ?   COPY public.bonuses_languages (bonuses, languages) FROM stdin;
    public          admin    false    250   ��       �          0    32968    bonuses_saves 
   TABLE DATA           7   COPY public.bonuses_saves (bonuses, saves) FROM stdin;
    public          admin    false    251   �       �          0    32908    bonuses_skills 
   TABLE DATA           9   COPY public.bonuses_skills (bonuses, skills) FROM stdin;
    public          admin    false    247   8�       �          0    32938    bonuses_tools 
   TABLE DATA           7   COPY public.bonuses_tools (bonuses, tools) FROM stdin;
    public          admin    false    249   f�       �          0    16483    classes 
   TABLE DATA           B   COPY public.classes (id, name, hd, features, bonuses) FROM stdin;
    public          admin    false    222   ��       �          0    24682    features 
   TABLE DATA           G   COPY public.features (id, name, level, reference, bonuses) FROM stdin;
    public          admin    false    228   ��       �          0    24694    featuresEntries 
   TABLE DATA           K   COPY public."featuresEntries" (id, name, feature, description) FROM stdin;
    public          admin    false    230   ǲ       �          0    24675    featuresReference 
   TABLE DATA           1   COPY public."featuresReference" (id) FROM stdin;
    public          admin    false    226   �       �          0    32888 	   languages 
   TABLE DATA           -   COPY public.languages (id, name) FROM stdin;
    public          admin    false    242   �       �          0    16408    races 
   TABLE DATA           B   COPY public.races (id, name, speed, subrace, bonuses) FROM stdin;
    public          admin    false    218   �       �          0    16437    racesEntries 
   TABLE DATA           E   COPY public."racesEntries" (id, race, name, description) FROM stdin;
    public          admin    false    220   �       �          0    32895    saves 
   TABLE DATA           )   COPY public.saves (id, name) FROM stdin;
    public          admin    false    244   ��       �          0    32867    skills 
   TABLE DATA           *   COPY public.skills (id, name) FROM stdin;
    public          admin    false    236   ��       �          0    16490 
   subclasses 
   TABLE DATA           ?   COPY public.subclasses (id, name, class, features) FROM stdin;
    public          admin    false    224   û       �          0    32881    tools 
   TABLE DATA           )   COPY public.tools (id, name) FROM stdin;
    public          admin    false    240   �       �          0    16399    users 
   TABLE DATA           >   COPY public.users (id, username, password, email) FROM stdin;
    public          admin    false    216   ��                  0    0    armors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.armors_id_seq', 1, false);
          public          admin    false    237                       0    0    backgroundsEntries_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."backgroundsEntries_id_seq"', 11, true);
          public          admin    false    233                       0    0    backgrounds_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.backgrounds_id_seq', 2, true);
          public          admin    false    231                       0    0    bonuses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.bonuses_id_seq', 1, true);
          public          admin    false    245                       0    0    classes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.classes_id_seq', 1, false);
          public          admin    false    221                       0    0    features_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.features_id_seq', 1, false);
          public          admin    false    227                       0    0    featuresentries_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.featuresentries_id_seq', 1, false);
          public          admin    false    229                       0    0    featuresreference_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.featuresreference_id_seq', 1, false);
          public          admin    false    225            	           0    0    languages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.languages_id_seq', 1, false);
          public          admin    false    241            
           0    0    racesEntry_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."racesEntry_id_seq"', 34, true);
          public          admin    false    219                       0    0    races_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.races_id_seq', 5, true);
          public          admin    false    217                       0    0    saves_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.saves_id_seq', 6, true);
          public          admin    false    243                       0    0    skills_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.skills_id_seq', 18, true);
          public          admin    false    235                       0    0    subclasses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.subclasses_id_seq', 1, false);
          public          admin    false    223                       0    0    tools_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tools_id_seq', 22, true);
          public          admin    false    239                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          admin    false    215                       2606    32879    armors armors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.armors
    ADD CONSTRAINT armors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.armors DROP CONSTRAINT armors_pkey;
       public            admin    false    238            
           2606    24732 *   backgroundsEntries backgroundsEntries_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."backgroundsEntries"
    ADD CONSTRAINT "backgroundsEntries_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."backgroundsEntries" DROP CONSTRAINT "backgroundsEntries_pkey";
       public            admin    false    234                       2606    24723    backgrounds backgrounds_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.backgrounds
    ADD CONSTRAINT backgrounds_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.backgrounds DROP CONSTRAINT backgrounds_pkey;
       public            admin    false    232                       2606    32927 "   bonuses_armors bonuses_armors_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.bonuses_armors
    ADD CONSTRAINT bonuses_armors_pkey PRIMARY KEY (bonuses, armors);
 L   ALTER TABLE ONLY public.bonuses_armors DROP CONSTRAINT bonuses_armors_pkey;
       public            admin    false    248    248                       2606    32957 (   bonuses_languages bonuses_languages_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.bonuses_languages
    ADD CONSTRAINT bonuses_languages_pkey PRIMARY KEY (bonuses, languages);
 R   ALTER TABLE ONLY public.bonuses_languages DROP CONSTRAINT bonuses_languages_pkey;
       public            admin    false    250    250                       2606    32907    bonuses bonuses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bonuses
    ADD CONSTRAINT bonuses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bonuses DROP CONSTRAINT bonuses_pkey;
       public            admin    false    246                        2606    32972     bonuses_saves bonuses_saves_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.bonuses_saves
    ADD CONSTRAINT bonuses_saves_pkey PRIMARY KEY (bonuses, saves);
 J   ALTER TABLE ONLY public.bonuses_saves DROP CONSTRAINT bonuses_saves_pkey;
       public            admin    false    251    251                       2606    32912 "   bonuses_skills bonuses_skills_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.bonuses_skills
    ADD CONSTRAINT bonuses_skills_pkey PRIMARY KEY (bonuses, skills);
 L   ALTER TABLE ONLY public.bonuses_skills DROP CONSTRAINT bonuses_skills_pkey;
       public            admin    false    247    247                       2606    32942     bonuses_tools bonuses_tools_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.bonuses_tools
    ADD CONSTRAINT bonuses_tools_pkey PRIMARY KEY (bonuses, tools);
 J   ALTER TABLE ONLY public.bonuses_tools DROP CONSTRAINT bonuses_tools_pkey;
       public            admin    false    249    249            �           2606    16488    classes classes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            admin    false    222                       2606    24687    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public            admin    false    228                       2606    24701 $   featuresEntries featuresentries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."featuresEntries"
    ADD CONSTRAINT featuresentries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."featuresEntries" DROP CONSTRAINT featuresentries_pkey;
       public            admin    false    230                       2606    24680 (   featuresReference featuresreference_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."featuresReference"
    ADD CONSTRAINT featuresreference_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."featuresReference" DROP CONSTRAINT featuresreference_pkey;
       public            admin    false    226                       2606    32893    languages languages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_pkey;
       public            admin    false    242            �           2606    16442    racesEntries racesEntry_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public."racesEntries"
    ADD CONSTRAINT "racesEntry_pk" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."racesEntries" DROP CONSTRAINT "racesEntry_pk";
       public            admin    false    220            �           2606    16415    races rases_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.races
    ADD CONSTRAINT rases_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.races DROP CONSTRAINT rases_pkey;
       public            admin    false    218                       2606    32900    saves saves_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.saves
    ADD CONSTRAINT saves_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.saves DROP CONSTRAINT saves_pkey;
       public            admin    false    244                       2606    32872    skills skills_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_pkey;
       public            admin    false    236                        2606    16495    subclasses subclasses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.subclasses
    ADD CONSTRAINT subclasses_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.subclasses DROP CONSTRAINT subclasses_pkey;
       public            admin    false    224                       2606    32886    tools tools_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tools DROP CONSTRAINT tools_pkey;
       public            admin    false    240            �           2606    16451    users users_email_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_pk UNIQUE (email);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_pk;
       public            admin    false    216            �           2606    16404    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            admin    false    216            �           2606    16406    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            admin    false    216            ,           2606    24733 5   backgroundsEntries backgroundsEntries_background_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."backgroundsEntries"
    ADD CONSTRAINT "backgroundsEntries_background_fkey" FOREIGN KEY (background) REFERENCES public.backgrounds(id);
 c   ALTER TABLE ONLY public."backgroundsEntries" DROP CONSTRAINT "backgroundsEntries_background_fkey";
       public          admin    false    232    234    3336            +           2606    32998 "   backgrounds backgrounds_bonuses_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.backgrounds
    ADD CONSTRAINT backgrounds_bonuses_fk FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 L   ALTER TABLE ONLY public.backgrounds DROP CONSTRAINT backgrounds_bonuses_fk;
       public          admin    false    232    246    3350            /           2606    32933 )   bonuses_armors bonuses_armors_armors_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_armors
    ADD CONSTRAINT bonuses_armors_armors_fkey FOREIGN KEY (armors) REFERENCES public.armors(id);
 S   ALTER TABLE ONLY public.bonuses_armors DROP CONSTRAINT bonuses_armors_armors_fkey;
       public          admin    false    248    3342    238            0           2606    32928 *   bonuses_armors bonuses_armors_bonuses_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_armors
    ADD CONSTRAINT bonuses_armors_bonuses_fkey FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 T   ALTER TABLE ONLY public.bonuses_armors DROP CONSTRAINT bonuses_armors_bonuses_fkey;
       public          admin    false    3350    248    246            3           2606    32958 0   bonuses_languages bonuses_languages_bonuses_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_languages
    ADD CONSTRAINT bonuses_languages_bonuses_fkey FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 Z   ALTER TABLE ONLY public.bonuses_languages DROP CONSTRAINT bonuses_languages_bonuses_fkey;
       public          admin    false    3350    246    250            4           2606    32963 2   bonuses_languages bonuses_languages_languages_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_languages
    ADD CONSTRAINT bonuses_languages_languages_fkey FOREIGN KEY (languages) REFERENCES public.languages(id);
 \   ALTER TABLE ONLY public.bonuses_languages DROP CONSTRAINT bonuses_languages_languages_fkey;
       public          admin    false    242    250    3346            5           2606    32973 (   bonuses_saves bonuses_saves_bonuses_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_saves
    ADD CONSTRAINT bonuses_saves_bonuses_fkey FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 R   ALTER TABLE ONLY public.bonuses_saves DROP CONSTRAINT bonuses_saves_bonuses_fkey;
       public          admin    false    3350    246    251            6           2606    32978 &   bonuses_saves bonuses_saves_saves_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_saves
    ADD CONSTRAINT bonuses_saves_saves_fkey FOREIGN KEY (saves) REFERENCES public.saves(id);
 P   ALTER TABLE ONLY public.bonuses_saves DROP CONSTRAINT bonuses_saves_saves_fkey;
       public          admin    false    3348    251    244            -           2606    32913 *   bonuses_skills bonuses_skills_bonuses_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_skills
    ADD CONSTRAINT bonuses_skills_bonuses_fkey FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 T   ALTER TABLE ONLY public.bonuses_skills DROP CONSTRAINT bonuses_skills_bonuses_fkey;
       public          admin    false    3350    246    247            .           2606    32918 )   bonuses_skills bonuses_skills_skills_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_skills
    ADD CONSTRAINT bonuses_skills_skills_fkey FOREIGN KEY (skills) REFERENCES public.skills(id);
 S   ALTER TABLE ONLY public.bonuses_skills DROP CONSTRAINT bonuses_skills_skills_fkey;
       public          admin    false    247    236    3340            1           2606    32943 (   bonuses_tools bonuses_tools_bonuses_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_tools
    ADD CONSTRAINT bonuses_tools_bonuses_fkey FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 R   ALTER TABLE ONLY public.bonuses_tools DROP CONSTRAINT bonuses_tools_bonuses_fkey;
       public          admin    false    249    246    3350            2           2606    32948 &   bonuses_tools bonuses_tools_tools_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bonuses_tools
    ADD CONSTRAINT bonuses_tools_tools_fkey FOREIGN KEY (tools) REFERENCES public.tools(id);
 P   ALTER TABLE ONLY public.bonuses_tools DROP CONSTRAINT bonuses_tools_tools_fkey;
       public          admin    false    240    249    3344            $           2606    32988    classes classes_bonuses_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_bonuses_fk FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 D   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_bonuses_fk;
       public          admin    false    222    246    3350            %           2606    24707    classes classes_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_features_fk FOREIGN KEY (features) REFERENCES public."featuresReference"(id);
 E   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_features_fk;
       public          admin    false    3330    226    222            *           2606    24702 ,   featuresEntries featuresEntries_feature_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."featuresEntries"
    ADD CONSTRAINT "featuresEntries_feature_fkey" FOREIGN KEY (feature) REFERENCES public.features(id);
 Z   ALTER TABLE ONLY public."featuresEntries" DROP CONSTRAINT "featuresEntries_feature_fkey";
       public          admin    false    228    230    3332            (           2606    32983    features features_bonuses_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_bonuses_fk FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 F   ALTER TABLE ONLY public.features DROP CONSTRAINT features_bonuses_fk;
       public          admin    false    246    228    3350            )           2606    24688     features features_reference_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_reference_fkey FOREIGN KEY (reference) REFERENCES public."featuresReference"(id);
 J   ALTER TABLE ONLY public.features DROP CONSTRAINT features_reference_fkey;
       public          admin    false    226    228    3330            #           2606    16443    racesEntries racesEntry_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public."racesEntries"
    ADD CONSTRAINT "racesEntry_fk" FOREIGN KEY (race) REFERENCES public.races(id);
 H   ALTER TABLE ONLY public."racesEntries" DROP CONSTRAINT "racesEntry_fk";
       public          admin    false    220    218    3322            !           2606    32993    races races_bonuses_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_bonuses_fk FOREIGN KEY (bonuses) REFERENCES public.bonuses(id);
 @   ALTER TABLE ONLY public.races DROP CONSTRAINT races_bonuses_fk;
       public          admin    false    246    3350    218            "           2606    16431    races races_fk    FK CONSTRAINT     m   ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_fk FOREIGN KEY (subrace) REFERENCES public.races(id);
 8   ALTER TABLE ONLY public.races DROP CONSTRAINT races_fk;
       public          admin    false    218    218    3322            &           2606    16496     subclasses subclasses_class_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.subclasses
    ADD CONSTRAINT subclasses_class_fkey FOREIGN KEY (class) REFERENCES public.classes(id);
 J   ALTER TABLE ONLY public.subclasses DROP CONSTRAINT subclasses_class_fkey;
       public          admin    false    3326    222    224            '           2606    24712 !   subclasses subclasses_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subclasses
    ADD CONSTRAINT subclasses_features_fk FOREIGN KEY (features) REFERENCES public."featuresReference"(id);
 K   ALTER TABLE ONLY public.subclasses DROP CONSTRAINT subclasses_features_fk;
       public          admin    false    224    226    3330            �      x������ � �      �   $   x�3��H-��,�4�2�t���V ��9��b���� {�J      �   3  x�}U]��6|�~ž5#N���K�6-�@�� E����J"Lq~ا�YJ�\.�>Ζ���Ù�qw�ݞ���w��Y�i��[|	����]�$4/Q�A�q�Ǔ�.�tv��E���㷿�t4K�dq���P�ۧ⦑C޽�d�`�5�)��u�RW��dN�E����H�HS43Ǵ'CW2G:yΜ�I�ǭ���^��ZhxV�����yT���%�O��%+������h����@ö�e-Т��2���\X$c-�DY ���p5ɕ#���~t��)���?.Q�{�ud�Fa�A���=���it��鄁�GlD9�<�9I����4
���-��x���;�}Z�`LQv'����^v-גLm��v�\fb|�Ɗ�;�D�J!3�~S�A�+�rFuJH=�g��}9��^2��HJ`��$#�1��=�ɤ��+�5*(P�E�ȕh<.d�3��UZ3�t�]ֶ,�g�� ����  z�(�;�y�� p=�kHR�/�-O���|�6��:����B��O�vIY,c�u��
��r���vՈx��ϕt'\%�aH��}��-gsXp?��j�70��`n��Iu�*�lN��Ċ���^'܆rSr���哹�&��x���ײ��/�b|�#N<OAy���K&|��5_0�z���>o^���ɣs�L�ʵ�5w�נq�M��q�J;����l\P�_h*_ �K�K�����	q���w�N5V/AP��r�(����ğ���s�'3��P1.:�}�a�G�*<�^U,�MaGN�^|d[&��Z��Rq�U������A�5T��N[֤hU�q��X�p\|��Y�b�\u�	�*	`%m�����~�k+�H(�t�G.�w}�,��xT�m�S&�����L �Jɍ��	��f�����8��1fJ�j�ő�T���8^P�O ��È�ڂL���>���� �@� �5�r�]�P���UUʍ��/��"�4�qw���5���:R��U:Я��j��g�!w���a��n�/[��\<4����vH�@      �      x�3�2����� l       �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�44�2�44�2�4bC�=... (!      �      x�3�42�2�42����� ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   Q   x�3��(�M��46���".#���FXbQfb^�&H�$c�隓�Ph�*h�嗃��M!���)�E�ى��=... ��j      �     x��YM�G=ۿ��% Y����J� BH\�35���L��{�8�>����e�H �a/H;�]U��W=f1YL�7<��oL)�)j2e�R�}I��T��LbJ�Xcڒ��dr#^��ܦ>���%����/M��֖�v�6u��޺rFU��M�'T1'J����Kt:<3���oL(5��h��@��6Y��ZM�`���ˈJ�Fz����t������l8N���
�;639<�Ҷ��O|� �<�-H� ��{�_��<��i���� �	
߸G��x���w8���Q���T�p����m7�ױ�Si��"�9��� �*/%U�;������%��?	E[�Hk��r�aι�G9��� �g��]�XS�G)��P�x�tkB~k�M�ЮF�	8����x���T:A��K�STwG���ҙt��:���4��������Q�\Go����I����O�>�������~S�K�S��w� �m``���I;M�$�3�jm�L�K�����Τ��a�b�;A~̱�@t�}���������y��j��&^	/0����Zd�(G�ض8:�u�X���N�h��\��OG�G�,�"j����Ac�w]Y�6�2U'H��s2Z,��	`(29/�>&߀g��B�J�/��*?^�T�C�^P�r �H������[՝+�je�ux�4��N��y2_�ö"ԱeHft�nȬR��%�#�9Jx���P��30-��)��7��ǀ��/��(��i9�����omLj;j ����x�vbI� l��X��{��tL�?�nP�nN��{����CCX8ҽ�U��=���u<�n7�3r	95d�*�L���q��:�)R��n��j
�� <���Q*���uP������&z�	�7rfutT�5g�F���ʦ��d=e$W�?��T�����[�?��|o�(�r��ju�د�N�X�8,�����1A����{RMaM��1)-v�α:��i@ ¿bQ��@������ �돣G'�0�`�J�B�f(�p�`O�Æ��d�] d+@���A���NQӾ��Ҡ�bN��\�1KDuҨ��!yX�&4��5fc�AS\Y�:�a�X"��f�k\5�i�k�DH��Ɲ�Z�
��N��f×g�����P��}��C���R�������74��5 �o�����0���g�j�-����8��q�\�9��Dxp�K���z��dR2����[���X�%��| 1qq1E?fE|�j��~�q���jrxxD�:�+��p�jծ��"	ـ�z[�'!:��s�\O!q��i.Z��6}H]0tb};�5��4��dS��gced`Q���/����2_���M��h#��Z�vre` V+����^4�IE'�~�"�?�5�� ��w��	����H�o�S�
��hbR���r'�ּeӁpQ�����Lgqۘah���~�φ9,S>���sD?����x�x�Y�����,"�����]v�� ѷ_vVG���.;���]vn�eg�DO�.;_s�Y� ٟ�i��+�V����g��/-��p� �ȯ�����2���=�<9�}+�*�	UaJ�Ď;�1�;ɲ:�72d<�ӮD+�Ÿ�6����|e��Yĉ���RG�dݗ���}���<����^,4�Ǡ�8�x���l7���7�����u)��������ЇvNO1�5*K�ᡨ���}L@R�����o�O�ϧ�����      �   S   x��=
�0�9�a/Pg����)������n�5X�@+��U��H�h3�Ǥ(&��8%	�c�C�]2r�Wi��� � (�      �   �   x�5���0Eg�+�Dx�0Vb����bR�ZJ����{� �st��m��1<I�&\C�'�8�o��7PEK�p�v�smG��V	8I�?X��'i;��D*�4�+�IGN*���
.܈�h\I�8�n��f3�+Ğ�����i�����I�����|v^�o4%���C��z�����D�/��K�      �      x������ � �      �   �   x�]�KN�@���A7����P$)�n�q�ՙ��S"v\��q���2�~�o��p�UC�����#�������SO>�	����<v��A2���Ȇ�Hp�E��5�S�a�ʒ[Ds�#Y1і��(R���
��u��a��z��i����!�P�9�{~DO�p!}CO�5��ލ��2��gj�8WW�/|	���L((������]{���1<�/���ٳ���S1Iv�h����o��R�	|��      �   �   x����   �g����Z4���t�����,�,��<?pB��Uڃ�;C�k��鹡�]{� �A�����H�Q7�Za�~3L��6�U3���?#�[b�E\Q*�L2m�*x?��q�pS�L�<统ݲ�'ݯr���D �?w.`     