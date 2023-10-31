-- LISTAGG([합칠 컬럼명], [구분자]) WITHIN GROUP(ORDER BY [정렬 컬럼명]) 
SELECT TO_CHAR(sell_date, 'YYYY-MM-DD') sell_date, count(DISTINCT product) num_sold, LISTAGG(product, ',') WITHIN GROUP (ORDER BY product) products
FROM (SELECT DISTINCT sell_date, product
      FROM Activities)
GROUP BY sell_date