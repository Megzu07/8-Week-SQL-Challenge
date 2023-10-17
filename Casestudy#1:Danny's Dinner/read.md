# Case study #3 : Danny's Diner
<img align="center" alt="Coding" width="400" src="https://github.com/Megzu07/8-Week-SQL-Challenge/assets/109617407/d1cb0b57-1795-4ec7-b97e-7a64c1dbbf12">

## Table of Contents

- [Problem statement](#introduction)
- [Dataset](#introduction)
- [Case study question](#introduction)
- [Solution](#introduction)

<details>
<summary><font color="blue"><font size ="10">Problem Statement</font></summary>
<p style="font-size: 8px;">   
  
Danny is interested in leveraging data to gain insights into his customers' behaviors and preferences. He wants to answer questions related to their visit patterns, spending habits, and favorite menu items. By understanding his customers better, he aims to provide a more personalized and enhanced experience for his loyal patrons.

These insights will play a pivotal role in his decision-making process, particularly regarding the expansion of his current customer loyalty program. Additionally, Danny needs assistance in creating simplified datasets that his team can readily examine without relying on SQL, making data analysis more accessible for his staff.
</p>
</details>

### Dataset
#### Table1:Sales

* The sales table captures all customer_id level purchases with a corresponding order_date and product_id information for when and what menu items were ordered.

| customer_id | order_date | product_id |
|------------|------------|------------|
| A          | 2021-01-01 | 1          |
| A          | 2021-01-01 | 2          |
| A          | 2021-01-07 | 2          |
| A          | 2021-01-10 | 3          |
| A          | 2021-01-11 | 3          |
| A          | 2021-01-11 | 3          |
| B          | 2021-01-01 | 2          |
| B          | 2021-01-02 | 2          |
| B          | 2021-01-04 | 1          |
| B          | 2021-01-11 | 1          |
| B          | 2021-01-16 | 3          |
| B          | 2021-02-01 | 3          |
| C          | 2021-01-01 | 3          |
| C          | 2021-01-01 | 3          |
| C          | 2021-01-07 | 3          |

#### Table2: Menu 

*The menu table maps the product_id to the actual product_name and price of each menu item.

| product_id | product_name | price |
|------------|--------------|-------|
| 1          | sushi        | 10    |
| 2          | curry        | 15    |
| 3          | ramen        | 12    |

#### Table2: Members

*The final members table captures the join_date when a customer_id joined the beta version of the Danny’s Diner loyalty program.

| customer_id | join_date  |
|------------|------------|
| A          | 2021-01-07 |
| B          | 2021-01-09 |





















