use msis230; 

SELECT 
    e.employeeID,
    e.EmployeeFName , e.EmployeeLName AS full_name,
    s.DayOfWeek,
    s.StartTime,
    s.EndTime
FROM 
    employee e
LEFT JOIN 
    schedule s ON e.employeeID = s.employeeID
ORDER BY 
    e.employeeID, s.StartTime;   
    
    SELECT 
    a.Date,
    CONCAT(p.PatientFName, ' ', p.PatientLName) AS patient_full_name,
    CONCAT(e.EmployeeFName, ' ', e.EmployeeLName) AS employee_full_name,
    a.StartTime,
    a.duration,
    a.status
FROM 
    patient p
LEFT JOIN 
    appointment a ON p.PatientID = a.PatientID
LEFT JOIN 
    employee e ON a.EmployeeID= e.EmployeeID
ORDER BY 
    a.Date, p.PatientLName;

SELECT PrescriptionID, Description
FROM Prescription
WHERE PrescriptionID not IN (
    SELECT PrescriptionID
    FROM medicalhistorypres
); 


SELECT ConditionID, Description
FROM medicalconditions
WHERE ConditionID IN (
    SELECT ConditionID
    FROM medicalhistorycond
    WHERE PatientID = PatientID
);  

SELECT TypeID, Description
FROM employeetype
WHERE TypeID NOT IN (
    SELECT DISTINCT TypeID
    FROM employee
);

