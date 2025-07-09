WITH CTE_Ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY BU ORDER BY [Date]) AS rn
    FROM HZL_Table
),

RecursiveFill (rn, [Date], BU, Value) AS (
    SELECT rn, [Date], BU, Value
    FROM CTE_Ranked
    WHERE rn = 1

    UNION ALL

    SELECT c.rn, c.[Date], c.BU,
           CASE 
               WHEN c.Value IS NULL THEN r.Value 
               ELSE c.Value 
           END
    FROM CTE_Ranked c
    JOIN RecursiveFill r 
      ON c.BU = r.BU AND c.rn = r.rn + 1
)

SELECT [Date], BU, Value
FROM RecursiveFill
ORDER BY BU, [Date];
