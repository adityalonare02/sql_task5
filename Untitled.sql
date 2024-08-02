CREATE TABLE CarOrders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ShipMode VARCHAR(50),
    CustomerID VARCHAR(50),
    ProductID VARCHAR(50),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(3, 2),
    Product VARCHAR(50),
    Profit DECIMAL(10, 2)
)

select * from carorders

select count (distinct orderid) from carorders

select count (distinct customerid) from carorders

select count (distinct shipmode) from carorders

select distinct shipmode from carorders

select sum (sales) from carorders where shipmode = 'Standard'

select sum (sales) from carorders where shipmode = 'Express'

select shipmode, sum(sales) from carorders group by shipmode 

select product , sum(quantity) from carorders group by product
	order by sum(quantity) desc limit 1

select sum(quantity) from carorders group by product
	order by sum(quantity) desc limit 1

select shipmode, sum(sales) from carorders 
	where sales > 1500 
	group by shipmode 
	having sum(sales) > 3000
	
select sales from carorders order by sales asc limit 1

select sales from carorders order by sales desc limit 1  

select count(sales) , sum(sales) , min(sales) , max(sales) , avg(sales) from carorders 

SELECT shipmode, SUM(sales) AS total_sales
FROM carorders
GROUP BY shipmode

SELECT product, AVG(profit) AS average_profit
FROM carorders
GROUP BY product

SELECT shipmode, SUM(quantity) AS total_quantity
FROM carorders
GROUP BY shipmode
HAVING SUM(sales) > 5000

SELECT product, COUNT(*) AS order_count
FROM carorders
GROUP BY product
HAVING AVG(discount) > 0.1

SELECT customerid, MAX(sales) AS max_sales
FROM carorders
GROUP BY customerid

SELECT shipmode, SUM(profit) AS total_profit
FROM carorders
GROUP BY shipmode
HAVING COUNT(*) > 3

SELECT product, MIN(profit) AS min_profit
FROM carorders
GROUP BY product
HAVING SUM(sales) > 10000

SELECT customerid, AVG(sales) AS average_sales
FROM carorders
GROUP BY customerid
HAVING SUM(quantity) > 5