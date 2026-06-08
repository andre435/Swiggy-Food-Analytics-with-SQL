WITH city_performance AS (

SELECT

City,

COUNT(DISTINCT `Restaurant Name`) AS total_restaurantes,

COUNT(DISTINCT `Dish Name`) AS total_pratos,

ROUND(AVG(Rating),2) AS rating_medio,

SUM(`Rating Count`) AS total_avaliacoes,

ROUND(
AVG(Rating) * LOG(SUM(`Rating Count`) + 1),
2
) AS performance_score

FROM swiggy_data

GROUP BY City
)

SELECT

DENSE_RANK() OVER(
ORDER BY performance_score DESC
) AS ranking,

City,
total_restaurantes,
total_pratos,
rating_medio,
total_avaliacoes,
performance_score

FROM city_performance;