-- Total de pratos

SELECT
COUNT(DISTINCT `Dish Name`) AS total_pratos
FROM swiggy_data;

-- Estatísticas de preço

SELECT
MIN(`Price (INR)`) AS preco_minimo,
MAX(`Price (INR)`) AS preco_maximo,
ROUND(AVG(`Price (INR)`),2) AS preco_medio
FROM swiggy_data;