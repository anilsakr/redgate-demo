-- <Migration ID="4a2f3921-26d6-4bd3-a6d5-3566a6eb8262" />
GO

PRINT N'Dropping index [AK_Department_Name] from [HumanResources].[Department]'
GO
DROP INDEX [AK_Department_Name] ON [HumanResources].[Department]
GO
PRINT N'Creating index [AK_Dept_Name] on [HumanResources].[Department]'
GO
CREATE NONCLUSTERED INDEX [AK_Dept_Name] ON [HumanResources].[Department] ([DepartmentID])
GO
