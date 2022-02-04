-- <Migration ID="a3166d7c-f0af-4f9c-8979-57b9c437650c" />
GO

PRINT N'Dropping extended properties'
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'INDEX', N'AK_Department_Name'
GO
PRINT N'Dropping index [AK_Department_Name] from [HumanResources].[Department]'
GO
DROP INDEX [AK_Department_Name] ON [HumanResources].[Department]
GO
PRINT N'Altering [dbo].[Address]'
GO
ALTER TABLE [dbo].[Address] ADD
[column10] [nvarchar] (50) NULL
GO
PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[Mobile] [nchar] (10) NULL
GO
PRINT N'Creating index [AK_Name] on [HumanResources].[Department]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Name] ON [HumanResources].[Department] ([Name])
GO

SET IMPLICIT_TRANSACTIONS, NUMERIC_ROUNDABORT OFF;
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, NOCOUNT, QUOTED_IDENTIFIER ON;

SET DATEFORMAT YMD;


GO
IF (SELECT COUNT(*)
    FROM   [Person].[AddressType]) = 0
    BEGIN
        PRINT (N'Add 2 rows to [Person].[AddressType]');
        SET IDENTITY_INSERT [Person].[AddressType] ON;
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (1, N'satish', 'b84f78b1-4efe-4a0e-8cb7-70e9f112f886', '2022-01-25 05:40:35.333');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (3, N'anil', 'b84f78b1-4efe-4a0e-8cb7-70e9f112f786', '2022-01-25 05:41:13.310');
        SET IDENTITY_INSERT [Person].[AddressType] OFF;
    END


GO