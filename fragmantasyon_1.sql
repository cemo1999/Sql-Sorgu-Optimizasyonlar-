SELECT 
    object_name(ips.object_id) AS TableName,
    si.name AS IndexName,
    ips.index_id,
    ips.avg_fragmentation_in_percent
FROM 
    sys.dm_db_index_physical_stats(DB_ID(), object_id('Posts'), index_id('IX_Posts_CreationDate'), NULL, 'LIMITED') AS ips
    JOIN sys.indexes AS si ON ips.object_id = si.object_id AND ips.index_id = si.index_id
WHERE 
    ips.avg_fragmentation_in_percent > 10
ORDER BY 
    ips.avg_fragmentation_in_percent DESC;