SELECT 
    sch.name AS SchemaName,
    tbl.name AS TableName,
    idx.name AS IndexName,
    col.name AS ColumnName,
    idx.type_desc AS IndexType,
    idx.is_unique AS IsUnique,
    idx.is_primary_key AS IsPrimaryKey
FROM 
    sys.indexes idx
    INNER JOIN sys.index_columns ic ON idx.object_id = ic.object_id AND idx.index_id = ic.index_id
    INNER JOIN sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
    INNER JOIN sys.tables tbl ON idx.object_id = tbl.object_id
    INNER JOIN sys.schemas sch ON tbl.schema_id = sch.schema_id
WHERE 
    idx.type > 0 AND idx.is_disabled = 0
ORDER BY 
    sch.name,
    tbl.name,
    idx.name,
    ic.key_ordinal;
