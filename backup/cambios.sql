PGDMP     (                    w            cine    10.8    10.8     �
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
   �  x��XKO�H>W���h���{zh�ՊGCC�45��Zi��;��t�Ì��O�#�>��6��c�E�U0P�S�|9�/���h`ə`Sr����.K�eJ�����I��ir�{��YuoDF��"�eI���"5V�O~עA�C+��TNYQ�*�����j����V�jc�\�r򵪥���|�U*ŗ@�c	*�M�]��d�2�	F������:3nm�jccp=8���|Z(Zh�f���v���wwwk�	>$��[��I��W�ϑ���/Gt7ܜ���r�ө~���t�:����=�06mbl�v�ԫFfR��͍j`������K >�Vh^���t<Ҋ�u9���k���إ�� [M4��p�)x�I�z�ˬ��/�m9 ��7�ߧ������K S	BH-+i*�#9g͞��TZ��!����R7d�p��F��0���khJ��q��Tb���F�A�K�1� `8�!!��u�e*���"^�K��Ky����ؐN .ғo9i9����]�@���-�栤����_���/��˸9��4|�s�Y.+���ɝ�@Y�Żnt�O��7�3�F:/3c�DG{�{�y���V�W ��77F[�XO�&�'_T�#��f�e:f�{���xb�Ԟ�J��[��;�����|C���{�wR�7�TM��Bj��v�;�n�,���|��/����̊86�=.Dr9��-���ϧ;f��K�常����C~�+AIi3����F�ܗ�4r2�h!%�4�A=@(���¹P]+�� !��
FA+ĞU�_�<�:agg<����F@����hٿn
��8Sy��Eт��,��L�+���ezx�ɜ�������k�|(���?���sa��/H��<,����(����Y�7����VI�LJ�׀�cu���'ߢk*>ˆ^<̟��W}ǕN����x��J���V"�ia�B�^��Q趄�����"��@�2��V
Q#~���IeB���t��Bb��	y϶��Z���/��G�?�}3��[���~�ȋ��� ߙ�e��Syg�b10�%X][Ua-�X�M��0���B����r!�+C�[�	���I�n�01�\� M����/b�}T@x���-O%]�&b*�Q�r�)%$k�ip\�x�晽�f�~J��کt���S,��f3�xW*�ݞ!�J��s�8�ˉ^!��T:��KwZ�	3P��-��&W��&r0TH�pY-Y�e����F_a[�����&F�qJYFц*��_W��E��P2�՝��ǲ��n���K���Qq�8�,�ą���v�;���y�U���޼ݿ���[��<2�:�'��q0��v��"S�+�@e�I1���ԙ��Ya��W��ұ�2q^ KU��X�ҟ/�o�7W�v/7������dpo63����Q_�V�A]��-3K1�ܘ��H(��ĽS�_j��w�4]
� ��6�"�s��ʵ�1�iW�{���iB�l�
��\O<�ud���[�z���+}���;3�^�WI�tR��v>���O	��.p�������������g�"6�*�)c,����%�Լ(���uēB� G�:@���/p�	�$1>+�BeQ�h��b�kB^�f?���b�����Cؗ�/;kK�ġ�-��s��#$˹�d�������ӝ�hNg�j�-
�'s�q�T�mÊkk*6��h�T��fAqܗ�+��,H ��G	�1xZA�p7����,�#NZ躹T��~~��+�=�������c}tt~z%���9M�W��]�߳����6�T{ =�'�BA7�M�f�.b+t�%��ڝ����`*��p�Y����]RB���!�T��N��Ƣ>��������L(U%N!�������Y�����2�� ל~̛vN��ش�O�-{]{
�F�4�P���0�co����\�+cPoD=���+��Q���G�# �M��5>�c���Sy,dЃr�3y@����q ��$\'�#�X���=2бKMIsB�.ɿ��ޜ�@>�tK�"@�#:��<;/i����d�t���}��:��� -�u8��oIl����+o,�j�³l���<�<��G�h��)b�,��ʲ��Yd"�q��,�6&����j��Ҝ��7�[��]�n�6�nT3kd�T�\��K�	�0-�ۓ��J���ֆ��� I{[�     