--creating the dimesion product Table
Drop Table [pc_sales_staging].[dbo].[Dim_Product]
create table[pc_sales_staging].[dbo].[Dim_Product](
[ProductID] INT IDENTITY (1,1) PRIMARY KEY,
[Pc_Make] nvarchar (250) Not Null,
[Pc_Model] nvarchar (250) Not Null,
[Storage_Type] nvarchar (250) Not Null,
[Storage_Capacity] nvarchar (250) Not Null,
[Ram] nvarchar (250) Not Null,
LoadDate DateTime Default getdate()
)
-- inserting the values into dimesion_product
Insert into [pc_sales_staging].[dbo].[Dim_Product] (PC_Make,PC_Model,Storage_Type,RAM,Storage_Capacity)
Select Distinct PC_Make,PC_Model,Storage_Type,RAM,Storage_Capacity
From [pc_sales_staging].[dbo].[raw_pc_data]
--Testing
Select * From [pc_sales_staging].[dbo].[Dim_Product]