-- <Migration ID="192b8c29-7e56-4eff-9e0b-429180d67d42" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Update 1 row in [HumanResources].[Department]');

UPDATE [HumanResources].[Department]
SET    [Name]      = N'Executive',
       [GroupName] = N'Research and Development'
WHERE  [DepartmentID] = 3;


GO
PRINT (N'Add 3 rows to [HumanResources].[Department]');

SET IDENTITY_INSERT [HumanResources].[Department] ON;

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (5, N'Facilities and Maintenance', N'Executive General and Administration', '2022-01-28 07:40:16.293');

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (6, N'Shipping and Receiving', N'Inventory Management', '2022-01-28 07:40:16.293');

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (7, N'Quality Assurance', N'Quality Assurance', '2008-04-30 00:00:00.000');

SET IDENTITY_INSERT [HumanResources].[Department] OFF;


GO