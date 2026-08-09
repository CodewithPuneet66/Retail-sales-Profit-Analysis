CREATE DATABASE sales;
USE sales;

SHOW TABLES;
DESCRIBE retail_sales;

SELECT * 
FROM retail_sales
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM retail_sales;

-- TOTAL SALES
 SELECT SUM(sales) AS total_sales
 FROM retail_sales;
 
-- TOTAL PROFIT
SELECT SUM(profit) AS total_profit
FROM retail_sales; 

-- TOTAL ORDERS
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;

-- AVERAGE DISCOUNT
SELECT AVG(discount) AS average_discount
FROM retail_sales;

-- TOTAL SHIPPING COST
SELECT SUM(shipping_cost) AS total_shipping_cost
FROM retail_sales;
  


-- SALES BY REGION
SELECT 
	region,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;

-- SALES BY PRODUCT CATEGORY
SELECT
    product_category,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY product_category
ORDER BY total_sales DESC;

-- TOP 10 PRODUCTS BY SALES
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- PROFIT BY CUSTOMER SEGMENT
SELECT
    customer_segment,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY customer_segment
ORDER BY total_profit DESC;

-- SALES BY ORDER PRIORITY
SELECT
    order_priority,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY order_priority
ORDER BY total_sales DESC;

-- MONTHELY SALES TREND(USING ORDER DATE)
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

    
 