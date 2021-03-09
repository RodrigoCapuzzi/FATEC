CREATE USER lbd IDENTIFIED BY senha;
ALTER USER lbd QUOTA unlimited ON SYSTEM;
GRANT CREATE SESSION, CONNECT, RESOURCE, DBA TO lbd;
GRANT ALL PRIVILEGES TO lbd;
