-- <Migration ID="e3e9365f-8cf0-41fd-aa31-ed5a74db7c96" />
GO

PRINT N'Dropping index [AK_Dept_Name] from [HumanResources].[Department]'
GO
DROP INDEX [AK_Dept_Name] ON [HumanResources].[Department]
GO
PRINT N'Creating index [AK_Department_Name] on [HumanResources].[Department]'
GO
CREATE NONCLUSTERED INDEX [AK_Department_Name] ON [HumanResources].[Department] ([DepartmentID])
GO
