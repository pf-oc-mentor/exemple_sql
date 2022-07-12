SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) RowNumber
FROM ExamResult
ORDER BY Studentname, 
         RowNumber;