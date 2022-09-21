-- Revert belian-sqitch:access_role from pg

BEGIN;

DROP TABLE belian_security.access_role;

COMMIT;
