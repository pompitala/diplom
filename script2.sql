PGDMP     7                    {            Shop    15.1    15.1 5    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16557    Shop    DATABASE     h   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16559    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16558    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            C           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16566    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16565    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            D           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16621    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16620    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            E           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    16573    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16572    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            F           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    16582    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16604    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16603    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            G           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    16581    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            H           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            �           2604    16562    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16569    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16624 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16576 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16585 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16607    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            2          0    16559    category 
   TABLE DATA                 public          postgres    false    215   ^9       4          0    16566    image 
   TABLE DATA                 public          postgres    false    217   :       <          0    16621    orders 
   TABLE DATA                 public          postgres    false    225   s?       6          0    16573    person 
   TABLE DATA                 public          postgres    false    219   �?       8          0    16582    product 
   TABLE DATA                 public          postgres    false    221   }@       :          0    16604    product_cart 
   TABLE DATA                 public          postgres    false    223   �J       I           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            J           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 55, true);
          public          postgres    false    216            K           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 9, true);
          public          postgres    false    224            L           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    218            M           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 16, true);
          public          postgres    false    222            N           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 11, true);
          public          postgres    false    220            �           2606    16564    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16571    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16626    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    16580    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    16609    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    16590    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    16592 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    16627 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    225    3476            �           2606    16598 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3472    221            �           2606    16632 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3478            �           2606    16593 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    3478    217            �           2606    16615 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    223    3478            �           2606    16610 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    223    3476    219            2   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0���[/칰�b���5�'iF���waۅ}6_ء D.l���b7��[|���~�q��x��&��v_�xa���F��[/l�M6]� ��� TPh      4   \  x���=�e�E����D��(�r�b��b'�!J�1�����g��s�s��Y,H�\$����?�}��翽}���<�?�>~��o?��o��o��������?�^����y}�������~z�����7�F�J�K#m-��])jё�؊�������7�仿|�t��,i�]�S�\Hy��2<ϴ�w{�/C
���(��m@�7�H	_���1M�]���0��6�f!�b���X��k���󻾎Y�9��6,ȧ,�^'��Fu.],����u�z��آr'�s2�h>*ih�ڳ��5A��f60�βKT��N���ݮI�i�9JM�z��T��+MJ����e�L���Z#����}fs��7��٬��c�w�i������mfN`&�<�
B`���B��Mc���s�W��3�����QQ�U�R��G�������P��<j�MMR��$�F�,��1S��JnW��3呡�<d���m�-�ڞ�{]��<ʸ[1K4s��T&t;7q���tF�\��<�)�&�{����SN!�Ͷ.Iy�+C���CmgI��=���T��}u-���C�6�x�׎��b6��̝p� -�,&�ue�>�L׺����e��Xj�5�l�~�2t�y<���9(l)j4�F�JJ	�-*W�n3�xh{Ҵs�i��K�O�i�q���nO��䯾�S1�,qxh� �����O�re��f><�*\y��p���P�����Ǖ����!q���n��C{&�+��m�bW��3����\V�$�k���FǱg[��#땡����R��@�U� }���ٳ��O��<b�"��MiդB=3f�:�� ��+Cv����ZE3a&ƉHѧq��.�}�$���}���RL�#a6Q�N1�pPΥJq��+C��墳ap��*BL��ƶ�'L�֮���m�yR0�Ri��Զ�1p���l������½�Aa�̘������б���?C�6�xh5Ԋ�M�r=�-6���o�<F���������2g
�^ԋ�}83u(���\��4��g�N�&0��>�b�]�j���vQG8gy�xhMKl���^�2*�J5A��j�>�x��9�ƀ�%�m���/{,�xR�ve��m�QV8�"��CX�gI�B��m�2��@��f�%'*ő��C�g|Y+V�s�W�^ �r	7�;'v|m����[����VW��C�q��v�`l��b��������J���@�q�y������q�qb����D��G���$�=6�;瘅Z:S.~�ֲ�m��9��"O���#��������ӵ=��8M�A�S}��(�IX���N1��cELj����g6/���I�������;�Ԕ&C��fѧE����� ߲      <   
   x���          6   �   x����k�0 �E�-HWŮ�N��֩I�c����B͇ɺ������{o���K`�5H`��<}���Di����.DO�$��,�T(1�9x��&���s��[F�3�Ƕ���B�j�%�E��|oiDV,0�Ur샗����!���DV�}���3��	t�OVr̟�N�(�?�wK��!�3"�_�زjK(��g����ש1K����.��5�沬+�e^�      8   �	  x��YKoU��W���X~��b��*��D
�JS!vvҤ��MQK���X !���I&㙱�_p�/��p�w]����-�3�q������k����#u��G��w?��ڨ�޹u��ƮZٺYQ7?�ݼ����&}ܼ���u{w��Wu{gk�������ܩ�ݭ�m����;�_ܺ{�>n���o�|sc������?~�ZiV�;�Z��Vk�5����v���7���;�vM韵�׮��]�������HO��=�Ň�o�D�Bi�>�:�՞Z���S�xU��JO�y<�Q<ҳ�(>P�'����Ts���hӝ|੎xg�����κ"��8�n'i��sO��Q�����e��i<�����8t�H�u���?�����Y��C�/�@�D�
�=SY&�E�+����5,� '�=7�U|&����U�!�n���4��Ѥ֟�ѹ��e�D^����m��d!�D���W���Hk�#�9h���v��k@�B�M�).��L�1�`q� ���c�B�A�P���	$����8>�Q���>�w��vt��S��M��Q!�*�ç�~DZ8<�l�x�}Ǜ���D�ǲ1>�|ɩR����k"؀�X8]�8��t8��oS�Rl���F1#|��[�?D�rZѠ��R���Λ#k�LC$��xP�wJ86�I��C�\?����=2�k�{���q"ɷO�u�+9Q��Z�D���~Z���?�^@�@��K�$�r���F�ѭ�[��,���øb�@"�g`A�"n9�����f�v�R�x�_�9�6�����b\��X�� 3������A���,~`�Q��u#��	��Y�yO�RpPU�e>�l�@u
O�b�V|

Ie�殼[^�T�4Ğ�tGG�f�$�Ӹ��y�P��@
u�)&)3-E�-y
%�H�"��g�1N"�*[ɟI�i��I���0�M�%S*be"�G��Q}����6*ʡ�D�{�C%�X�f��G���¿s�N��vC��
 q�Ѣ#�p��N�v^9���E
���YpA�b
��ˍ!����|r�Eb�Z�t�퉜(Ὦ�  z*����R�K�A�]�5z�Nb>�0ՇtNb/��6J�2>n���m뒠CC�(6⣊�_'�	����<��eԔ%1_ή�L�Yֶ^*S�r�LpQ�C,�t��%(R %�`�/K-IWִH-�u��u��	b�Ga�S_�Peʔ@�`��_F/a[dTa)�KB���C�[�Πݩ���V�1����BT��~EN���W��<�s�)f�+���C?"�i�g-�n��W�H�B��ҵ���!0Y���e��V .��/���%H�@�K�^�u�A�M=c��hK.kͼb����=�i��,5Q���ӝ.h'[0aǓj�y��Y&��d'���G�5"`�و �I�0����_�]U�,9�Q�.�m�JA��0"_'I�M �����))9>̴�Y�[%C>N�!H�e�{J�i���20Yrk ��0����F�@�@�̖	�_�m&���a��:��ϲg��~<NN'yJrP,%f[��d�g�F i/�֚+�;�����T���af�h�j����d[^�-1uf(U�6sA��S��)Y��J��B� *E{N�|ҍ���>�q�@��_J-�A(s����4�l:%���_YI��6��W͙��ՙ'�'��M&@Â;����K�������z�Zo6:����U��M� q�% L�v�=\�y�z�Q� �̴J+j;V�ĤG�^X�m+�PP� �Sl8�b�������Adpށ �0�&7����;��ߧڔt�0H�DHS���g�E��C��9Y���#�OW�Rd;#�kن[F1��w2f��}j���LL20�59G�E�������X��FˌJ���ܹU-i�����1?.[�`ͷ�`�Z9�z�f��o�;m���-�ٲ���9�ԓ|Z-��r1(�����a�������x�zĎ�&�p޵��e;���y�Y���+���3�m�0!�+K���R �����
�e�g�N C��D��6`Qf	d'�f�1A`�͸�|�@��v0NϷ�8R�N&5��5�R�8&c�<�)��3s�"�Zɓ�tԕ�CR ����6���ɴ����y�Շ�x�0'e��l �reath& �x�"O�'"��b	�����6:�9Y��0��*��Fj2�ؓW�R�OI9�PZk� �V�W�DΣW��-Ffz�E�-�<�';�,��V��Ʊ�f.D���4��~�Ӭ		y�h��%`b+W\�긠[�قe�mjx�'�:�>7��#�ʂ���f�rA��@�}��Z�B������ %}Ô�����~��;�t��G����,�<4�D����}�L�C<<D'��alP�s\|����؁���P�1(����֒I�IJ|I[滵�-��[�qܚ�����W���FG�      :   
   x���         