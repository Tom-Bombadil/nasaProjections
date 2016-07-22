CREATE ROLE nasa_read NOLOGIN INHERIT;

-- public SCHEMA
GRANT USAGE ON SCHEMA public TO nasa_read;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO nasa_read;
GRANT SELECT, USAGE ON ALL SEQUENCES IN SCHEMA public TO nasa_read;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE, SELECT ON SEQUENCES TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO nasa_admin;

-- data SCHEMA
GRANT USAGE ON SCHEMA data TO nasa_read;
GRANT SELECT, USAGE ON ALL SEQUENCES IN SCHEMA data TO nasa_read;
GRANT SELECT ON ALL TABLES IN SCHEMA data TO nasa_read;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA data TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data GRANT SELECT ON TABLES TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data GRANT USAGE, SELECT ON SEQUENCES TO nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data GRANT EXECUTE ON FUNCTIONS TO nasa_admin;