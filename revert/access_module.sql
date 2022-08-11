-- Revert belian-sqitch:table_access_module from pg

BEGIN;

DROP TABLE belian.access_module;

COMMIT;