-- Deploy belian-sqitch:table_access_module to pg

BEGIN;

CREATE TABLE belian_security.access_module (
    id              TEXT NOT NULL,
    name            TEXT NOT NULL,
    module_group	TEXT NOT NULL,
    description     TEXT DEFAULT NULL,
    enabled		    BOOLEAN DEFAULT true,
    version		    BIGINT DEFAULT 1,
    CONSTRAINT access_module_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian_security.access_module TO belian;

COMMIT;