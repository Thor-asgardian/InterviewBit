/* YOUR QUERY GOES HERE
   Example: SELECT * FROM EMPLOYEE; 
*/
select t2.TestId
from Tests t1, Tests t2
where t2.TestId = t1.TestId + 1 and
      t2.Marks > t1.Marks;