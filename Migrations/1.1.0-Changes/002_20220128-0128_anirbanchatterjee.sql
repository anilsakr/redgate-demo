-- <Migration ID="048dcce0-2c7c-4a2b-90c4-407d2d2110b1" />
GO


SET DATEFORMAT YMD;


GO
IF (SELECT COUNT(*)
    FROM   [HumanResources].[Department]) = 0
    BEGIN
        PRINT (N'Add 3 rows to [HumanResources].[Department]');
        SET IDENTITY_INSERT [HumanResources].[Department] ON;
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (1, N'Engineering', N'Research and Development', '2022-01-27 19:42:21.470');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (2, N'Tool Design', N'Research and Development', '2022-01-27 19:43:51.420');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (3, N'Human Resources', N'Executive General and Administration', '2022-01-27 19:43:51.420');
        SET IDENTITY_INSERT [HumanResources].[Department] OFF;
    END


GO