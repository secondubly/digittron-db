/**
    Permission Level Table
*/
CREATE TABLE public.permission_level (
    level integer NOT NULL,
    name text NOT NULL
);

ALTER TABLE public.permission_level OWNER TO postgres;

ALTER TABLE ONLY public.permission_level
    ADD CONSTRAINT permission_level_level_unique PRIMARY KEY (level);

CREATE TABLE public.user_ (
    twitch_id text NOT NULL,
    permission_level integer DEFAULT 4 NOT NULL,
    username text NOT NULL
);

/**
    User Table
*/

ALTER TABLE public.user_ OWNER TO postgres;

ALTER TABLE ONLY public.user_
    ADD CONSTRAINT user__pkey PRIMARY KEY (twitch_id);

ALTER TABLE ONLY public.user_
    ADD CONSTRAINT user__permission_level_permission_level_level_fk FOREIGN KEY (permission_level) REFERENCES public.permission_level(level);

CREATE TABLE public.command (
    id integer NOT NULL,
    name text NOT NULL,
    message text NOT NULL,
    permission_level integer
);

/**
    Command Table
*/

ALTER TABLE public.command OWNER TO postgres;

ALTER TABLE public.command ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.command_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.command
    ADD CONSTRAINT command_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.command
    ADD CONSTRAINT command_permission_level_permission_level_level_fk FOREIGN KEY (permission_level) REFERENCES public.permission_level(level);

/**
    Add permission levels
*/
INSERT INTO public.permission_level VALUES (0, 'BROADCASTER');
INSERT INTO public.permission_level VALUES (1, 'MODERATOR');
INSERT INTO public.permission_level VALUES (2, 'SUBSCRIBER');
INSERT INTO public.permission_level VALUES (3, 'VIP');
INSERT INTO public.permission_level VALUES (4, 'VIEWER');