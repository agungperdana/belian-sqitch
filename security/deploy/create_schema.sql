-- Deploy belian-sqitch:create_schema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS belian_security;
GRANT USAGE ON SCHEMA belian_security TO belian;

COMMIT;
