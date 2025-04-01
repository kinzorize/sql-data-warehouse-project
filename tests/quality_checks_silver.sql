/*
=================================================================================
Quality Checks
=================================================================================
Script Purpose:
	This script performs various quality checks for data consistency, accuracy, 
	and standardization across the 'silver' schema.It includes checks for:
	- Null or duplicate primary keys.
	- Unwanted spaces in string fields.
	- Data standardization and consistency.
	- Invalid date ranges and orders.
	- Data consistency between related fields.


Usage Notes:
	- Run these checks after data loading Silver Layer.
	- Investigate and resolve any discrepancies found during the checks.

==================================================================================
*/
-- Check for null or duplicates in primary key
-- Expectation: No Result
SELECT cst_id, COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for unwanted Spaces
-- Expectation: No Results
SELECT cst_firstname 
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

select * from bronze.crm_cust_info;

--Data Standardization & Consistency
SELECT DISTINCT cst_gndr
FROM bronze.crm_cust_info

-- Check for null or duplicates in primary key
-- Expectation: No Result
SELECT cst_id, COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for unwanted Spaces
-- Expectation: No Results
SELECT cst_lastname 
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname)

select * from silver.crm_cust_info;
select * from bronze.crm_cust_info;


--Data Standardization & Consistency
SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

-- Check for invalid Date Orders
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt

-- Check For Nulls or Duplicates in Primary Key
-- Expectation: No Result

SELECT 
prd_id,
COUNT (*)
FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT (*) > 1 OR prd_id IS NULL

--check for unwanted Spaces
-- expectation: No Results
SELECT prd_nm
FROM bronze.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

SELECT 
prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

