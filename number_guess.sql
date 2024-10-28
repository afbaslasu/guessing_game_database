--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 9);
INSERT INTO public.games VALUES (2, 2, 291);
INSERT INTO public.games VALUES (3, 2, 118);
INSERT INTO public.games VALUES (4, 3, 848);
INSERT INTO public.games VALUES (5, 3, 53);
INSERT INTO public.games VALUES (6, 2, 157);
INSERT INTO public.games VALUES (7, 2, 380);
INSERT INTO public.games VALUES (8, 2, 552);
INSERT INTO public.games VALUES (9, 4, 17);
INSERT INTO public.games VALUES (10, 4, 222);
INSERT INTO public.games VALUES (11, 5, 335);
INSERT INTO public.games VALUES (12, 5, 917);
INSERT INTO public.games VALUES (13, 4, 230);
INSERT INTO public.games VALUES (14, 4, 288);
INSERT INTO public.games VALUES (15, 4, 144);
INSERT INTO public.games VALUES (16, 6, 421);
INSERT INTO public.games VALUES (17, 6, 402);
INSERT INTO public.games VALUES (18, 7, 612);
INSERT INTO public.games VALUES (19, 7, 902);
INSERT INTO public.games VALUES (20, 6, 470);
INSERT INTO public.games VALUES (21, 6, 908);
INSERT INTO public.games VALUES (22, 6, 34);
INSERT INTO public.games VALUES (23, 8, 843);
INSERT INTO public.games VALUES (24, 8, 222);
INSERT INTO public.games VALUES (25, 9, 971);
INSERT INTO public.games VALUES (26, 9, 600);
INSERT INTO public.games VALUES (27, 8, 528);
INSERT INTO public.games VALUES (28, 8, 198);
INSERT INTO public.games VALUES (29, 8, 364);
INSERT INTO public.games VALUES (30, 1, 11);
INSERT INTO public.games VALUES (31, 10, 517);
INSERT INTO public.games VALUES (32, 10, 79);
INSERT INTO public.games VALUES (33, 11, 161);
INSERT INTO public.games VALUES (34, 11, 219);
INSERT INTO public.games VALUES (35, 10, 854);
INSERT INTO public.games VALUES (36, 10, 759);
INSERT INTO public.games VALUES (37, 10, 834);
INSERT INTO public.games VALUES (38, 12, 544);
INSERT INTO public.games VALUES (39, 12, 426);
INSERT INTO public.games VALUES (40, 13, 495);
INSERT INTO public.games VALUES (41, 13, 758);
INSERT INTO public.games VALUES (42, 12, 709);
INSERT INTO public.games VALUES (43, 12, 150);
INSERT INTO public.games VALUES (44, 12, 646);
INSERT INTO public.games VALUES (45, 14, 286);
INSERT INTO public.games VALUES (46, 14, 784);
INSERT INTO public.games VALUES (47, 15, 103);
INSERT INTO public.games VALUES (48, 15, 730);
INSERT INTO public.games VALUES (49, 14, 720);
INSERT INTO public.games VALUES (50, 14, 57);
INSERT INTO public.games VALUES (51, 14, 172);
INSERT INTO public.games VALUES (52, 16, 602);
INSERT INTO public.games VALUES (53, 16, 367);
INSERT INTO public.games VALUES (54, 17, 886);
INSERT INTO public.games VALUES (55, 17, 9);
INSERT INTO public.games VALUES (56, 16, 756);
INSERT INTO public.games VALUES (57, 16, 820);
INSERT INTO public.games VALUES (58, 16, 763);
INSERT INTO public.games VALUES (59, 18, 556);
INSERT INTO public.games VALUES (60, 18, 348);
INSERT INTO public.games VALUES (61, 19, 697);
INSERT INTO public.games VALUES (62, 19, 545);
INSERT INTO public.games VALUES (63, 18, 723);
INSERT INTO public.games VALUES (64, 18, 672);
INSERT INTO public.games VALUES (65, 18, 948);
INSERT INTO public.games VALUES (66, 20, 424);
INSERT INTO public.games VALUES (67, 20, 858);
INSERT INTO public.games VALUES (68, 21, 984);
INSERT INTO public.games VALUES (69, 21, 521);
INSERT INTO public.games VALUES (70, 20, 478);
INSERT INTO public.games VALUES (71, 20, 781);
INSERT INTO public.games VALUES (72, 20, 719);
INSERT INTO public.games VALUES (73, 22, 430);
INSERT INTO public.games VALUES (74, 22, 135);
INSERT INTO public.games VALUES (75, 23, 383);
INSERT INTO public.games VALUES (76, 23, 794);
INSERT INTO public.games VALUES (77, 22, 412);
INSERT INTO public.games VALUES (78, 22, 459);
INSERT INTO public.games VALUES (79, 22, 477);
INSERT INTO public.games VALUES (80, 24, 159);
INSERT INTO public.games VALUES (81, 24, 980);
INSERT INTO public.games VALUES (82, 25, 358);
INSERT INTO public.games VALUES (83, 25, 122);
INSERT INTO public.games VALUES (84, 24, 442);
INSERT INTO public.games VALUES (85, 24, 514);
INSERT INTO public.games VALUES (86, 24, 10);
INSERT INTO public.games VALUES (87, 26, 460);
INSERT INTO public.games VALUES (88, 26, 15);
INSERT INTO public.games VALUES (89, 27, 285);
INSERT INTO public.games VALUES (90, 27, 437);
INSERT INTO public.games VALUES (91, 26, 12);
INSERT INTO public.games VALUES (92, 26, 586);
INSERT INTO public.games VALUES (93, 26, 351);
INSERT INTO public.games VALUES (94, 28, 753);
INSERT INTO public.games VALUES (95, 28, 889);
INSERT INTO public.games VALUES (96, 29, 440);
INSERT INTO public.games VALUES (97, 29, 518);
INSERT INTO public.games VALUES (98, 28, 7);
INSERT INTO public.games VALUES (99, 28, 541);
INSERT INTO public.games VALUES (100, 28, 230);
INSERT INTO public.games VALUES (101, 30, 462);
INSERT INTO public.games VALUES (102, 30, 54);
INSERT INTO public.games VALUES (103, 31, 430);
INSERT INTO public.games VALUES (104, 31, 127);
INSERT INTO public.games VALUES (105, 30, 500);
INSERT INTO public.games VALUES (106, 30, 794);
INSERT INTO public.games VALUES (107, 30, 269);
INSERT INTO public.games VALUES (108, 32, 335);
INSERT INTO public.games VALUES (109, 32, 318);
INSERT INTO public.games VALUES (110, 33, 678);
INSERT INTO public.games VALUES (111, 33, 242);
INSERT INTO public.games VALUES (112, 32, 222);
INSERT INTO public.games VALUES (113, 32, 775);
INSERT INTO public.games VALUES (114, 32, 53);
INSERT INTO public.games VALUES (115, 34, 833);
INSERT INTO public.games VALUES (116, 34, 303);
INSERT INTO public.games VALUES (117, 35, 510);
INSERT INTO public.games VALUES (118, 35, 107);
INSERT INTO public.games VALUES (119, 34, 18);
INSERT INTO public.games VALUES (120, 34, 43);
INSERT INTO public.games VALUES (121, 34, 571);
INSERT INTO public.games VALUES (122, 36, 511);
INSERT INTO public.games VALUES (123, 36, 429);
INSERT INTO public.games VALUES (124, 37, 631);
INSERT INTO public.games VALUES (125, 37, 714);
INSERT INTO public.games VALUES (126, 36, 489);
INSERT INTO public.games VALUES (127, 36, 141);
INSERT INTO public.games VALUES (128, 36, 565);
INSERT INTO public.games VALUES (129, 38, 270);
INSERT INTO public.games VALUES (130, 38, 2);
INSERT INTO public.games VALUES (131, 39, 939);
INSERT INTO public.games VALUES (132, 39, 775);
INSERT INTO public.games VALUES (133, 38, 987);
INSERT INTO public.games VALUES (134, 38, 21);
INSERT INTO public.games VALUES (135, 38, 737);
INSERT INTO public.games VALUES (136, 40, 372);
INSERT INTO public.games VALUES (137, 40, 999);
INSERT INTO public.games VALUES (138, 41, 967);
INSERT INTO public.games VALUES (139, 41, 361);
INSERT INTO public.games VALUES (140, 40, 132);
INSERT INTO public.games VALUES (141, 40, 437);
INSERT INTO public.games VALUES (142, 40, 197);
INSERT INTO public.games VALUES (143, 42, 521);
INSERT INTO public.games VALUES (144, 42, 472);
INSERT INTO public.games VALUES (145, 43, 115);
INSERT INTO public.games VALUES (146, 43, 800);
INSERT INTO public.games VALUES (147, 42, 159);
INSERT INTO public.games VALUES (148, 42, 403);
INSERT INTO public.games VALUES (149, 42, 325);
INSERT INTO public.games VALUES (150, 44, 177);
INSERT INTO public.games VALUES (151, 44, 757);
INSERT INTO public.games VALUES (152, 45, 238);
INSERT INTO public.games VALUES (153, 45, 597);
INSERT INTO public.games VALUES (154, 44, 912);
INSERT INTO public.games VALUES (155, 44, 673);
INSERT INTO public.games VALUES (156, 44, 52);
INSERT INTO public.games VALUES (157, 46, 292);
INSERT INTO public.games VALUES (158, 46, 148);
INSERT INTO public.games VALUES (159, 47, 231);
INSERT INTO public.games VALUES (160, 47, 118);
INSERT INTO public.games VALUES (161, 46, 920);
INSERT INTO public.games VALUES (162, 46, 633);
INSERT INTO public.games VALUES (163, 46, 10);
INSERT INTO public.games VALUES (164, 48, 625);
INSERT INTO public.games VALUES (165, 48, 94);
INSERT INTO public.games VALUES (166, 49, 477);
INSERT INTO public.games VALUES (167, 49, 186);
INSERT INTO public.games VALUES (168, 48, 816);
INSERT INTO public.games VALUES (169, 48, 883);
INSERT INTO public.games VALUES (170, 48, 620);
INSERT INTO public.games VALUES (171, 50, 231);
INSERT INTO public.games VALUES (172, 50, 83);
INSERT INTO public.games VALUES (173, 51, 637);
INSERT INTO public.games VALUES (174, 51, 640);
INSERT INTO public.games VALUES (175, 50, 545);
INSERT INTO public.games VALUES (176, 50, 988);
INSERT INTO public.games VALUES (177, 50, 177);
INSERT INTO public.games VALUES (178, 52, 269);
INSERT INTO public.games VALUES (179, 52, 940);
INSERT INTO public.games VALUES (180, 53, 353);
INSERT INTO public.games VALUES (181, 53, 842);
INSERT INTO public.games VALUES (182, 52, 264);
INSERT INTO public.games VALUES (183, 52, 687);
INSERT INTO public.games VALUES (184, 52, 419);
INSERT INTO public.games VALUES (185, 54, 720);
INSERT INTO public.games VALUES (186, 54, 55);
INSERT INTO public.games VALUES (187, 55, 497);
INSERT INTO public.games VALUES (188, 55, 983);
INSERT INTO public.games VALUES (189, 54, 518);
INSERT INTO public.games VALUES (190, 54, 196);
INSERT INTO public.games VALUES (191, 54, 337);
INSERT INTO public.games VALUES (192, 56, 603);
INSERT INTO public.games VALUES (193, 56, 32);
INSERT INTO public.games VALUES (194, 57, 607);
INSERT INTO public.games VALUES (195, 57, 334);
INSERT INTO public.games VALUES (196, 56, 99);
INSERT INTO public.games VALUES (197, 56, 309);
INSERT INTO public.games VALUES (198, 56, 863);
INSERT INTO public.games VALUES (199, 58, 834);
INSERT INTO public.games VALUES (200, 58, 758);
INSERT INTO public.games VALUES (201, 59, 751);
INSERT INTO public.games VALUES (202, 59, 719);
INSERT INTO public.games VALUES (203, 58, 515);
INSERT INTO public.games VALUES (204, 58, 813);
INSERT INTO public.games VALUES (205, 58, 523);
INSERT INTO public.games VALUES (206, 60, 493);
INSERT INTO public.games VALUES (207, 60, 224);
INSERT INTO public.games VALUES (208, 61, 354);
INSERT INTO public.games VALUES (209, 61, 761);
INSERT INTO public.games VALUES (210, 60, 713);
INSERT INTO public.games VALUES (211, 60, 282);
INSERT INTO public.games VALUES (212, 60, 35);
INSERT INTO public.games VALUES (213, 62, 32);
INSERT INTO public.games VALUES (214, 62, 668);
INSERT INTO public.games VALUES (215, 63, 974);
INSERT INTO public.games VALUES (216, 63, 181);
INSERT INTO public.games VALUES (217, 62, 119);
INSERT INTO public.games VALUES (218, 62, 300);
INSERT INTO public.games VALUES (219, 62, 502);
INSERT INTO public.games VALUES (220, 64, 192);
INSERT INTO public.games VALUES (221, 64, 45);
INSERT INTO public.games VALUES (222, 65, 467);
INSERT INTO public.games VALUES (223, 65, 504);
INSERT INTO public.games VALUES (224, 64, 333);
INSERT INTO public.games VALUES (225, 64, 747);
INSERT INTO public.games VALUES (226, 64, 495);
INSERT INTO public.games VALUES (227, 66, 507);
INSERT INTO public.games VALUES (228, 66, 142);
INSERT INTO public.games VALUES (229, 67, 852);
INSERT INTO public.games VALUES (230, 67, 942);
INSERT INTO public.games VALUES (231, 66, 490);
INSERT INTO public.games VALUES (232, 66, 656);
INSERT INTO public.games VALUES (233, 66, 319);
INSERT INTO public.games VALUES (234, 68, 762);
INSERT INTO public.games VALUES (235, 68, 704);
INSERT INTO public.games VALUES (236, 69, 654);
INSERT INTO public.games VALUES (237, 69, 475);
INSERT INTO public.games VALUES (238, 68, 479);
INSERT INTO public.games VALUES (239, 68, 1000);
INSERT INTO public.games VALUES (240, 68, 914);
INSERT INTO public.games VALUES (241, 70, 23);
INSERT INTO public.games VALUES (242, 70, 113);
INSERT INTO public.games VALUES (243, 71, 818);
INSERT INTO public.games VALUES (244, 71, 836);
INSERT INTO public.games VALUES (245, 70, 212);
INSERT INTO public.games VALUES (246, 70, 621);
INSERT INTO public.games VALUES (247, 70, 560);
INSERT INTO public.games VALUES (248, 72, 900);
INSERT INTO public.games VALUES (249, 72, 351);
INSERT INTO public.games VALUES (250, 73, 493);
INSERT INTO public.games VALUES (251, 73, 326);
INSERT INTO public.games VALUES (252, 72, 46);
INSERT INTO public.games VALUES (253, 72, 292);
INSERT INTO public.games VALUES (254, 72, 348);
INSERT INTO public.games VALUES (255, 74, 830);
INSERT INTO public.games VALUES (256, 74, 206);
INSERT INTO public.games VALUES (257, 75, 224);
INSERT INTO public.games VALUES (258, 75, 485);
INSERT INTO public.games VALUES (259, 74, 308);
INSERT INTO public.games VALUES (260, 74, 427);
INSERT INTO public.games VALUES (261, 74, 47);
INSERT INTO public.games VALUES (262, 76, 979);
INSERT INTO public.games VALUES (263, 76, 974);
INSERT INTO public.games VALUES (264, 77, 793);
INSERT INTO public.games VALUES (265, 77, 768);
INSERT INTO public.games VALUES (266, 76, 266);
INSERT INTO public.games VALUES (267, 76, 695);
INSERT INTO public.games VALUES (268, 76, 91);
INSERT INTO public.games VALUES (269, 78, 28);
INSERT INTO public.games VALUES (270, 78, 619);
INSERT INTO public.games VALUES (271, 79, 958);
INSERT INTO public.games VALUES (272, 79, 817);
INSERT INTO public.games VALUES (273, 78, 9);
INSERT INTO public.games VALUES (274, 78, 245);
INSERT INTO public.games VALUES (275, 78, 243);
INSERT INTO public.games VALUES (276, 80, 329);
INSERT INTO public.games VALUES (277, 80, 861);
INSERT INTO public.games VALUES (278, 81, 568);
INSERT INTO public.games VALUES (279, 81, 522);
INSERT INTO public.games VALUES (280, 80, 362);
INSERT INTO public.games VALUES (281, 80, 820);
INSERT INTO public.games VALUES (282, 80, 538);
INSERT INTO public.games VALUES (283, 82, 390);
INSERT INTO public.games VALUES (284, 82, 120);
INSERT INTO public.games VALUES (285, 83, 581);
INSERT INTO public.games VALUES (286, 83, 43);
INSERT INTO public.games VALUES (287, 82, 620);
INSERT INTO public.games VALUES (288, 82, 829);
INSERT INTO public.games VALUES (289, 82, 651);
INSERT INTO public.games VALUES (290, 84, 884);
INSERT INTO public.games VALUES (291, 84, 176);
INSERT INTO public.games VALUES (292, 85, 126);
INSERT INTO public.games VALUES (293, 85, 777);
INSERT INTO public.games VALUES (294, 84, 631);
INSERT INTO public.games VALUES (295, 84, 820);
INSERT INTO public.games VALUES (296, 84, 553);
INSERT INTO public.games VALUES (297, 86, 458);
INSERT INTO public.games VALUES (298, 86, 289);
INSERT INTO public.games VALUES (299, 87, 641);
INSERT INTO public.games VALUES (300, 87, 322);
INSERT INTO public.games VALUES (301, 86, 94);
INSERT INTO public.games VALUES (302, 86, 862);
INSERT INTO public.games VALUES (303, 86, 124);
INSERT INTO public.games VALUES (304, 88, 186);
INSERT INTO public.games VALUES (305, 88, 556);
INSERT INTO public.games VALUES (306, 89, 325);
INSERT INTO public.games VALUES (307, 89, 261);
INSERT INTO public.games VALUES (308, 88, 127);
INSERT INTO public.games VALUES (309, 88, 545);
INSERT INTO public.games VALUES (310, 88, 115);
INSERT INTO public.games VALUES (311, 90, 664);
INSERT INTO public.games VALUES (312, 90, 88);
INSERT INTO public.games VALUES (313, 91, 319);
INSERT INTO public.games VALUES (314, 91, 492);
INSERT INTO public.games VALUES (315, 90, 298);
INSERT INTO public.games VALUES (316, 90, 930);
INSERT INTO public.games VALUES (317, 90, 924);
INSERT INTO public.games VALUES (318, 92, 241);
INSERT INTO public.games VALUES (319, 92, 267);
INSERT INTO public.games VALUES (320, 93, 653);
INSERT INTO public.games VALUES (321, 93, 305);
INSERT INTO public.games VALUES (322, 92, 874);
INSERT INTO public.games VALUES (323, 92, 376);
INSERT INTO public.games VALUES (324, 92, 87);
INSERT INTO public.games VALUES (325, 94, 494);
INSERT INTO public.games VALUES (326, 94, 543);
INSERT INTO public.games VALUES (327, 95, 502);
INSERT INTO public.games VALUES (328, 95, 772);
INSERT INTO public.games VALUES (329, 94, 109);
INSERT INTO public.games VALUES (330, 94, 602);
INSERT INTO public.games VALUES (331, 94, 635);
INSERT INTO public.games VALUES (332, 96, 264);
INSERT INTO public.games VALUES (333, 96, 485);
INSERT INTO public.games VALUES (334, 97, 979);
INSERT INTO public.games VALUES (335, 97, 415);
INSERT INTO public.games VALUES (336, 96, 722);
INSERT INTO public.games VALUES (337, 96, 568);
INSERT INTO public.games VALUES (338, 96, 142);
INSERT INTO public.games VALUES (339, 98, 213);
INSERT INTO public.games VALUES (340, 98, 788);
INSERT INTO public.games VALUES (341, 99, 30);
INSERT INTO public.games VALUES (342, 99, 553);
INSERT INTO public.games VALUES (343, 98, 962);
INSERT INTO public.games VALUES (344, 98, 568);
INSERT INTO public.games VALUES (345, 98, 900);
INSERT INTO public.games VALUES (346, 100, 444);
INSERT INTO public.games VALUES (347, 100, 337);
INSERT INTO public.games VALUES (348, 101, 277);
INSERT INTO public.games VALUES (349, 101, 452);
INSERT INTO public.games VALUES (350, 100, 961);
INSERT INTO public.games VALUES (351, 100, 729);
INSERT INTO public.games VALUES (352, 100, 47);
INSERT INTO public.games VALUES (353, 102, 762);
INSERT INTO public.games VALUES (354, 102, 634);
INSERT INTO public.games VALUES (355, 103, 420);
INSERT INTO public.games VALUES (356, 103, 135);
INSERT INTO public.games VALUES (357, 102, 808);
INSERT INTO public.games VALUES (358, 102, 539);
INSERT INTO public.games VALUES (359, 102, 781);
INSERT INTO public.games VALUES (360, 104, 160);
INSERT INTO public.games VALUES (361, 104, 184);
INSERT INTO public.games VALUES (362, 105, 486);
INSERT INTO public.games VALUES (363, 105, 293);
INSERT INTO public.games VALUES (364, 104, 767);
INSERT INTO public.games VALUES (365, 104, 518);
INSERT INTO public.games VALUES (366, 104, 81);
INSERT INTO public.games VALUES (367, 106, 228);
INSERT INTO public.games VALUES (368, 106, 641);
INSERT INTO public.games VALUES (369, 107, 490);
INSERT INTO public.games VALUES (370, 107, 496);
INSERT INTO public.games VALUES (371, 106, 231);
INSERT INTO public.games VALUES (372, 106, 335);
INSERT INTO public.games VALUES (373, 106, 346);
INSERT INTO public.games VALUES (374, 108, 620);
INSERT INTO public.games VALUES (375, 108, 746);
INSERT INTO public.games VALUES (376, 109, 823);
INSERT INTO public.games VALUES (377, 109, 419);
INSERT INTO public.games VALUES (378, 108, 273);
INSERT INTO public.games VALUES (379, 108, 535);
INSERT INTO public.games VALUES (380, 108, 600);
INSERT INTO public.games VALUES (381, 110, 351);
INSERT INTO public.games VALUES (382, 110, 843);
INSERT INTO public.games VALUES (383, 111, 35);
INSERT INTO public.games VALUES (384, 111, 210);
INSERT INTO public.games VALUES (385, 110, 691);
INSERT INTO public.games VALUES (386, 110, 407);
INSERT INTO public.games VALUES (387, 110, 951);
INSERT INTO public.games VALUES (388, 112, 86);
INSERT INTO public.games VALUES (389, 112, 586);
INSERT INTO public.games VALUES (390, 113, 182);
INSERT INTO public.games VALUES (391, 113, 473);
INSERT INTO public.games VALUES (392, 112, 835);
INSERT INTO public.games VALUES (393, 112, 969);
INSERT INTO public.games VALUES (394, 112, 333);
INSERT INTO public.games VALUES (395, 114, 766);
INSERT INTO public.games VALUES (396, 114, 164);
INSERT INTO public.games VALUES (397, 115, 639);
INSERT INTO public.games VALUES (398, 115, 687);
INSERT INTO public.games VALUES (399, 114, 652);
INSERT INTO public.games VALUES (400, 114, 515);
INSERT INTO public.games VALUES (401, 114, 274);
INSERT INTO public.games VALUES (402, 116, 304);
INSERT INTO public.games VALUES (403, 116, 143);
INSERT INTO public.games VALUES (404, 117, 797);
INSERT INTO public.games VALUES (405, 117, 915);
INSERT INTO public.games VALUES (406, 116, 637);
INSERT INTO public.games VALUES (407, 116, 791);
INSERT INTO public.games VALUES (408, 116, 232);
INSERT INTO public.games VALUES (409, 118, 512);
INSERT INTO public.games VALUES (410, 118, 684);
INSERT INTO public.games VALUES (411, 119, 780);
INSERT INTO public.games VALUES (412, 119, 466);
INSERT INTO public.games VALUES (413, 118, 437);
INSERT INTO public.games VALUES (414, 118, 194);
INSERT INTO public.games VALUES (415, 118, 737);
INSERT INTO public.games VALUES (416, 120, 22);
INSERT INTO public.games VALUES (417, 120, 514);
INSERT INTO public.games VALUES (418, 121, 520);
INSERT INTO public.games VALUES (419, 121, 707);
INSERT INTO public.games VALUES (420, 120, 425);
INSERT INTO public.games VALUES (421, 120, 626);
INSERT INTO public.games VALUES (422, 120, 59);
INSERT INTO public.games VALUES (423, 122, 28);
INSERT INTO public.games VALUES (424, 122, 646);
INSERT INTO public.games VALUES (425, 123, 454);
INSERT INTO public.games VALUES (426, 123, 901);
INSERT INTO public.games VALUES (427, 122, 258);
INSERT INTO public.games VALUES (428, 122, 46);
INSERT INTO public.games VALUES (429, 122, 82);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (68, 'user_1730104164258', 5, 479);
INSERT INTO public.users VALUES (49, 'user_1730104134724', 2, 186);
INSERT INTO public.users VALUES (13, 'user_1730101743798', 2, 495);
INSERT INTO public.users VALUES (3, 'user_1730099643440', 2, 53);
INSERT INTO public.users VALUES (2, 'user_1730099643441', 5, 118);
INSERT INTO public.users VALUES (23, 'user_1730103069925', 2, 383);
INSERT INTO public.users VALUES (12, 'user_1730101743799', 5, 150);
INSERT INTO public.users VALUES (48, 'user_1730104134725', 5, 94);
INSERT INTO public.users VALUES (5, 'user_1730100185542', 2, 335);
INSERT INTO public.users VALUES (22, 'user_1730103069926', 5, 135);
INSERT INTO public.users VALUES (4, 'user_1730100185543', 5, 17);
INSERT INTO public.users VALUES (37, 'user_1730104118383', 2, 631);
INSERT INTO public.users VALUES (15, 'user_1730102294364', 2, 103);
INSERT INTO public.users VALUES (97, 'user_1730104254892', 2, 415);
INSERT INTO public.users VALUES (82, 'user_1730104239884', 5, 120);
INSERT INTO public.users VALUES (7, 'user_1730100189103', 2, 612);
INSERT INTO public.users VALUES (14, 'user_1730102294365', 5, 57);
INSERT INTO public.users VALUES (61, 'user_1730104152343', 2, 354);
INSERT INTO public.users VALUES (6, 'user_1730100189104', 5, 34);
INSERT INTO public.users VALUES (36, 'user_1730104118384', 5, 141);
INSERT INTO public.users VALUES (25, 'user_1730103419790', 2, 122);
INSERT INTO public.users VALUES (9, 'user_1730100738553', 2, 600);
INSERT INTO public.users VALUES (17, 'user_1730103045992', 2, 9);
INSERT INTO public.users VALUES (24, 'user_1730103419791', 5, 10);
INSERT INTO public.users VALUES (8, 'user_1730100738554', 5, 198);
INSERT INTO public.users VALUES (16, 'user_1730103045993', 5, 367);
INSERT INTO public.users VALUES (89, 'user_1730104246230', 2, 261);
INSERT INTO public.users VALUES (51, 'user_1730104137728', 2, 637);
INSERT INTO public.users VALUES (60, 'user_1730104152344', 5, 35);
INSERT INTO public.users VALUES (11, 'user_1730101367411', 2, 161);
INSERT INTO public.users VALUES (10, 'user_1730101367412', 5, 79);
INSERT INTO public.users VALUES (39, 'user_1730104121148', 2, 775);
INSERT INTO public.users VALUES (19, 'user_1730103055554', 2, 545);
INSERT INTO public.users VALUES (27, 'user_1730103550400', 2, 285);
INSERT INTO public.users VALUES (50, 'user_1730104137729', 5, 83);
INSERT INTO public.users VALUES (18, 'user_1730103055555', 5, 348);
INSERT INTO public.users VALUES (38, 'user_1730104121149', 5, 2);
INSERT INTO public.users VALUES (26, 'user_1730103550401', 5, 12);
INSERT INTO public.users VALUES (76, 'user_1730104233388', 5, 91);
INSERT INTO public.users VALUES (21, 'user_1730103062647', 2, 521);
INSERT INTO public.users VALUES (71, 'user_1730104166801', 2, 818);
INSERT INTO public.users VALUES (20, 'user_1730103062648', 5, 424);
INSERT INTO public.users VALUES (29, 'user_1730103708437', 2, 440);
INSERT INTO public.users VALUES (28, 'user_1730103708438', 5, 7);
INSERT INTO public.users VALUES (41, 'user_1730104123973', 2, 361);
INSERT INTO public.users VALUES (53, 'user_1730104140754', 2, 353);
INSERT INTO public.users VALUES (70, 'user_1730104166802', 5, 23);
INSERT INTO public.users VALUES (40, 'user_1730104123974', 5, 132);
INSERT INTO public.users VALUES (63, 'user_1730104155465', 2, 181);
INSERT INTO public.users VALUES (31, 'user_1730104071760', 2, 127);
INSERT INTO public.users VALUES (52, 'user_1730104140755', 5, 264);
INSERT INTO public.users VALUES (30, 'user_1730104071761', 5, 54);
INSERT INTO public.users VALUES (92, 'user_1730104250343', 5, 87);
INSERT INTO public.users VALUES (62, 'user_1730104155466', 5, 32);
INSERT INTO public.users VALUES (43, 'user_1730104126872', 2, 115);
INSERT INTO public.users VALUES (33, 'user_1730104073981', 2, 242);
INSERT INTO public.users VALUES (42, 'user_1730104126873', 5, 159);
INSERT INTO public.users VALUES (32, 'user_1730104073982', 5, 53);
INSERT INTO public.users VALUES (55, 'user_1730104143709', 2, 497);
INSERT INTO public.users VALUES (54, 'user_1730104143710', 5, 55);
INSERT INTO public.users VALUES (45, 'user_1730104129277', 2, 238);
INSERT INTO public.users VALUES (35, 'user_1730104076336', 2, 107);
INSERT INTO public.users VALUES (88, 'user_1730104246231', 5, 115);
INSERT INTO public.users VALUES (44, 'user_1730104129278', 5, 52);
INSERT INTO public.users VALUES (34, 'user_1730104076337', 5, 18);
INSERT INTO public.users VALUES (79, 'user_1730104235553', 2, 817);
INSERT INTO public.users VALUES (65, 'user_1730104158508', 2, 467);
INSERT INTO public.users VALUES (73, 'user_1730104229255', 2, 326);
INSERT INTO public.users VALUES (85, 'user_1730104242003', 2, 126);
INSERT INTO public.users VALUES (64, 'user_1730104158509', 5, 45);
INSERT INTO public.users VALUES (57, 'user_1730104146818', 2, 334);
INSERT INTO public.users VALUES (47, 'user_1730104132390', 2, 118);
INSERT INTO public.users VALUES (56, 'user_1730104146819', 5, 32);
INSERT INTO public.users VALUES (46, 'user_1730104132391', 5, 10);
INSERT INTO public.users VALUES (110, 'user_1730104273146', 5, 351);
INSERT INTO public.users VALUES (72, 'user_1730104229256', 5, 46);
INSERT INTO public.users VALUES (78, 'user_1730104235554', 5, 9);
INSERT INTO public.users VALUES (67, 'user_1730104161719', 2, 852);
INSERT INTO public.users VALUES (84, 'user_1730104242004', 5, 176);
INSERT INTO public.users VALUES (59, 'user_1730104149635', 2, 719);
INSERT INTO public.users VALUES (66, 'user_1730104161720', 5, 142);
INSERT INTO public.users VALUES (58, 'user_1730104149636', 5, 515);
INSERT INTO public.users VALUES (96, 'user_1730104254893', 5, 142);
INSERT INTO public.users VALUES (75, 'user_1730104231225', 2, 224);
INSERT INTO public.users VALUES (74, 'user_1730104231226', 5, 47);
INSERT INTO public.users VALUES (69, 'user_1730104164257', 2, 475);
INSERT INTO public.users VALUES (81, 'user_1730104237873', 2, 522);
INSERT INTO public.users VALUES (103, 'user_1730104261773', 2, 135);
INSERT INTO public.users VALUES (80, 'user_1730104237874', 5, 329);
INSERT INTO public.users VALUES (101, 'user_1730104259130', 2, 277);
INSERT INTO public.users VALUES (91, 'user_1730104248267', 2, 319);
INSERT INTO public.users VALUES (87, 'user_1730104244097', 2, 322);
INSERT INTO public.users VALUES (77, 'user_1730104233387', 2, 768);
INSERT INTO public.users VALUES (95, 'user_1730104252693', 2, 502);
INSERT INTO public.users VALUES (105, 'user_1730104264115', 2, 293);
INSERT INTO public.users VALUES (90, 'user_1730104248268', 5, 88);
INSERT INTO public.users VALUES (86, 'user_1730104244098', 5, 94);
INSERT INTO public.users VALUES (83, 'user_1730104239883', 2, 43);
INSERT INTO public.users VALUES (94, 'user_1730104252694', 5, 109);
INSERT INTO public.users VALUES (107, 'user_1730104268158', 2, 490);
INSERT INTO public.users VALUES (99, 'user_1730104257020', 2, 30);
INSERT INTO public.users VALUES (100, 'user_1730104259131', 5, 47);
INSERT INTO public.users VALUES (93, 'user_1730104250342', 2, 305);
INSERT INTO public.users VALUES (102, 'user_1730104261774', 5, 539);
INSERT INTO public.users VALUES (98, 'user_1730104257021', 5, 213);
INSERT INTO public.users VALUES (108, 'user_1730104270859', 5, 273);
INSERT INTO public.users VALUES (104, 'user_1730104264116', 5, 81);
INSERT INTO public.users VALUES (106, 'user_1730104268159', 5, 228);
INSERT INTO public.users VALUES (109, 'user_1730104270858', 2, 419);
INSERT INTO public.users VALUES (111, 'user_1730104273145', 2, 35);
INSERT INTO public.users VALUES (113, 'user_1730104275825', 2, 182);
INSERT INTO public.users VALUES (112, 'user_1730104275826', 5, 86);
INSERT INTO public.users VALUES (115, 'user_1730104387494', 2, 639);
INSERT INTO public.users VALUES (114, 'user_1730104387495', 5, 164);
INSERT INTO public.users VALUES (117, 'user_1730104389795', 2, 797);
INSERT INTO public.users VALUES (116, 'user_1730104389796', 5, 143);
INSERT INTO public.users VALUES (118, 'user_1730104392710', 5, 194);
INSERT INTO public.users VALUES (119, 'user_1730104392709', 2, 466);
INSERT INTO public.users VALUES (121, 'user_1730104517608', 2, 520);
INSERT INTO public.users VALUES (120, 'user_1730104517609', 5, 22);
INSERT INTO public.users VALUES (1, 'Smiley', 3, 9);
INSERT INTO public.users VALUES (123, 'user_1730104524328', 2, 454);
INSERT INTO public.users VALUES (122, 'user_1730104524329', 5, 28);
INSERT INTO public.users VALUES (124, 'user_1730106511344', 5, 259);
INSERT INTO public.users VALUES (125, 'user_1730106511343', 2, 256);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 429, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 125, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

