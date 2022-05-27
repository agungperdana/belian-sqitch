-- Deploy belian-sqitch:create_schema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS belian;
GRANT USAGE ON SCHEMA belian TO belian;

COMMIT;
