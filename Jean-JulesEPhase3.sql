use ClincDatabase;


SELECT * FROM Patient
ORDER BY PatientLName;


SELECT * FROM Employee
ORDER BY EmployeeLName;


SELECT CONCAT(PatientFName, ' ', PatientLName) AS FullName, City, State
FROM Patient
WHERE State = 'MA'
ORDER BY City, PatientLName;


SELECT CONCAT(EmployeeFName, ' ', EmployeeLName) AS FullName, TypeID
FROM Employee
WHERE TypeID IN ('PHY', 'SURG')
ORDER BY TypeID, EmployeeLName;


SELECT * FROM MedicalConditions
ORDER BY Description;


SELECT * FROM Prescription
WHERE  Description = '20mg'
ORDER BY Description;


SELECT CONCAT(EmployeeFName, ' ', EmployeeLName) AS FullName, DateOfHire
FROM Employee
WHERE DateOfHire >= '2019-01-01'
ORDER BY DateOfHire DESC;


SELECT * FROM Employee
WHERE Gender = 'F'
ORDER BY EmployeeLName;


SELECT * FROM Employeetype
WHERE typeID IN (SELECT typeID FROM Employeetype WHERE TypeID = 'SURG');




SELECT CONCAT(PatientFName, ' ', PatientLName) AS FullName, City, State
FROM Patient
WHERE Gender = 'M' AND State != 'MA';

