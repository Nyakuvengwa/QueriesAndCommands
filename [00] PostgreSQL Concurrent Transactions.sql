SELECT count(*) AS total_connections,
       sum(case when state = 'active' then 1 else 0 end) AS active_connections,
       sum(case when state = 'idle' then 1 else 0 end) AS idle_connections,
       sum(case when state = 'idle in transaction' then 1 else 0 end) AS idle_in_transaction_connections
FROM pg_stat_activity;


-- Query a PostgreSQL database and obtain information about the number of concurrent transactions or connections currently running, you can use the pg_stat_activity system view.