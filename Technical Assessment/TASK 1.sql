crEate table FRUIT_SALES
(
ORDER_NUMBER NUMERIC (38,0) primary key,
CUSTOMER_ID NUMERIC(38,0),
FRUIT_ID NUMERIC(38,0),
ORDER_DATE DATE,
UNIT_VALUE NUMERIC(38,2),
TOTAL_SALES_VALUE NUMERIC(38,2),
TOTAL_UNITS NUMERIC(38,0)
)



CREATE TABLE FRUITS(
FRUIT_ID NUMERIC(38,0) primary key, 
FRUIT_NAME VARCHAR(10485760)
)

CREATE TABLE PAGE_VIEWS(
PAGE_VIEW_ID NUMERIC(38,0) primary key,
USER_ID VARCHAR(10485760),
PAGE_VIEW_TIMESTAMP TIMESTAMP(9),
PAGE_URL VARCHAR(10485760),
PAGE_CATEGORY VARCHAR(10485760)
)

CREATE TABLE  SESSIONS(
SESSION_ID VARCHAR(10485760) primary key NULL,
SESSION_DATE DATE,
CHANNEL VARCHAR(10485760),
PURCHASE_ID NUMERIC(38,0)

)

CREATE TABLE PURCHASES(
PURCHASE_ID NUMERIC(38,0) primary key,
PURCHASE_DATE DATE,
CUSTOMER_ID NUMERIC(38,0),
UNIT_VALUE_POUNDS NUMERIC(38,2),
UNITS  NUMERIC(38,0)
)

CREATE TABLE Customers(
CUSTOMER_ID NUMeric(38,0) primary key,
AGE NUMeric(38,0),
FIRST_NAME VARCHAR(10485760),
lAST_NAME VARCHAR(10485760)
)

-- drop  table fruit_sales
-- ALTER TABLE PAGE_VIEWS
-- ALTER COLUMN PAGE_VIEW_TIMESTAMP SET DATA TYPE TIMESTAMPTZ(9);
-- sHOW datestyle
-- SELECT * FROM Customers;
-- SELECT * FROM purchases;
-- SELECT * FROM fruit_sales;
-- SELECT * FROM fruits;
-- SELECT * FROM page_views;
-- SELECT * FROM sessions;
--Write a query that orders each type of fruit by the total sales value (£) 
--they made in May 2022, from best-seller to worst. 
select fruits.FRUIT_NAME,sum(fruit_sales.total_sales_value) as tsales,fruit_sales.fruit_id
from fruits
left join fruit_sales   --,total_sale_value,
on fruits.fruit_id=fruit_sales.fruit_id
where order_date between '2021-05-01' and '2022-05-31'
group by FRUIT_NAME,fruit_sales.fruit_id

--Which fruits made less money in 2022 than in 2021?

select fruits.FRUIT_NAME,sum(fruit_sales.total_sales_value) as tsales,fruit_sales.fruit_id
from fruits
left join fruit_sales   --,total_sale_value,
on fruits.fruit_id=fruit_sales.fruit_id
where 
group by FRUIT_NAME,fruit_sales.fruit_id
 
 
SELECT * FROM public.WEB_EVENTS
LIMIT 10

SELECT * FROM ORDERS; 
SELECT * FROM ACCOUNTS
SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

 
 
 