PGDMP     8                    w            cine    10.8    10.8     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16393    cine    DATABASE     �   CREATE DATABASE cine WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_El Salvador.1252' LC_CTYPE = 'Spanish_El Salvador.1252';
    DROP DATABASE cine;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394    pelicula    TABLE     �  CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    s_portada character varying(100) NOT NULL,
    s_singular character varying(100) NOT NULL,
    s_titulo character varying(100) NOT NULL,
    s_sinopsis character varying(800) NOT NULL,
    i_puestos integer NOT NULL,
    b_seleccion boolean NOT NULL,
    s_director character varying(100),
    s_singular2 character varying(100),
    s_video character varying(100)
);
    DROP TABLE public.pelicula;
       public         postgres    false    3            �
          0    16394    pelicula 
   TABLE DATA               �   COPY public.pelicula (id_pelicula, s_portada, s_singular, s_titulo, s_sinopsis, i_puestos, b_seleccion, s_director, s_singular2, s_video) FROM stdin;
    public       postgres    false    196   �
       n
           2606    16398    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public         postgres    false    196            �
   �  x��X�r�F]�_ѕ��L�^�GVUjJ�eQQ,F��*u4���n��A�ͧh�S�e�˹�T,0�J����{�i���t���t��H7#�S�<i*�Nd�qW���qiלC*=)-����&G�'�:ᤈ��(i�R�J�H�'��k���ɉ�$��׉�1K�j#�tbDNb�-,�~)�[*)!ޱ��
{V�DZ�Y)�ӧث�gx+E��-=��+��_S��m�v��z����� '�k�}MZ�2����C�������|xxبM�HnĦ�| g���x>�$?|MN>�_��\�$�Bv��|p"u
L����m�H���~q3<9!�)1�GHL��X�<�c����-Y��������s����'�V���F3�TW ����'f��ҭ��7�J�q$����:䛐��6�dy�Q,-��^q���ᜣ�4����+�3�l�"-|�g�\��gF��}�Y�F6�K�\-eo���q���x��߼Lٝ���;a��s~����~&(�$Ɣ�
lfW2�0��A�/�D��N�VJ�bSN���y�#�$�*SحtK�Z���\�G�o��l�[/Cͥ�ݑ�GF�ȡx�t���y�P��B�+�8�;N��N��X��AN�"�j�N���w&7i��H�� b�N�Z�Q�I#*��)�v) M	���	�(��W�x����J��#[��k��/��}k���K�
�JG9���~3>$��~���x����
���mJ�R�!|Y ����˔�E�ԲE��XER���;	]A7�^���E(9�,T+P7҉��t�7�qF{���m��xkl�x)V��o;�^o���8�T�$���bt�������~��2�Tɲb}6vׇ��@+�����]��B��&d��j+�kb�&DhS���[`��cP��� ����ڂ/*�Ƨ��)b*"�fi����%�Ѿ�Ĵv�˳����:�v^b��|�����h��������C�*e\�)vj+��P��.�>D�i?��f8�����T�2, �mt��S^��v���&O�������\(U!��Id����\��>�izy����
������A�*����	r�#����d�W�F�m��+10������@�J�"��bE`�YJ8pF��8�b�Aۮg �1Q��W�%�CW�Ab���/А�;��$���*���;Z?�ت�B��A�"P��ɸ��q�)���W�h����lt�����C���aS<ugd1��O{b�?�r��eD��м�	K�541e炊V�`<��L�]fM�܌�YW2a����Щ1M��硘��ѐDk����\��7���*����@��<��D0	��X�|\�j ��OO�a�����%��w�׾?�s�L��+H,M������*���bO�7�ϭ
�Q\I���d0��y��+�{��JVFfjҚ���6��4'��ua�Ѱr�u �e.�hM|)ȃ}B4�v_'�V.��� ��j���d����%�)l��v6$��	?��h �jh$��WsD��8�4H��*���<\�E	eC;�e�-���a�x�BS�O��VELYS�Lf����F͏�\�]��8q%�I���q��̋��9�%n7!���tq�\}0����;p4ɣ������I��^���i�'�z�wA��Ċ�U�ެ?�OK�)�E6�Bwj;xP� 6���l��^=�G4wR��)�V�8�X 0�]���`k�83� W�����ʜ4�4�GO��m'p��<T���Q�b�gAo�F�^dE�Ib����\3�V�w�������t�ۥ��$jI'|>��<�IZ�83�1�7\"������d�H�2jq�a#�*�b<7 �7-\��^-��ӧ"��ϐ���H���X���8�+Wh-��	k���搞���W��bi��a9P�~����L>�?xS/�^�����v���6�� (v�F�U�P�F �������;�rH��W�K&b�Dѝ(��[l�*�w)�ڵ�v�*b:�9<��kxl(ۆ�{[�pCB�
؜naj�D���"�-m|k�.ΎO.@����ݍ�|$X׫�H�>��%ڱQ��ҏ\�l�5@�rY[9��eBͼ)2&�����n�1���,~B���H�g�Y����M�`ny���h�T�Ϫ�W|��Z�̷݆���~jiU�y�2�U�O��Z�]>c	L������r����t��ߍ~����\&     