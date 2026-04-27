IF DB_ID('pc_sales_staging') IS NULL
BEGIN
    CREATE DATABASE pc_sales_staging;
END
GO

USE pc_sales_staging;
GO