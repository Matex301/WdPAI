-- Adminer 4.8.1 PostgreSQL 16.0 (Debian 16.0-1.pgdg120+1) dump

DROP TABLE IF EXISTS "races";
DROP SEQUENCE IF EXISTS races_id_seq;
CREATE SEQUENCE races_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."races" (
    "id" integer DEFAULT nextval('races_id_seq') NOT NULL,
    "name" character varying(50) NOT NULL,
    "speed" integer DEFAULT '30' NOT NULL,
    "subrace" integer,
    CONSTRAINT "rases_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "races" ("id", "name", "speed", "subrace") VALUES
(1,	'Human',	30,	NULL),
(2,	'Human (Variant)',	30,	1),
(3,	'Elf',	30,	NULL),
(4,	'Elf (Drow)',	30,	3),
(5,	'Elf (Shadar-kai)',	30,	3);

DROP TABLE IF EXISTS "racesEntry";
DROP SEQUENCE IF EXISTS "racesEntry_id_seq";
CREATE SEQUENCE "racesEntry_id_seq" INCREMENT  MINVALUE  MAXVALUE  CACHE ;

CREATE TABLE "public"."racesEntry" (
    "id" integer DEFAULT nextval('"racesEntry_id_seq"') NOT NULL,
    "race" integer,
    "name" character varying(50) NOT NULL,
    "description" text NOT NULL,
    CONSTRAINT "racesEntry_pk" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "racesEntry" ("id", "race", "name", "description") VALUES
(1,	1,	'Age',	'Humans reach adulthood in their late teens and live less than a century.'),
(2,	1,	'Size',	'Humans vary widely in height and build, from barely 5 feet to well over 6 feet tall. Regardless of your position in that range, your size is Medium.'),
(3,	1,	'Languages',	'You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on.'),
(4,	2,	'Age',	'Humans reach adulthood in their late teens and live less than a century.'),
(5,	2,	'Size',	'Humans vary widely in height and build, from barely 5 feet to well over 6 feet tall. Regardless of your position in that range, your size is Medium.'),
(6,	2,	'Languages',	'You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on.'),
(7,	2,	'Skills',	'You gain proficiency in one skill of your choice.'),
(8,	2,	'Feat',	'You gain one feat of your choice.'),
(9,	3,	'Age',	'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.'),
(10,	3,	'Size',	'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.'),
(11,	3,	'Darkvision',	'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'),
(14,	3,	'Trance',	'Elves don''t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is "trance.") While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.'),
(15,	3,	'Languages',	'You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.'),
(13,	3,	'Fey Ancestry',	'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.'),
(12,	3,	'Keen Senses',	'You have proficiency in the Perception skill.'),
(16,	4,	'Age',	'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.'),
(17,	4,	'Size',	'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.'),
(18,	4,	'Superior Darkvision',	'Accustomed to the depths of the Underdark, you have superior vision in dark and dim conditions. You can see in dim light within 120 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'),
(19,	4,	'Keen Senses',	'You have proficiency in the Perception skill.'),
(20,	4,	'Fey Ancestry',	'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.'),
(21,	4,	'Trance',	'Elves don''t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is "trance.") While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.'),
(22,	4,	'Languages',	'You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.'),
(23,	4,	'Sunlight Sensitivity',	'You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight.'),
(24,	4,	'Drow Magic',	'You know the dancing lights cantrip. When you reach 3rd level, you can cast the faerie fire spell once with this trait; you regain the ability to cast it when you finish a long rest. When you reach 5th level, you can also cast the darkness spell once per day with this trait; you regain the ability to cast it when you finish a long rest. Charisma is your spellcasting ability for these spells.'),
(25,	4,	'Drow Weapon Training',	'You have proficiency with rapiers, shortswords, and hand crossbows.'),
(26,	5,	'Age',	'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.'),
(27,	5,	'Size',	'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.'),
(28,	5,	'Darkvision',	'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'),
(29,	5,	'Keen Senses',	'You have proficiency in the Perception skill.'),
(30,	5,	'Fey Ancestry',	'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.'),
(31,	5,	'Trance',	'Elves don''t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is "trance.") While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.'),
(32,	5,	'Languages',	'You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.'),
(33,	5,	'Necrotic Resistance',	'You have resistance to necrotic damage.'),
(34,	5,	'Blessing of the Raven Queen',	'As a bonus action, you can magically teleport up to 30 feet to an unoccupied space you can see. Once you use this trait, you can''t do so again until you finish a long rest.

Starting at 3rd level, you also gain resistance to all damage when you teleport using this trait. The resistance lasts until the start of your next turn. During that time, you appear ghostly and translucent.');

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "username" character varying(50) NOT NULL,
    "password" character varying(50) NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "users_username_key" UNIQUE ("username")
) WITH (oids = false);

INSERT INTO "users" ("id", "username", "password") VALUES
(1,	'Matex301',	'password');

ALTER TABLE ONLY "public"."races" ADD CONSTRAINT "races_fk" FOREIGN KEY (subrace) REFERENCES races(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."racesEntry" ADD CONSTRAINT "racesEntry_fk" FOREIGN KEY (race) REFERENCES races(id) NOT DEFERRABLE;

-- 2023-10-24 14:38:04.393026+00
