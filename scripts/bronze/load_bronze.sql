SET @batch_start = NOW();

INSERT INTO fannie_mae_bronze.etl_process_log (process_step, status_message, created_at)
VALUES ('Bronze Layer Data Ingestion', 'Bulk Insert', @batch_start);


-- TRUNCATE TABLE fannie_mae_bronze.loan_performance_2021_q2;

truncate table fannie_mae_bronze.loan_performance_2021_q2;

-- loads the data into the table

load data local infile '/Users/nirmitkhurana/Desktop/Nirmit Docs/Projects/SQL/Canadian-Mortgage-Risk-Pipeline/dataset/mortgage_data_sample.csv'
into table fannie_mae_bronze.loan_performance_2021_q2
FIELDS terminated by '|'
LINES STARTING BY '|'    -- <--- Skips the first empty ghost column
Terminated by '|\n';

-- --------------------------------
-- Calculate Duration and Log Completion
-- --------------------------------
SET @batch_end = NOW();

SET @duration_seconds = TIMESTAMPDIFF(SECOND, @batch_start, @batch_end);

INSERT INTO fannie_mae_bronze.etl_process_log (process_step, status_message,created_at, end_at, duration_of_script_execution)
VALUES ('Bronze Layer Data Ingestion', 'Bulk Insert Complete', @batch_start , @batch_end, @duration_seconds);



-- select * from fannie_mae_bronze.loan_performance_2021_q2 lpq ;


