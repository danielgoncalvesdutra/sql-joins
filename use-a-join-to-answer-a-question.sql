/*What is the average amount of money spent per region on education?*/
SELECT 
    AVG(edu.value) average_value, summary.region
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code
WHERE summary.region IS NOT null
GROUP BY summary.region
ORDER BY average_value DESC

/*Notice how in this query, an alias is also set to give the AVG(edu.value) a more descriptive name for the temporary table the query returns.
Also note that the WHERE statement excludes rows with any null information. This is necessary to present the data succinctly and display only
seven rows for the seven regions represented in the data. However, this WHERE statement means that the results will return the same regardless 
of which JOIN you use. In the next section, you’ll explore a situation where you need to use a specific kind of join in your query...*/