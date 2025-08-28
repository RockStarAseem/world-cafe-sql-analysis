USE restaurant_analysis;

-- 1. VIEW THE ORDER_DETAILS TABLE
select * from order_details;

-- 2. WHAT IS THE DATE RANGE OF THE TABLE 
select min(order_date), max(order_date) from order_details;

-- 3. HOW MANY ORDERS WERE MADE WITHIN THIS DATE RANGE?
select count(distinct order_id) from order_details;

-- 4. HOW MANY ITEMS WERE ORDERED WITHIN THIS DATE RANEG?
select count(*) from order_details;

-- 5. WHICH ORDERS HAD THE MOST NUMBER OF ITEMS?
select order_id, count(item_id) as num_items
from order_details
group by order_id 
order by num_items desc;

-- 6. HOW MANY ORDERS HAD MORE THAN 12 ITEMS?
select count(*) from
(select order_id, count(item_id) as num_items
from order_details
group by order_id 
having num_items >12) as num_of_items