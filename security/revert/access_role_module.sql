-- Revert belian-sqitch:access_role_module from pg

BEGIN;

DROP TABLE belian_security.access_role_module;

COMMIT;
