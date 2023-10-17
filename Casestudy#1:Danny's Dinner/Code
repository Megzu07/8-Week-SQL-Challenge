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

4. What is the most purchased item on the menu and how many times was it purchased by all customers?

SELECT product_name, COUNT(m.product_id) AS count1
FROM dannys_diner.menu m
INNER JOIN dannys_diner.sales s ON (m.product_id = s.product_id)
GROUP BY product_name
ORDER BY count1 DESC
LIMIT 1;

solution:

| product_name | count1 |
|--------------|--------|
| ramen        | 8      |

5. Which item was purchased first by the customer after they became a member?

WITH temp AS (
    SELECT
        s.customer_id,
        m.product_name,
        order_date,
        RANK() OVER (PARTITION BY s.customer_id ORDER BY s.order_date) AS cs_rank
    FROM
        dannys_diner.sales s
    INNER JOIN
        dannys_diner.menu m ON (m.product_id = s.product_id)
    INNER JOIN
        dannys_diner.members me ON (s.customer_id = me.customer_id)
    WHERE
        s.order_date >= me.join_date
)
SELECT
    customer_id,
    product_name,
    order_date
FROM
    temp
WHERE
    cs_rank = 1;

solution :

| customer_id | product_name | order_date |
|------------|--------------|------------|
| A          | curry        | 2021-01-07 |
| B          | sushi        | 2021-01-11 |

7. Which item was purchased just before the customer became a member?

WITH temp AS 
(
    SELECT
        s.customer_id,
        m.product_name,
        order_date,
        join_date,
        RANK() OVER (PARTITION BY s.customer_id ORDER BY s.order_date DESC) AS cs_rank
    FROM
        dannys_diner.sales s
    INNER JOIN
        dannys_diner.menu m ON (m.product_id = s.product_id)
    INNER JOIN
        dannys_diner.members me ON (s.customer_id = me.customer_id)
    WHERE
        order_date < join_date
)
SELECT * FROM temp
WHERE cs_rank = 1
ORDER BY customer_id;

solution: 

| customer_id | product_name | order_date |
|------------|--------------|------------|
| A          | sushi        | 2021-01-01 |
| A          | curry        | 2021-01-01 |
| B          | sushi        | 2021-01-04 |

8. What is the total items and amount spent for each member before they became a member?

SELECT
    s.customer_id,
    COUNT(DISTINCT s.product_id) AS item_count,
    SUM(m.price) AS total_in_$,
    RANK() OVER (PARTITION BY s.customer_id)
FROM
    dannys_diner.menu m
INNER JOIN
    dannys_diner.sales s ON (m.product_id = s.product_id)
INNER JOIN
    dannys_diner.members me ON (s.customer_id = me.customer_id)
WHERE
    s.order_date < me.join_date
GROUP BY 1;

solution: 

| customer_id | item_count | total_in_$ |
|------------|------------|------------|
| A          | 2          | 25         |
| B          | 2          | 40         |

9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

SELECT
    s.customer_id,
    SUM(CASE
        WHEN product_name = 'sushi' THEN (m.price * 20)
        ELSE (m.price * 10)
    END)
FROM
    dannys_diner.sales s
INNER JOIN
    dannys_diner.menu m ON (m.product_id = s.product_id)
GROUP BY
    s.customer_id
ORDER BY
    s.customer_id;

solution: 

| customer_id | sum |
|------------|-----|
| A          | 860 |
| B          | 940 |
| C          | 360 |



















