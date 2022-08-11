-- Revert belian-sqitch:access_role from pg

BEGIN;

DROP TABLE belian.access_role;

COMMIT;
