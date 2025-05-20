1. By occasion
SELECT occasion_name AS occasion, count(occasion_name) AS occasion_frequency
FROM `h4tf-405709.bills_data.bills`
JOIN `h4tf-405709.occasions_data.occasions`
ON
to_user_occasion_id = occasion_id
GROUP BY occasion_name

2. By relationship
SELECT relationship_name AS relationship, count(relationship_name) AS relationship_frequency
FROM `h4tf-405709.bills_data.bills`
JOIN `h4tf-405709.relationships_data.relationships`
ON
to_user_relationship_id = relationship_id
GROUP BY relationship_name

3. Frequency of orders by users
SELECT user_name, count(user_name) AS user_frequency
FROM `h4tf-405709.bills_data.bills`
JOIN `h4tf-405709.users_data.users`
ON 
customer_id = user_id
GROUP BY user_name

4. Total number of customers
SELECT COUNT(DISTINCT customer_id) AS total_num_customers
FROM `h4tf-405709.bills_data.bills` 

5. Number of orders by repeated customers
SELECT user_name, count(user_name) AS num_orders
FROM `h4tf-405709.bills_data.bills`
JOIN `h4tf-405709.users_data.users`
ON 
customer_id = user_id
GROUP BY user_name
HAVING COUNT(user_name) > 1


