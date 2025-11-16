# 12. Find employees whose salary is greater than the average salary of their department using a window function (no subquery).
WITH cte AS ( SELECT ename,deptno,sal,AVG(sal) OVER (PARTITION BY deptno) AS avgsal 
FROM emp)
SELECT *
FROM cte
WHERE sal > avgsal;
