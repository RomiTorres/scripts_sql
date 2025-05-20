/*Conexiones Activas*/

SELECT pid, usename,
application_name,
 client_addr, state,
query_start,
 now() - query_start AS
duration,
 query
FROM pg_stat_activity
WHERE state != 'idle'
ORDER BY duration DESC;