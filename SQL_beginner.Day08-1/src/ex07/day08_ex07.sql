-- Session #1
BEGIN;
-- Session #2
BEGIN;
-- Session #1
UPDATE pizzeria set rating = 2 WHERE name = 'Pizza Hut';
-- Session #2
UPDATE pizzeria set rating = 2 WHERE name = 'Dominos';
-- Session #1
UPDATE pizzeria set rating = 1 WHERE name = 'Dominos';
-- Session #2
UPDATE pizzeria set rating = 1 WHERE name = 'Pizza Hut';
-- Session #1
COMMIT;
-- Session #2
COMMIT;