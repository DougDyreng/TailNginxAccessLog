use dd;

SET @RunningCount = 0;
SELECT 
    totals.StatusGroup,
    totals.LogsByMinute,
    totals.CountByMinute,
    @RunningCount := @RunningCount + totals.CountByMinute AS RunningCount
FROM
(SELECT 
    e.StatusGroup as StatusGroup,
    DATE_FORMAT(LogDateTime, '%Y-%m-%d %H:%i') as LogsByMinute,
    COUNT(*) AS CountByMinute
FROM logs AS e
GROUP BY e.StatusGroup,DATE_FORMAT(LogDateTime, '%Y-%m-%d %H:%i')) totals
ORDER BY totals.StatusGroup,totals.LogsByMinute;
