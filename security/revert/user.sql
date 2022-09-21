-- Revert belian-sqitch:user from pg

BEGIN;

DROP TABLE belian_security.user;

COMMIT;
