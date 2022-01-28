-- <Migration ID="7ae7391e-ac56-4397-9259-6834dcdc0f97" />
GO


SET IMPLICIT_TRANSACTIONS, NUMERIC_ROUNDABORT OFF;
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, NOCOUNT, QUOTED_IDENTIFIER ON;

SET DATEFORMAT YMD;


GO
PRINT (N'Add 1 row to [HumanResources].[Department]');

SET IDENTITY_INSERT [HumanResources].[Department] ON;

INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
VALUES                                    (4, N'Production', N'Manufacturing', '2008-04-30 00:00:00.000');

SET IDENTITY_INSERT [HumanResources].[Department] OFF;


GO