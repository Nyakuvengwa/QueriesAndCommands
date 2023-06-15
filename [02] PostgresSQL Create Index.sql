-- Replace 'index_name' with the name of the index you want to create
-- Replace 'table_name' with the name of the table on which the index should be created
-- Replace 'column_name' with the name of the column for which the index should be created

DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'index_name' AND tablename = 'table_name') THEN
        CREATE INDEX index_name ON table_name (column_name);
        RAISE NOTICE 'Index created successfully.';
    ELSE
        RAISE NOTICE 'Index already exists.';
    END IF;
END $$;
