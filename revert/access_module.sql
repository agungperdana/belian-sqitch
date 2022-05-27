-- Revert belian-sqitch:table_access_module from pg

BEGIN;

DROP TABLE access_module;

COMMIT;