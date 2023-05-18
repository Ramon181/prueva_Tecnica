-- Active: 1684383558003@@127.0.0.1@3306@reporte
SELECT
    persona.cc,
    persona.nombre,
    estudio.institucion,
    estudio.fecha
FROM
    persona
INNER JOIN
    estudios AS estudio ON persona.cc = estudio.FKPersona
INNER JOIN
    (
        SELECT
            FKPersona,
            MAX(fecha) AS ultima_fecha
        FROM
            estudios
        GROUP BY
            FKPersona
    ) AS ult_estudio ON estudio.FKPersona = ult_estudio.FKPersona
                     AND estudio.fecha = ult_estudio.ultima_fecha;