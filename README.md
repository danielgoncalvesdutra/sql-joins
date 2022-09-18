# sql-joins
Type of JOINs
There are four general ways in which to conduct JOINs in SQL queries: INNER, LEFT, RIGHT, and FULL OUTER.
<img>https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/V3K80lLeRfayvNJS3tX2DQ_c5371083976944c7808132ca392f419d_Screen-Shot-2021-02-07-at-5.14.41-PM.png?expiry=1663632000000&hmac=an8_oCE8QT4TKJ8xLlHdnKfUOYWNwkCTSfp2dtoEwx0</img>
4 venn diagrams illustrating JOINsThe circles represent left and right tables, and where they are joined is highlighted in blue
Here is what these different JOIN queries do.

INNER JOIN

    -INNER is optional in this SQL query because it is the default as well as the most commonly used JOIN operation. You may see this as JOIN only. INNER JOIN returns records if the data lives in both tables. For example, if you use INNER JOIN for the 'customers' and 'orders' tables and match the data using the customer_id key, you would combine the data for each customer_id that exists in both tables. If a customer_id exists in the customers table but not the orders table, data for that customer_id isn’t joined or returned by the query. 

LEFT JOIN

    -You may see this as LEFT OUTER JOIN, but most users prefer LEFT JOIN. Both are correct syntax. LEFT JOIN returns all the records from the left table and only the matching records from the right table. Use LEFT JOIN whenever you need the data from the entire first table and values from the second table, if they exist. For example, in the query below, LEFT JOIN will return customer_name with the corresponding sales_rep, if it is available. If there is a customer who did not interact with a sales representative, that customer would still show up in the query results but with a NULL value for sales_rep.



RIGHT JOIN

    -You may see this as RIGHT OUTER JOIN or RIGHT JOIN. RIGHT JOIN returns all records from the right table and the corresponding records from the left table. Practically speaking, RIGHT JOIN is rarely used. Most people simply switch the tables and stick with LEFT JOIN. But using the previous example for LEFT JOIN, the query using RIGHT JOIN would look like the following:


FULL OUTER JOIN

    -You may sometimes see this as FULL JOIN. FULL OUTER JOIN returns all records from the specified tables. You can combine tables this way, but remember that this can potentially be a large data pull as a result. FULL OUTER JOIN returns all records from both tables even if data isn’t populated in one of the tables. For example, in the query below, you will get all customers and their products’ shipping dates. Because you are using a FULL OUTER JOIN, you may get customers returned without corresponding shipping dates or shipping dates without corresponding customers. A NULL value is returned if corresponding data doesn’t exist in either table.