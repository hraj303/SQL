# 7. Display employees with the cumulative (running) total of salaries ordered by hiredate.

select ename,sal,hiredate,sum(sal) over(order by hiredate asc)
from emp;
