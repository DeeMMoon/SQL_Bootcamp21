-- Session #1
BEGIN  transaction isolation level serializable;
-- Session #2
BEGIN  transaction isolation level serializable;
-- Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #2
UPDATE pizzeria set rating = 3.0 WHERE name = 'Pizza Hut';
-- Session #2
COMMIT;
-- Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #1
COMMIT;
-- Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';