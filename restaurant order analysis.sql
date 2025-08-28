-- 1. COMBINE THE MENU_ITEMS AND ORDER_DETAILS TABLES INTO A SINGLE TABLE
select * from order_details od left join menu_items mi on od.item_id = mi.ï»¿menu_item_id;

-- 2. WHAT AERE THE LEAST AND MOST ORDERED ITEMS? WHAT CATEGORY WERE THEY IN?
select item_name,category ,count(ï»¿order_details_id) as num_purchases from order_details od left join menu_items mi on od.item_id = mi.ï»¿menu_item_id
group by item_name, category
order by num_purchases ;

-- 3. WHAT WERE THE TOP 5 ORDERS THAT SPEND THE MOST MONEY?
select od.order_id, round(sum(mi.price)) as total_spend from order_details od left join menu_items mi on od.item_id = mi.ï»¿menu_item_id
group by od.order_id
having total_spend is not null
order by total_spend desc
limit 5
;

-- 4.VIEW THE DETAILS OF THE HIGHEST SPENT ORDER. WHAT INSIGHTS CAN YOU GATHER FROM THE RESULTS?
select category,count(item_id) as num_items from order_details od left join menu_items mi on od.item_id = mi.ï»¿menu_item_id where order_id='440'
group by category;
 

-- 5. VIEW THE DETAILS OF THE TOP 5 HIGHEST SPEND ORDERS. WHAT INSIGHTS CAN YOU GATHER?
select order_id,category,count(item_id) as num_items from order_details od left join menu_items mi on od.item_id = mi.ï»¿menu_item_id where order_id in (440,2075,1957,2675,330)
group by order_id,category;
