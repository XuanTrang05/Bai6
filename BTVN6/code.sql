SELECT * FROM SV
WHERE CONVERT(DATE, Ns, 103) = '2004-07-05';
SELECT * FROM SV
WHERE DAY(NS) = 5 AND MONTH(NS) = 7;
SELECT * FROM SV
WHERE MONTH(NS) = 7 AND YEAR(NS) = 2004;
SELECT * FROM SV
WHERE Ten = N'Trang';
SELECT * FROM SV
WHERE HoDem = N'Hoàng Thị Xuân';
SELECT * FROM SV
WHERE LEN(SDT) = 9
AND (
    IIF(SUBSTRING(SDT,1,1) <> '0', 1, 0) +
    IIF(SUBSTRING(SDT,2,1) <> '3', 1, 0) +
    IIF(SUBSTRING(SDT,3,1) <> '3', 1, 0) +
    IIF(SUBSTRING(SDT,4,1) <> '2', 1, 0) +
    IIF(SUBSTRING(SDT,5,1) <> '9', 1, 0) +
    IIF(SUBSTRING(SDT,6,1) <> '1', 1, 0) +
    IIF(SUBSTRING(SDT,7,1) <> '4', 1, 0) +
    IIF(SUBSTRING(SDT,8,1) <> '6', 1, 0) +
    IIF(SUBSTRING(SDT,9,1) <> '1', 1, 0) +
    IIF(SUBSTRING(SDT,10,1) <> '1', 1, 0)
) = 1;

SELECT *FROM SV
WHERE 
    (lop LIKE '%KMT%' OR lop LIKE '%KTP%')
    AND (
        hodem LIKE N'%Thị%' 
        OR ten IN (
            N'My', N'Trinh', N'Tuyết', N'Thảo', 
            N'Tiên', N'Như', N'Thu', N'Yến', N'Vân', N'Hạnh'
        )
    );
	SELECT *
FROM SV
WHERE lop LIKE '%KMT%'
ORDER BY ten COLLATE Vietnamese_CI_AI, hodem COLLATE Vietnamese_CI_AI;

