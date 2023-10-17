1.What is the total amount each customer spent at the restaurant?
  
SELECT s.customer_id, SUM(m.price)
FROM dannys_diner.menu m
INNER JOIN dannys_diner.sales s ON (m.product_id = s.product_id)
GROUP BY s.customer_id
ORDER BY s.customer_id;

output: 
  
| customer_id | sum |
|------------|-----|
| A          | 76  |
| B          | 74  |
| C          | 36  |
