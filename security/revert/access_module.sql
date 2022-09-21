-- Revert belian-sqitch:table_access_module from pg

BEGIN;

DROP TABLE belian_security.access_module;

COMMIT;