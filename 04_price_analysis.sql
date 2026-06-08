WITH faixa_preco AS (

SELECT

CASE
WHEN `Price (INR)` < 150 THEN 'Economico'
WHEN `Price (INR)` BETWEEN 150 AND 300 THEN 'Intermediario'
WHEN `Price (INR)` BETWEEN 301 AND 500 THEN 'Premium'
ELSE 'Luxo'
END AS faixa,

Rating

FROM swiggy_data
)

SELECT

faixa,

ROUND(AVG(Rating),2) AS rating_medio

FROM faixa_preco

GROUP BY faixa

ORDER BY rating_medio DESC;