/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/



DROP TABLE IF EXISTS fannie_mae_bronze.loan_performance_2021_q2;
CREATE TABLE fannie_mae_bronze.loan_performance_2021_q2 (
    Loan_Identifier VARCHAR(100),
    Monthly_Reporting_Period VARCHAR(100),
    Channel VARCHAR(100),
    Seller_Name VARCHAR(100),
    Servicer_Name VARCHAR(100),
    Master_Servicer VARCHAR(100),
    Original_Interest_Rate VARCHAR(100),
    Current_Interest_Rate VARCHAR(100),
    Original_UPB VARCHAR(100),
    UPB_at_Issuance VARCHAR(100),
    Current_Actual_UPB VARCHAR(100),
    Original_Loan_Term VARCHAR(100),
    Origination_Date VARCHAR(100),
    First_Payment_Date VARCHAR(100),
    Loan_Age VARCHAR(100),
    Remaining_Months_to_Legal_Maturity VARCHAR(100),
    Adjusted_Months_to_Maturity VARCHAR(100),
    Maturity_Date VARCHAR(100),
    LTV VARCHAR(100),
    CLTV VARCHAR(100),
    Number_of_Borrowers VARCHAR(100),
    DTI VARCHAR(100),
    Borrower_Credit_Score VARCHAR(100),
    Co_Borrower_Credit_Score VARCHAR(100),
    First_Time_Homebuyer_Indicator VARCHAR(100),
    Loan_Purpose VARCHAR(100),
    Property_Type VARCHAR(100),
    Number_of_Units VARCHAR(100),
    Occupancy_Status VARCHAR(100),
    Property_State VARCHAR(100),
    MSA VARCHAR(100),
    Zip_Code_Short VARCHAR(100),
    Mortgage_Insurance_Percentage VARCHAR(100),
    Amortization_Type VARCHAR(100),
    Prepayment_Penalty_Indicator VARCHAR(100),
    Interest_Only_Loan_Indicator VARCHAR(100),
    Interest_Only_First_Principal_And_Interest_Payment_Date VARCHAR(100),
    Months_To_Amortization VARCHAR(100),
    Current_Loan_Delinquency_Status VARCHAR(100),
    Loan_Payment_History VARCHAR(100),
    Modification_Flag VARCHAR(100),
    Mortgage_Insurance_Cancellation_Indicator VARCHAR(100),
    Zero_Balance_Code VARCHAR(100),
    Zero_Balance_Effective_Date VARCHAR(100),
    UPB_at_the_Time_of_Removal VARCHAR(100),
    Repurchase_Date VARCHAR(100),
    Scheduled_Principal_Current VARCHAR(100),
    Total_Principal_Current VARCHAR(100),
    Unscheduled_Principal_Current VARCHAR(100),
    Last_Paid_Installment_Date VARCHAR(100),
    Foreclosure_Date VARCHAR(100),
    Disposition_Date VARCHAR(100),
    Foreclosure_Costs VARCHAR(100),
    Property_Preservation_And_Repair_Costs VARCHAR(100),
    Asset_Recovery_Costs VARCHAR(100),
    Miscellaneous_Holding_Expenses_And_Credits VARCHAR(100),
    Associated_Taxes_For_Holding_Property VARCHAR(100),
    Net_Sale_Proceeds VARCHAR(100),
    Credit_Enhancement_Proceeds VARCHAR(100),
    Repurchase_Make_Whole_Proceeds VARCHAR(100),
    Other_Foreclosure_Proceeds VARCHAR(100),
    Non_Interest_Bearing_UPB VARCHAR(100),
    Principal_Forgiveness_Amount VARCHAR(100),
    Original_List_Start_Date VARCHAR(100),
    Original_List_Price VARCHAR(100),
    Current_List_Start_Date VARCHAR(100),
    Current_List_Price VARCHAR(100),
    Borrower_Credit_Score_At_Issuance VARCHAR(100),
    Co_Borrower_Credit_Score_At_Issuance VARCHAR(100),
    Borrower_Credit_Score_Current VARCHAR(100),
    Co_Borrower_Credit_Score_Current VARCHAR(100),
    Mortgage_Insurance_Type VARCHAR(100),
    Servicing_Activity_Indicator VARCHAR(100),
    Current_Period_Modification_Loss_Amount VARCHAR(100),
    Cumulative_Modification_Loss_Amount VARCHAR(100),
    Current_Period_Credit_Event_Net_Gain_Or_Loss VARCHAR(100),
    Cumulative_Credit_Event_Net_Gain_Or_Loss VARCHAR(100),
    HomeReady_Program_Indicator VARCHAR(100),
    Foreclosure_Principal_Write_off_Amount VARCHAR(100),
    Relocation_Mortgage_Indicator VARCHAR(100),
    Zero_Balance_Code_Change_Date VARCHAR(100),
    Loan_Holdback_Indicator VARCHAR(100),
    Capitalized_Mortgage_Insurance_And_Taxes_Difference_Amount VARCHAR(100),
    CMI_And_Taxes_Difference_Amount_Adjusted VARCHAR(100),  # Capitalized_Mortgage_Insurance_And_Taxes_Difference_Amount_Adjusted
    Interest_Rate_Adjustment_Date VARCHAR(100),
    Deferred_Payment_Plan VARCHAR(100),
    Estimated_Loan_To_Value_LTV VARCHAR(100),
    Variable_Dividend_Indicator VARCHAR(100),
    Original_Interest_Rate_2 VARCHAR(100),
    Current_Interest_Rate_2 VARCHAR(100),
    Original_UPB_2 VARCHAR(100),
    UPB_at_Issuance_2 VARCHAR(100),
    Current_Actual_UPB_2 VARCHAR(100),
    Original_Loan_Term_2 VARCHAR(100),
    Origination_Date_2 VARCHAR(100),
    First_Payment_Date_2 VARCHAR(100),
    Loan_Age_2 VARCHAR(100),
    Remaining_Months_to_Legal_Maturity_2 VARCHAR(100),
    Maturity_Date_2 VARCHAR(100),
    LTV_2 VARCHAR(100),
    CLTV_2 VARCHAR(100),
    Number_of_Borrowers_2 VARCHAR(100),
    DTI_2 VARCHAR(100),
    Borrower_Credit_Score_2 VARCHAR(100),
    Co_Borrower_Credit_Score_2 VARCHAR(100),
    First_Time_Homebuyer_Indicator_2 VARCHAR(100)
);


-- This log table will help us execute each log statement to track all the logs happening in our database for the ETL process


DROP table if exists fannie_mae_bronze.etl_process_log; 
CREATE TABLE IF NOT EXISTS fannie_mae_bronze.etl_process_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    process_step VARCHAR(100),
    status_message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_at TIMESTAMP NULL,
    duration_of_script_execution INT COMMENT 'Duration in seconds'
);
