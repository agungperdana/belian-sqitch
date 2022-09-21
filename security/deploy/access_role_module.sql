-- Deploy belian-sqitch:access_role_module to pg

BEGIN;

CREATE TABLE belian_security.access_role_module (
    id              TEXT NOT NULL,
    role_code       TEXT NOT NULL,
    module_code     TEXT NOT NULL,
    module_name     TEXT DEFAULT NULL,
    module_group	TEXT DEFAULT NULL,
    is_read         BOOLEAN DEFAULT false,
    is_add          BOOLEAN DEFAULT false,
    is_edit         BOOLEAN DEFAULT false,
    is_delete       BOOLEAN DEFAULT false,
    is_print        BOOLEAN DEFAULT false,
    version		    BIGINT DEFAULT 0,
    CONSTRAINT access_role_module_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian_security.access_role_module TO belian;

COMMIT;
