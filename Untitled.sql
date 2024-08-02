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