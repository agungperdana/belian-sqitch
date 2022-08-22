-- Revert belian-sqitch:access_role_module from pg

BEGIN;

DROP TABLE belian.access_role_module;

COMMIT;
