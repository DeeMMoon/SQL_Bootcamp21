CREATE OR REPLACE FUNCTION fnc_fibonacci(f INTEGER DEFAULT 10) 
RETURNS SETOF INTEGER
LANGUAGE SQL
AS $$
WITH RECURSIVE t(a,b) AS (
        VALUES(0,1)
    UNION ALL
        SELECT greatest(a,b), a + b AS a FROM t
        WHERE b < $1
   )
SELECT a FROM t;
$$;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
