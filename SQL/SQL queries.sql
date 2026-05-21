SELECT * FROM pizza_sales

/* Daily Trend for Total Orders */

SELECT DATENAME(DW, order_date) AS Order_Day, COUNT(DISTINCT order_id)
AS Total_Orders from pizza_sales
GROUP BY DATENAME(DW, order_date)

/* Monthly Trend for Total Orders */

SELECT DATENAME(MONTH, order_date) AS Month_name,
COUNT(DISTINCT  order_id) AS Total_Orders
from pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC

/* Percentage of Sales by Pizza Category */

SELECT pizza_category,SUM(Total_price) AS Total_sales,
SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales where MONTH(order_date) = 1) AS PCT
FROM pizza_sales
where MONTH(order_date) = 1
GROUP BY pizza_category


/* Percentage of Sales by Pizza Size */

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales,
CAST(SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales WHERE
DATEPART(quarter, order_date) = 1
GROUP BY pizza_size
ORDER BY PCT DESC

/* Top 5 best sellers by revenue */

SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Revenue DESC

/* Bottom 5 best sellers by revenue */

SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Revenue ASC

/* Top 5 best sellers by Total quantity */

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Quantity DESC

/* Bottom 5 best sellers by Total quantity */

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Quantity ASC

/* Top 5 best sellers by Orders */

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Orders DESC

/* Bottom 5 best sellers by Orders */

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name	
ORDER BY Total_Orders ASC