WITH new_table AS (
SELECT p.name, m.pizza_name,
m.price, 
(m.price-(m.price * pd.discount/100)) AS discount_price,
pz.name AS pizzeria_name
FROM person_order AS po
JOIN menu AS m ON po.menu_id = m.id
JOIN person AS p ON po.person_id = p.id
JOIN person_discounts AS pd ON pd.person_id = p.id AND m.pizzeria_id = pd.pizzeria_id
JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
ORDER BY 1,2
)

select name, pizza_name,
price,
  case
    when discount_price = 0 then ''
    else rtrim(to_char (discount_price, 'FM9999999999999999D99'), '.')
  end discount_price,
  pizzeria_name
from new_table;
