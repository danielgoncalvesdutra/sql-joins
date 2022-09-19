/*This basic query joins the tables on the country_code foreign key, and returns the country name, country code, and value column. 
This is quite a long, unwieldy query for such a basic result! The length of each table name (which must include the full address for 
each table for BigQuery to know where to pull the data from) makes this hard to read and work with. 
However, you can solve this by setting an alias for each table.*/
SELECT 
    `bigquery-public-data.world_bank_intl_education.international_education`.country_name, 
    `bigquery-public-data.world_bank_intl_education.country_summary`.country_code, 
    `bigquery-public-data.world_bank_intl_education.international_education`.value
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education`
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` 
ON `bigquery-public-data.world_bank_intl_education.country_summary`.country_code = `bigquery-public-data.world_bank_intl_education.international_education`.country_code

/*This query is much easier to read and understand. Recall that you can set aliases for tables by specifying the alias for the table after the table’s
name in FROM and/or JOIN statements. For this example, the international_education table was renamed as edu, and the country_summary table as summary.
Using descriptive aliases is a best practice and will help you keep your queries clean, readable, and easy to work with.*/
SELECT 
    edu.country_name,
    summary.country_code,
    edu.value
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code