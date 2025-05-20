
/*MONITORIZACION */

/*CONEXIONES ACTIVAS*/

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



/*Estadisiticas de tablas*/
SELECT relname, seq_scan,
seq_tup_read,
 idx_scan, idx_tup_fetch,
 n_tup_ins, n_tup_upd,
n_tup_del
FROM pg_stat_user_tables
ORDER BY seq_scan DESC;

/*Consultas lentas*/

SELECT pid, now() - query_start
AS duration,
 usename, datname,
wait_event,
 state, query
FROM pg_stat_activity
WHERE state != 'idle'
 AND (now() - query_start) >
interval '5 minutes'
ORDER BY duration DESC;
