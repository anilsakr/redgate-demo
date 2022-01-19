-- <Migration ID="06e3d163-13d0-41b3-95f7-3ed836c62a50" />
GO

PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[Email] [nchar] (10) NULL
GO
