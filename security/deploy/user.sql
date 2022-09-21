-- Deploy belian-sqitch:user to pg

BEGIN;

CREATE TABLE belian_security.user (
    id          TEXT NOT NULL,
    name        TEXT NOT NULL,
    email       TEXT NOT NULL,
    source      TEXT DEFAULT NULL,
    enabled	    BOOLEAN DEFAULT true,
    version		BIGINT DEFAULT 1,
    CONSTRAINT user_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian_security.user TO belian;

COMMIT;
