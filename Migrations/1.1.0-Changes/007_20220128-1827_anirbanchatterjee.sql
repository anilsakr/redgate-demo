-- <Migration ID="c958ceb8-dce8-4eca-a431-27534af2652d" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Update 1 row in [HumanResources].[Department]');

UPDATE [HumanResources].[Department]
SET    [Name] = N'Finance'
WHERE  [DepartmentID] = 2;


GO
PRINT (N'Add 2 rows to [HumanResources].[Department]');

SET IDENTITY_INSERT [HumanResources].[Department] ON;

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (8, N'Facilities', N'Executive General and Administration', '2022-01-28 12:50:43.353');

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (9, N'Shipping', N'Inventory Management', '2022-01-28 12:50:43.353');

SET IDENTITY_INSERT [HumanResources].[Department] OFF;


GO