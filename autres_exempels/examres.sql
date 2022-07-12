SELECT Studentname, 
       Subject,
       avg(Marks) amarks,
       rank() OVER(ORDER BY amarks desc) RowNumber
FROM test.ExamResult
GROUP BY Studentname, Subject;