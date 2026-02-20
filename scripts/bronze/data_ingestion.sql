
load data local infile '/Users/nirmitkhurana/Desktop/Nirmit Docs/Projects/SQL/Data-warehouse-project/dataset/mortgage_data_sample.csv'
into table fannie_mae_bronze.loan_performance_2021_q2
FIELDS terminated by '|'
LINES STARTING BY '|'    -- <--- Skips the first empty ghost column
Terminated by '|\n'


select * from fannie_mae_bronze.loan_performance_2021_q2 lpq ;

SELECT COUNT(*) 
FROM information_schema.columns 
WHERE table_schema = 'fannie_mae_bronze' 
  AND table_name = 'loan_performance_2021_q2';

describe fannie_mae_bronze.loan_performance_2021_q2;