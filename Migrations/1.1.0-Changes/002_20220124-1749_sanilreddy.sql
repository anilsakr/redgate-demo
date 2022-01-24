-- <Migration ID="a24f57f6-a444-4e79-8167-e7a75837f041" />
GO

PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[Mobile] [nchar] (10) NULL
GO
