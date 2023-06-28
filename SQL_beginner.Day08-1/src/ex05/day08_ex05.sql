-- Session #1
BEGIN  transaction isolation level read committed;
-- Session #2
BEGIN  transaction isolation level read committed;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #2
UPDATE pizzeria set rating = 1 WHERE name = 'Pizza Hut';
-- Session #2
COMMIT;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #1
COMMIT;
-- Session #1
SELECT SUM(rating) FROM pizzeria;
-- Session #2
SELECT SUM(rating) FROM pizzeria;