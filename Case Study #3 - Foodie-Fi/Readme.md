
# Case study #3 : Foodie-fi
<img align="center" alt="Coding" width="400" src="https://github.com/Megzu07/8-Week-SQL-Challenge/assets/109617407/5a5e77a0-8b9e-4c22-a6f1-17ff5e9dc908">



## Table of Contents

- [Problem statement](#introduction)
- [Dataset](#introduction)
- [Case study question](#introduction)
- [Solution](#introduction)

<details>
<summary><font color="blue"><font size ="10">Problem Statement</font></summary>
<p style="font-size: 8px;">   

Subscription-based businesses have gained immense popularity, and Danny recognized a significant gap in the market. He aspired to launch a new streaming service dedicated solely to food-related content—a platform akin to Netflix but exclusively for culinary shows.

In 2020, Danny teamed up with a group of talented individuals to bring his vision to life, resulting in the birth of Foodie-Fi. They introduced monthly and annual subscription plans that granted subscribers unrestricted access to an extensive library of exclusive food-centric videos from around the globe.

Guided by a data-driven approach, Danny was determined to base all future investment decisions and feature enhancements on data insights. This case study delves into the utilization of subscription-style digital data to address pivotal business inquiries.</p>
</details>

### Dataset
#### plans

* Customers can choose which plans to join Foodie-Fi when they first sign up.
* Basic plan customers have limited access and can only stream their videos and is only available monthly at $9.90.
* Pro plan customers have no watch time limits and are able to download videos for offline viewing. Pro plans start at $19.90 a month or $199 for an annual subscription.
* Customers can sign up for an initial 7-day free trial and will automatically continue with the pro monthly subscription plan unless they cancel, downgrade to basic, or upgrade to an annual pro plan at any point during the trial.
* When customers cancel their Foodie-Fi service, they will have a churn plan record with a null price, but their plan will continue until the end of the billing period.


| plan_id | plan_name     | price  |
| ------- | ------------- | ------ |
| 0       | trial         | 0      |
| 1       | basic monthly | 9.90   |
| 2       | pro monthly   | 19.90  |
| 3       | pro annual    | 199    |
| 4       | churn         | null   |


#### Subscription


* Customer subscriptions show the exact date where their specific plan_id starts.
* If customers downgrade from a pro plan or cancel their subscription - the higher plan will remain in place until the period is over - the start_date in the subscriptions table will reflect the date that the actual plan changes.
* When customers upgrade their account from a basic plan to a pro or annual pro plan - the higher plan will take effect straightaway.
* When customers churn - they will keep their access until the end of their current billing period but the start_date will be technically the day they decided to cancel their service.


| customer_id | plan_id | start_date |
|------------|---------|------------|
| 1          | 0       | 2020-08-01 |
| 1          | 1       | 2020-08-08 |
| 2          | 0       | 2020-09-20 |
| 2          | 3       | 2020-09-27 |
| 11         | 0       | 2020-11-19 |
| 11         | 4       | 2020-11-26 |
| 13         | 0       | 2020-12-15 |
| 13         | 1       | 2020-12-22 |
| 13         | 2       | 2021-03-29 |
| 15         | 0       | 2020-03-17 |
| 15         | 2       | 2020-03-24 |
| 15         | 4       | 2020-04-29 |
| 16         | 0       | 2020-05-31 |
| 16         | 1       | 2020-06-07 |
| 16         | 3       | 2020-10-21 |
| 18         | 0       | 2020-07-06 |
| 18         | 2       | 2020-07-13 |
| 19         | 0       | 2020-06-22 |
| 19         | 2       | 2020-06-29 |
| 19         | 3       | 2020-08-29 |
