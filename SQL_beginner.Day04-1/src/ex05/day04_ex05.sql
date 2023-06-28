CREATE VIEW v_price_with_discount AS
SELECT p.name, m.pizza_name, m.price, round(m.price - m.price*0.1) AS discount_price
FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
ORDER BY 1,2