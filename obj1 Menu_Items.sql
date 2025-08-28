use restaurant_analysis;

-- 1. VIEW THE menu_items TABLE'
select * from menu_items;

-- 2. FIND THE NUMBER OF ITEMS
select count(*) from menu_items;

-- 3. FIND THE LEAST AND MOST EXPENSIVE ITEM IN THE MENU
select item_name,price from menu_items order by price limit 1;

select item_name, price from menu_items order by price desc limit 1; 

-- 4. HOW MANY ITALIAN DISHES ARE ON THE MENU
select count(*) from menu_items where category='Italian';

-- 5. WHAT ARE THE MOST EXPENSIVE ITALIAN DISHES ON THE MENU
select item_name, price from menu_items where category='Italian' order by price limit 1;

-- 6. How MANY DISHES ARE IN EACH CATEGORY
select category,count(*) as Num_of_Dishes from menu_items group by category;

-- 7.WAHT IS THE AVERAGRE DISH PRICE WITHIN EACH CATEGORY
select category,round(avg(PRICE)) as Num_of_Dishes from menu_items group by category;




