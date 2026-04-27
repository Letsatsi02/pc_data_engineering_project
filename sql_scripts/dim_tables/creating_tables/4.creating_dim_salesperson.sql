--creating the dimension saleperson table
-- Drop table
DROP TABLE IF EXISTS [pc_sales_staging].[dbo].[Dim_Salesperson];
-- Create the Dim_Salesperson table
CREATE TABLE [pc_sales_staging].[dbo].[Dim_Salesperson] ( 
    [SalespersonID]           INT   IDENTITY(1,1) PRIMARY KEY,
    [sales_person_name]       NVARCHAR(250) NOT NULL,
    [sales_person_department] NVARCHAR(250) NOT NULL,
    [loadDate] DATETIME      DEFAULT GETDATE()
);

-- Insert values into Dim_Salesperson
INSERT INTO [pc_sales_staging].[dbo].[Dim_Salesperson] 
([sales_person_name], [sales_person_department])
SELECT DISTINCT 
[sales_person_name],
[sales_person_department]
FROM [pc_sales_staging].[dbo].[raw_pc_data];
--Testing--
Select * from [pc_sales_staging].[dbo].[Dim_Salesperson] 