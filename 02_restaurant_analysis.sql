-- Restaurantes com mais pratos

SELECT
`Restaurant Name`,
COUNT(DISTINCT `Dish Name`) AS total_pratos
FROM swiggy_data
GROUP BY `Restaurant Name`
ORDER BY total_pratos DESC;


-- Ranking de performance

WITH restaurant_performance AS (

SELECT
`Restaurant Name`,
COUNT(DISTINCT `Dish Name`) AS total_pratos,
ROUND(AVG(Rating),2) AS rating_medio,
SUM(`Rating Count`) AS total_avaliacoes,

ROUND(
AVG(Rating) * LOG(SUM(`Rating Count`) + 1),
2
) AS performance_score

FROM swiggy_data

GROUP BY `Restaurant Name`
)

SELECT
DENSE_RANK() OVER(
ORDER BY performance_score DESC
) AS ranking,
*
FROM restaurant_performance;