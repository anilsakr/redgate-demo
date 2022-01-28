IF OBJECT_ID('[dbo].[InsertUpdate]') IS NOT NULL
	DROP PROCEDURE [dbo].[InsertUpdate];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[InsertUpdate]  
(   
   @dept_id INTEGER = NULL,
   @name NVARCHAR(100),  
   @groupname NVARCHAR(100),  
   @moddate DATETIME,
   @StatementType nvarchar(20) = ''
)  
AS  
BEGIN  
IF @StatementType = 'Insert'  
BEGIN  
insert into [HumanResources].[Department]([Name],[GroupName],[ModifiedDate]) values( @name, @groupname, @moddate)  
END  
IF @StatementType = 'Select'  
BEGIN  
select TOP (100) [DepartmentID],[Name],[GroupName],[ModifiedDate]from [HumanResources].[Department]  
END  
IF @StatementType = 'Update'  
BEGIN  
UPDATE [HumanResources].[Department] SET  
[Name] = @name, [GroupName] = @groupname, [ModifiedDate] = @moddate
WHERE [DepartmentID] = @dept_id  
END  
end  
GO
