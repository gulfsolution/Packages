select * from [per hra personal]  where reference like '%austin%' --6384

select [leave scheme],* from [co src job table] where employee = 6384 order by interval asc

select * from [per lve absence request] where employee = 6384 order by [start date] desc

select * from [per lve backdate trans] where employee = 6384
select * from [per lve backdate trans Calc] where employee = 6384 and [request number] = 3347

select * from [per lve backdate summary] where employee = 6384 and [period ID] > 2018062230
select * from [per lve backdate summary Calc] where employee = 6384 and [period ID] > 2018062230
select * from [CO SRC Job Table TEmp] where employee = 6384 and interval = 2018082231

select * from [DEV PORTAL Lookup] where [Prompt] like '%scheme%'
SELECT dbo.PERFindDateDays_Func_New
					(
					'2018-08-01',
					'2018-08-19',
					'Monthly',2018082231,'Annual Leave',1000,6384)

					Select [Use Calendar Detail] 
				From [CO LVE Absence Transaction Rules] 
				Where Entity = 1000 
				and [Absence Transaction] = 'Annual Leave' 
				And [Leave Scheme] = (Select [Leave Scheme] , * 
									From [CO SRC Job Table] 
									Where Employee = 6384 
									And Interval = 2018082231)

select * from [CO SRC Job Table] where employee = 6384 order by interval desc

SELECT * from [per rem payroll calc temp] where employee = 6384

select * from [co src job table temp] where employee = 6384

--select * from [per lve backdate trans] where employee = 6384
--delete from [per lve backdate trans Calc] where employee = 6384 and [request number] = 3347

--delete from [per lve backdate summary] where employee = 6384 and [period ID] > 2018062230
--delete from [per lve backdate summary Calc] where employee = 6384 and [period ID] > 2018062230

 EXEC [PER LVE ReCalc Payroll] 6384 ,2018072231 ,'DEFAULT' ,'LEAVE 01' ,'Projected'
 EXEC [PER LVE ReCalc Payroll] 6384 ,2018082231 ,'DEFAULT' ,'LEAVE 01' ,'Projected'
select * from [CO_SRC_Search_VIEW] WHERE Employee = 6384
[dbo].[PER LVE DAYS TAKEN PROC NEW] 6384
@RT int,
@Period int,
@Absence nvarchar(100),
@LeaveScheme nvarchar(50),
@LeaveType nvarchar(50),
@Status nvarchar(50) = null

select * from [co lve leave schemes master]

SELECT [Leave Scheme] , * from [CO LVE Absence Transaction Rules]

--UPDATE [CO LVE Absence Transaction Rules] SET [Leave Scheme] = '22 Days' WHERE [Absence Summary] = 349


