**Data Dictionary for Gold Layer**


**Overview** 

The Gold Layer is the business-level data representation, structured  to
support analytical and reporting use cases.It consists of dimension tables 
and fact tables for specific business metrics.

**1. gold.dim_customers**
	
  **Purpose:** Stores customer details enriched with demographic and geographic data
  **Column:**


| Columns Names  | Data Type      | Description    								    |
|----------------|----------------|----------------								    |
| customer_key   | INT            | Surrogate key uniquely identifying each customer record in the dimension table  |
| customer_id  | INT | Row 2, Cell 3  |
| customer_number  | NVARCHAR(50) | Row 3, Cell 3  |
| first_name  | NVARCHAR(50)  | Row 4, Cell 3  |
| last_name  | NVARCHAR(50)  | Row 5, Cell 3  |
| country  | NVARCHAR(50)  | Row 6, Cell 3  |
| marital_status  | NVARCHAR(50)  | Row 7, Cell 3  |
| gender  | NVARCHAR(50)  | Row 8, Cell 3  |
| birthdate | DATE | Row 9, Cell 3  |
| create_date | DATE | Row 10, Cell 3 |

