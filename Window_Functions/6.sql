# 6. Rank employees within each department by salary in descending order using RANK().

select ename,deptno,sal,dense_rank() over(partition by deptno order by sal desc)
from emp;
