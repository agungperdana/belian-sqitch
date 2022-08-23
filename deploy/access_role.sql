-- Deploy belian-sqitch:access_role to pg

BEGIN;

CREATE TABLE belian.access_role (
    id              TEXT NOT NULL,
    code            TEXT NOT NULL,
    name            TEXT NOT NULL,
    note          	TEXT DEFAULT NULL,
    enabled		    BOOLEAN DEFAULT true,
    version		    BIGINT DEFAULT 1,
    CONSTRAINT access_role_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian.access_role TO belian;

COMMIT;
