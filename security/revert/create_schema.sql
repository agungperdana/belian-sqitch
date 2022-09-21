-- Revert belian-sqitch:create_schema from pg

BEGIN;

DROP SCHEMA IF EXISTS belian_security;

COMMIT;
