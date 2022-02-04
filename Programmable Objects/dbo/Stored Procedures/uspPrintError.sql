IF OBJECT_ID('[dbo].[uspPrintError]') IS NOT NULL
	DROP PROCEDURE [dbo].[uspPrintError];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- uspPrintError prints error information about the error that caused 
-- execution to jump to the CATCH block of a TRY...CATCH construct. 
-- Should be executed from within the scope of a CATCH block otherwise 
-- it will return without printing any error information.
CREATE PROCEDURE [dbo].[uspPrintError] 
AS
BEGIN
    SET NOCOUNT ON;

    -- Print error information. 
    PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
          ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
          ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
          ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
          ', Line ' + CONVERT(varchar(5), ERROR_LINE());
		  PRINT 'another line'

		  INSERT INTO [dbo].[Address]
           ([column1]
           ,[column2]
           ,[column3]
           ,[column4]
           ,[column5]
           ,[column6],
		   [column7], [column8], [column9])
     VALUES
           (1,         'a',     'b','c',2,'d', 'e','f', 'g'
        )



		-- person.address


INSERT INTO [Person].[AddressType]
           ([Name]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES(
           'anil',
           'B84F78B1-4EFE-4A0E-8CB7-70E9F112F786',
          SYSUTCDATETIME())






    PRINT ERROR_MESSAGE();
END;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Prints error information about the error that caused execution to jump to the CATCH block of a TRY...CATCH construct. Should be executed from within the scope of a CATCH block otherwise it will return without printing any error information.', 'SCHEMA', N'dbo', 'PROCEDURE', N'uspPrintError', NULL, NULL
GO
