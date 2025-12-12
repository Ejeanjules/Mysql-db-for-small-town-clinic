use msis230;

SELECT 
    CONCAT(employeeFName, ' ', employeeLName) AS full_name,
    schedule.DayOfWeek,
    schedule.StartTime,
    schedule.EndTime
FROM 
    employee
JOIN 
    schedule ON employee.EmployeeID = schedule.EmployeeID
ORDER BY 
    schedule.EmployeeID, schedule.StartTime;   
    
  SELECT 
    EmployeeLName AS "Employee Last Name",
    EmployeeFName AS "Employee First Name",
    s.description AS "Specialty Description"
FROM 
    employee e
JOIN 
    specialty s ON SpecialtyID = SpecialtyID
ORDER BY 
    s.description, EmployeeLName;   
    
    SELECT 
    EmployeeLname AS "Employee Last Name",
    EmployeeFName AS "Employee First Name",
    et.description AS "Type Description"
FROM 
    employee e
JOIN 
    employeetype et ON e.TypeID = et.TypeID
ORDER BY 
    et.description, EmployeeLName;
    
   SELECT 
    a.Date AS "Appointment Date",
    CONCAT(p.PatientFName, ' ', p.PatientLName) AS "Patient Full Name",
    CONCAT(e.EmployeeFName, ' ', e.EmployeeLName) AS "Employee Full Name",
    a.StartTime AS "Start Time",
    a.Duration AS "Duration"
FROM 
    appointment a
JOIN 
    patient p ON a.PatientID = p.PatientID
JOIN 
    employee e ON a.EmployeeID = e.EmployeeID  
    
WHERE 
     a.Status = 'Scheduled'
ORDER BY 
    a.Date, p.PatientLName;

SELECT MedicalHistoryCond.Date AS Date,
Patient.PatientLName AS PatienLName,
Patient.PatientFName AS PatientFName,
MedicalHistoryCond.conditionID AS Description,
       'condition' AS Descriptor
FROM Patient
JOIN MedicalHistoryCond ON Patient.PatientID = MedicalHistoryCond.PatientID  

UNION

SELECT MedicalHistorySurg.Date,
	    Patient.PatientLName,
       Patient.PatientFName,
       MedicalHistorySurg.surgeryID,
       'Surgery' AS Description
FROM Patient
JOIN MedicalHistorySurg ON Patient.PatientID = MedicalHistorySurg.PatientID

UNION

SELECT MedicalHistoryPres.Date,
       Patient.PatientFName,
       Patient.PatientLName,
       MedicalHistoryPres.prescriptionid,
       'Prescription' AS Descriptor
FROM Patient
JOIN MedicalHistoryPres ON Patient.PatientID = MedicalHistoryPres.PatientID

ORDER BY patienLName, Date;

