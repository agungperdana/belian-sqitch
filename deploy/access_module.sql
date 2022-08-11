-- Deploy belian-sqitch:table_access_module to pg

BEGIN;

CREATE TABLE belian.access_module (
    id              TEXT NOT NULL,
    code            TEXT NOT NULL,
    name            TEXT NOT NULL,
    module_group	TEXT NOT NULL,
    note          	TEXT DEFAULT NULL,
    enabled		    CHAR(5) DEFAULT 'N',
    version		    BIGINT DEFAULT 0,
    CONSTRAINT access_module_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian.access_module TO belian;

COMMIT;