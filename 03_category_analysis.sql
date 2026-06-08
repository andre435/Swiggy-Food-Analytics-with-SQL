SELECT
Category,
COUNT(DISTINCT `Dish Name`) AS total_pratos,
ROUND(AVG(Rating),2) AS rating_medio,
SUM(`Rating Count`) AS total_avaliacoes
FROM swiggy_data
GROUP BY Category
ORDER BY total_avaliacoes DESC;