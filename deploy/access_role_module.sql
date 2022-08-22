-- Deploy belian-sqitch:access_role_module to pg

BEGIN;

CREATE TABLE belian.access_role_module (
    id              TEXT NOT NULL,
    role_code       TEXT NOT NULL,
    module_code     TEXT NOT NULL,
    module_name     TEXT DEFAULT NULL,
    module_group	TEXT DEFAULT NULL,
    is_read         CHAR(1) DEFAULT 'N',
    is_add          CHAR(1) DEFAULT 'N',
    is_edit         CHAR(1) DEFAULT 'N',
    is_delete       CHAR(1) DEFAULT 'N',
    is_print        CHAR(1) DEFAULT 'N',
    version		    BIGINT DEFAULT 0,
    CONSTRAINT access_role_module_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian.access_role_module TO belian;

COMMIT;
