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
| customer_id  | Row 2, Cell 2  | Row 2, Cell 3  |
| customer_number  | Row 3, Cell 2  | Row 3, Cell 3  |
| first_name  | Row 4, Cell 2  | Row 4, Cell 3  |
| last_name  | Row 5, Cell 2  | Row 5, Cell 3  |
| country  | Row 6, Cell 2  | Row 6, Cell 3  |
| marital_status  | Row 7, Cell 2  | Row 7, Cell 3  |
| gender  | Row 8, Cell 2  | Row 8, Cell 3  |
| birthdate | Row 9, Cell 2  | Row 9, Cell 3  |
| create_date | Row 10, Cell 2 | Row 10, Cell 3 |

