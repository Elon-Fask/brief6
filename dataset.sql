PGDMP     )                    z           Brief6    14.3    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24701    Brief6    DATABASE     l   CREATE DATABASE "Brief6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Brief6";
                postgres    false            ?            1259    32768    car    TABLE     ?   CREATE TABLE public.car (
    matricule character varying(20) NOT NULL,
    com_name character varying(20),
    kilometrage double precision,
    manifacture character varying(20),
    price double precision,
    id_catg integer
);
    DROP TABLE public.car;
       public         heap    postgres    false            ?            1259    24702    category    TABLE     c   CREATE TABLE public.category (
    id_catg integer NOT NULL,
    nom_catg character varying(20)
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?          0    32768    car 
   TABLE DATA           \   COPY public.car (matricule, com_name, kilometrage, manifacture, price, id_catg) FROM stdin;
    public          postgres    false    210          ?          0    24702    category 
   TABLE DATA           5   COPY public.category (id_catg, nom_catg) FROM stdin;
    public          postgres    false    209   s       b           2606    32772    car car_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (matricule);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    210            `           2606    24706    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_catg);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    209            c           2606    32773    car car_id_catg_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_id_catg_fkey FOREIGN KEY (id_catg) REFERENCES public.category(id_catg);
 >   ALTER TABLE ONLY public.car DROP CONSTRAINT car_id_catg_fkey;
       public          postgres    false    210    3168    209            ?   V   x?s46?t?t?45 N? G?gW?742?J46?tqt?t?4??:?;C?P?Ɔ?n?A.?&`!w? _G?H?Ƙ+F??? ?$1      ?      x?342?tvv?sv?242??c???? ]??     