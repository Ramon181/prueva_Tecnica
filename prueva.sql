-- Active: 1684383558003@@127.0.0.1@3306@prueva
SELECT
    CONCAT(cliente.primer_nombre, ' ', cliente.primer_apellido) AS nombre,
    cliente.dias_mora,
    CASE
        WHEN cliente.dias_mora BETWEEN 1 AND 20 THEN 'Riesgo Bajo'
        WHEN cliente.dias_mora BETWEEN 21 AND 35 THEN 'Riesgo Medio'
        ELSE 'Riesgo Alto'
    END AS riesgo,
    ciudad.nombre AS ciudad
FROM
    cliente
JOIN
    ciudad ON cliente.id_ciudad = ciudad.id
WHERE
    cliente.dias_mora > 0
ORDER BY
    cliente.dias_mora ASC;