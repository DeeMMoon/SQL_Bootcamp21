-- Session #1
BEGIN;
UPDATE pizzeria set rating=5 WHERE name= 'PizzaHut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #1
COMMIT;
-- Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';