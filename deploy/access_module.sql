-- Deploy belian-sqitch:table_access_module to pg

BEGIN;

CREATE TABLE belian.access_module (
                                      id        		    CHAR(50) NOT NULL,
                                      module_name         TEXT NOT NULL,
                                      module_group	    CHAR(20) NOT NULL,
                                      note          	    TEXT DEFAULT NULL,
                                      enabled		        CHAR(5) DEFAULT 'N',
                                      version		        BIGINT DEFAULT 0,
                                      CONSTRAINT access_module_id_pkey PRIMARY KEY(id)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE belian.access_module TO belian;

COMMIT;