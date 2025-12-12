use Clinicdatabase;

SELECT state, COUNT(patientID) AS total_patients
FROM patient
GROUP BY state
ORDER BY state;

SELECT MIN(date) AS earliest_date, MAX(date) AS latest_date
FROM appointment
WHERE status = 'Scheduled';  

SELECT TypeID, COUNT(EmployeeID) AS total_employees
FROM employee
GROUP BY TypeID
ORDER BY TypeID;

SELECT DayOfWeek, COUNT(EmployeeID) AS TotalEmployees
FROM (
    SELECT DISTINCT e.EmployeeID, s.DayOfWeek
    FROM Schedule s
    JOIN Employee e ON s.EmployeeID = e.EmployeeID
) AS WorkingDays
GROUP BY DayOfWeek
ORDER BY DayOfWeek;

SELECT Gender, COUNT(PatientID) AS TotalPatients
FROM Patient
GROUP BY Gender;

UPDATE Patient
SET Gender = 'F'
WHERE PatientID = 'DW001';

UPDATE Appointment
SET Status = 'Complete'
WHERE Status = 'Scheduled';  


Insert Into Diagnosis
Values
('DIAG001', 'APP001'),
('DIAG002', 'APP002'),
('DIAG003', 'APP003');


UPDATE Appointment
SET Status = 'Scheduled', Date = '2023-12-31', StartTime = '00:00', Duration = '0'
WHERE Status <> 'Complete';



