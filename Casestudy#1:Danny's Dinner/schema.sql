1. What is the total amount each customer spent at the restaurant?
  
SELECT s.customer_id, SUM(m.price)
FROM dannys_diner.menu m
INNER JOIN dannys_diner.sales s ON (m.product_id = s.product_id)
GROUP BY s.customer_id
ORDER BY s.customer_id;

Solution:
  
| customer_id | sum |
|------------|-----|
| A          | 76  |
| B          | 74  |
| C          | 36  |

2. How many days has each customer visited the restaurant?

SELECT customer_id, COUNT(DISTINCT order_date)
FROM dannys_diner.sales
GROUP BY customer_id;

Solution:

| customer_id | count |
|------------|-------|
| A          | 4     |
| B          | 6     |
| C          | 2     |

3. What was the first item(s) from the menu purchased by each customer?

WITH first_time AS (
    SELECT
        s.customer_id,
        m.product_name,
        s.order_date,
        RANK() OVER (PARTITION BY s.customer_id ORDER BY s.order_date) AS cx_rank
    FROM
        dannys_diner.menu m
    INNER JOIN
        dannys_diner.sales s ON (m.product_id = s.product_id)
)
SELECT customer_id,product_name
FROM first_time
WHERE
    cx_rank = 1
GROUP BY 1, 2;

solution: 

| customer_id | product_name |
|------------|--------------|
| A          | curry        |
| A          | sushi        |
| B          | curry        |
| C          | ramen        |


