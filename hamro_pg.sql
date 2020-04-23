CREATE TABLE public.auth_user (
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
    date_joined timestamp with time zone NOT NULL
);




(id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
30	pbkdf2_sha256$150000$4W8lOEV7uScj$SjCHEl815W11SjSv9ccuiZjHFV5Z8NXP4gMSldb/oeA=	\N	f	Doma				f	t	2019-11-13 16:27:10+05:30
31	pbkdf2_sha256$150000$hxhGs2ibJdL0$PzEgl76nhKieZx/zaMPs+6aSPWQOppTVqOAd+7WNc1k=	\N	f	Gazebo				f	t	2019-11-13 16:27:50+05:30
29	pbkdf2_sha256$150000$ZqAIgz5qRelY$QGRFgKgMhJtrH0/CBsfXDS4sYjfbZzM/Vt1/3D9lTbs=	2019-11-14 08:38:01+05:30	f	Carewell				f	t	2019-11-13 16:26:20+05:30
32	pbkdf2_sha256$150000$VTxZrGohHPAL$zpCd2+0mgJMapdW+0gyDi+8TVg6uadmfD//ynp0ckiM=	\N	f	Image				f	t	2019-11-13 16:28:22+05:30
33	pbkdf2_sha256$150000$B3dIH8iKgOCj$mUjfZgWuaYxhXOvndFFQQjOrMv1Eh+177armNcGIGo8=	\N	f	Maya				f	t	2019-11-13 16:28:58+05:30
42	pbkdf2_sha256$150000$BNzp5d8GdcaX$HuG4EoifZ+6AxeiqMItFycevDITD0wK0B5mmmrN8yTA=	\N	f	rahul				f	t	2019-11-22 14:18:18.608882+05:30
34	pbkdf2_sha256$150000$dnVDQFLbWk1q$56I9YhUjr6HeCwZAHBR0AvDlsynzg5qAQFWHWCYkHDQ=	\N	f	Palmu				f	t	2019-11-13 16:29:31+05:30
35	pbkdf2_sha256$150000$yiJvVoUggZAV$xuOIs3sYqRp9WQ2gVNrQLUmFdpqfzPvHSWwV9IfOZno=	\N	f	Royal				f	t	2019-11-13 16:30:26+05:30
36	pbkdf2_sha256$150000$nKyKcP3MUgEA$cc+IOkPy7wNjg94+wNyMHcyzOqbGbtCJ4QljII3X+qg=	\N	f	Sagar				f	t	2019-11-13 16:30:56+05:30
1	pbkdf2_sha256$150000$v4fpKz771tY2$8nJi2FGXDwzuqqsFssxwFf7lk15cihMvuxLqc9cCq7I=	2019-11-22 14:15:24+05:30	t	deba			debanjanbarman123456789@gmail.com	t	t	2019-10-26 21:38:11+05:30
43	pbkdf2_sha256$150000$6PFB550e2Gj8$vs9iLSnBr0KjfRAZbLHnPU+PxxDmJwpnabHXwhAyk20=	2019-11-26 21:22:50.260546+05:30	t	debanjan			debanjanbarman123456789@gmail.com	t	t	2019-11-22 14:28:48.139291+05:30
38	pbkdf2_sha256$150000$0BXOwcyLBQxa$3Cj67QqCnol22o9kM0wxYYADHCaoD+oyVM7P4ANTR98=	\N	f	Rohan			rohanbhattarai1994@gmail.com	f	t	2019-11-20 15:37:03.676206+05:30
44	pbkdf2_sha256$150000$gsNPejfAX8PQ$jm8pCH/CdlWD6AQpDSfWMkArbwJCw06X+Zs5+EUAzL8=	\N	f	bishnu			dfgyndf@sdfgh.com	f	t	2019-11-26 21:24:51.885386+05:30
41	pbkdf2_sha256$150000$oroimuhrA7b9$/PNuSMHKocowpSiFarRLF/28rVxkpxl/2S/X2rIND0s=	\N	f	NewPg			debanjanbarman123456789@gmail.comhh	f	t	2019-11-20 22:36:09.205232+05:30


(id, "pgName", "pgCity", "pgLocation", "pgAddress", "pgImage1", "pgImage2", "pgImage3", "pgRating", "pgDescription", "pgRules", "pgFood", "pgRoom", "pgCharge", "pgBathroom", "pgFor", "pgLaundry", "pgWiFi", "pgMail", "pgPhone", user_id) FROM stdin;
23	Doma PG	Gangtok	Development area	Development area, near TNSS School, Gangtok, Sikkim.	pg_pics/1_n5of7tk.jpg	pg_pics/2_I8Zlh9S.jpg	pg_pics/3_KMKub1V.jpg	4	Very Good PG Located in Development area Near TNSS School, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.\r\n5. Only mother’s are allowed to visit.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	3	5000	t	Boys	f	f	dummy@mail.com	1234456789	30
24	Gazebo PG	Gangtok	Lower Sichey	Lower Sichey, near Sikkim ICFAI University, Gangtok, Sikkim.	pg_pics/1_VmacNiz.jpg	pg_pics/1_YQHBy9l.jpg	pg_pics/1_UPfYS1j.jpg	5	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.\r\n5. Only mother’s are allowed to visit.	3 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	5000	t	Only Girls	t	f	dummy@mail.com	1234567899	31
25	Image PG	Gangtok	Lower sichey	Lower sichey, near Barpipal Mandir, Gangtok, Sikkim.	pg_pics/2_r0vX9vH.jpg	pg_pics/1_6ocx4TM.jpg	pg_pics/3_rD2D928.jpg	3	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	6000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	32
22	Carewell PG	Gangtok	5th Mile Tadong	5th Mile Tadong, near Sikkim Manipal University, Gangtok, Sikkim.	pg_pics/1_chQ0ZsC.jpg	pg_pics/2_W6bJfpq.jpg	pg_pics/3_yOanU6Z.jpg	4	Very Good PG Located in Tadong Near Sikkim Manipal  University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate will be closed after 9:00 pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	3 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	34	7500	t	Boys and Girls	t	t	dummy@mail.com	1234567899	29
26	Maya PG	Gangtok	5th mile	5th mile, Joredhara, Gangtok, Sikkim.	pg_pics/1_5jrkoi4.jpg	pg_pics/2_Js7ncvl.jpg	pg_pics/3_ZvuTCPr.jpg	4	Very Good PG Located in 5'th Mile, near Sikkim SRM University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	4	5000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	33
28	Royal PG	Gangtok	Lower Sichey	Lower Sichey, Near Barpipal, Gangtok, Sikkim.	pg_pics/1_wi6uXBD.jpg	pg_pics/2_dr3ytUA.jpg	pg_pics/1_HEuEUPB.jpg	4	Very Good PG Located in Lower Sichey, near Sikkim ICFAI University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	6000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	35
27	Palmu PG	Gangtok	Burtuk	Near Burtuk School, Burtuk, Gangtok, Sikkim.	pg_pics/1_yhjDxzk.jpg	pg_pics/2_ySUakPb.jpg	pg_pics/3_1KTUjSH.jpg	5	Very Good PG Located in Burtuk, Near  Burtuk School, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 8:00pm.\r\n3. One year compulsory to stay for students.\r\n4. Smoking and drinking prohibited.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	5	5000	t	Boys and Girls	t	f	dummy@mail.com	1234456789	34
29	Sagar PG	Gangtok	5th Mile	5th Mile Tadong, near SRM University, Gangtok, Sikkim.	pg_pics/1_OBvM08P.jpg	pg_pics/2_ADhPdim.jpg	pg_pics/3_WaWufHU.jpg	4	Very Good PG Located in 5'th Mile, near Sikkim SRM University, Friendly Environment, Best for students.	1. Information required for staying in pg\r\n2. Gate closed after 9:00pm.\r\n3. Smoking and drinking prohibited.\r\n4. Outsiders not allowed.	2 Times non-veg in a week,\r\nBreakfast, Lunch and Dinner available,\r\nHot water Available.	3	6000	t	Boys and Girls	t	t	dummy@mail.com	1234456789	36
33	Rahul Pg	gangtok	tadong	tadong	pg_pics/2_kSOwggK.jpg	pg_pics/6_qDC5h1T.jpeg	pg_pics/7_h963ajs.jpeg	4	nice pg	no smoking	rice fish	12	6500	t	Boys and Girls	t	t	deuum@jhsdf.com	123456789	42


