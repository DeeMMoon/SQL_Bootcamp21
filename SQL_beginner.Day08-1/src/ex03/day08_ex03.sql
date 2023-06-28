-- Session #1
BEGIN  transaction isolation level read committed;
-- Session #2
BEGIN  transaction isolation level read committed;
-- Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #2
UPDATE pizzeria set rating = 3.6 WHERE name = 'Pizza Hut';
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