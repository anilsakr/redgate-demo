-- <Migration ID="f257af0d-86ed-4637-9ed0-044826a4ab91" />
GO

PRINT N'Dropping extended properties'
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'INDEX', N'AK_Department_Name'
GO
PRINT N'Dropping index [AK_Department_Name] from [HumanResources].[Department]'
GO
DROP INDEX [AK_Department_Name] ON [HumanResources].[Department]
GO
PRINT N'Creating index [AK_Dept_Name] on [HumanResources].[Department]'
GO
CREATE NONCLUSTERED INDEX [AK_Dept_Name] ON [HumanResources].[Department] ([DepartmentID])
GO
