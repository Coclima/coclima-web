PGDMP     7                	    z            coclima #   12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16534    coclima    DATABASE     X   CREATE DATABASE coclima WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE coclima;
                postgres    false            �            1259    19435    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            �          0    19435    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    208                     2606    19444 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    208            �   �  x��W[o��~���]4��~!Ї �[��> �r��B"�N���HK�b;tQ��!Sg8g���'K&�ֱ9�ZY�����e��l���!�.���QQ"'21:�%O�[I�X�%f#���*�Y�&D�\-L�y�L+x���ٿ0��2'��0���#u��+=��������k_T�g*$k�u��h���T�;S���"EI�G��XJ�yɭ���P��lX&9\Ey%]��4���@8c\0δ�`7�ݑ���K�0�0w���0�&����}���j���܏CUB��\�c�����H�.�S��0�si]��j��T�Ut<�Ǫ�*�:~�#V�q�7�'
�Z�W�8>����m9�HӸ�JW����HS�U��1?�U|��V�|����ñ�����|���ꓲ��n�ǳ�!���Zf�����D.�yQ(5�Wۻ�çO������~��'��jy=8<�v�װ�UA����W5,����j�*پ��8�e��_���;A��e�y�_>�� ��4�{,mO(���8��&��	�][}zW=��|~>�S�����<۝�M���m{x��>m�v��Y���~ڮ�@g��8XX,??�Y+����P���n՝�yj֣v�p^�HH���p���O��ߖ��_�/�������e�=����l���,�S:"j���o��p��n���n�l�mP]Ua���i���g��-�ח����n_0h�S,�~�Vפ�Զi��Ð�W�!y�H������m�#�Ϡ_r������k�Ӓ1'Z��b�o^5�u��pV3Y	�r�J�Xɼ�K`7�X!
����Z%�.�S�ST�k�lQj�`,�t����g}҉�v�D-��&�
����й��լ<�"�*�[�Za��pig���2�ͨY�{���u#{{3�qQ��5CG�V\��%/j*Qeaɖ�6I�H��J�(�$w�Y쌤����._B4�T�"�tTɻ�_�P���3�_R����xэ��sk��Oݘ������Y�
WJ텡�A!�bd0L	.ǒ�F��Y!�)pB����>k��y��\� �`�UYy(x�B4�yL4/H��W$�OI�F()�����`�Z��j����S�L+���|�?􄯸l�m�m�<t�	υ�B ���0|�0 ɿ<�h�/�<�1��\�Ӏ�#3�K^x�VQ�:��j���8�����T0�1mI@���8<Xap��.��q��,�5ְ�, ��(8��o�_lj1
rsa�i�:�ws�8ѱ���/�\� :��J>qq��UF(�VS��_=Cޢ8L�Qf��LJ$��	�%SF;I.��$'������)�I�|=r2�j��n0,2}^�1��n� ����u���;u(��Z��{R�D�P��&ϣϲ`g,�:���6dTLZ8��x�#W%�,	�8L)�xGcqb\"0M�ə�C�F� ���(L#��!���R����j���>��a ��Sֶ�Sf�1Bw�	���8�ZCi�
�t4���d�/�<&tg�ybY&�2�o�q��@L62/e�Q�"���~�ܽ�餰����9S��.�ߑKk ���i̒ �42"��M�����'ep�P�b��m�cER�([�ƺ�Q�"��Q3��Q^�ل[�(j\�"�������젰Ms��5�B?%b��Si����h��^�t���h� ����
"tD3�	�����p���J��ax��U���i2F,���h��S��b��[=1�_�y�
`�'w���� �<4�     