UPDATE [DEV PORTAL Users]
SET [Email] = [Login Name]

GO

UPDATE [PER HRA Personal]
SET [E-mail Address] = [Number]

Go
UPDATE [DEV PORTAL Routing Mail Address]
SET [Email] = [Type]

GO

UPDATE [GP HRA Mail Setup] 
SET [HR Mail Address] = 'HR', [Mail Address] = 'Mail', [SERVER NAME] = 'http://localhost/virtualdirectory', 
[From Mail Address] = 'From', [FINANCE MAIL ADDRESS] = 'Finance', [CEO MAIL ADDRESS] = 'CEO' , [AUDIT MAIL ADDRESS] = 'Audit', 
[External Server] = 'http://localhost/virtualdirectory',[Database] = 'DatabaseName'

Go
--Update Basic Salary
UPDATE [PER REM Payrate]
SET [Rate of Pay] = 5000

GO
--Update Earnings and Deductions
UPDATE [PER REM Payroll Master]
SET [Value] = 800
go
--

--DELETE * FROM [PER REM Payroll Calc]


update [dev portal routing] set active =0