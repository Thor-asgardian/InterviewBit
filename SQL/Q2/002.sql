/* YOUR QUERY GOES HERE
   Example: SELECT * FROM EMPLOYEE;
   Q002 in png 
*/
SELECT CONCAT (D1.DepartmentName ,",",T2.Name ,",",T2.GPA) AS A from Departments as D1
JOIN 
      (SELECT S1.DepartmentId , S1.Name ,S1.GPA FROM Students AS S1
      JOIN 
         (SELECT DepartmentId , MIN(GPA) AS TGPA FROM Students AS S2
         GROUP BY DepartmentId) AS T1
      ON T1.DepartmentId = S1.DepartmentId and  T1. TGPA = S1.GPA) as T2
ON D1.DepartmentId = T2.DepartmentId
ORDER BY A;