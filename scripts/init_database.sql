/*
================================================================================
Script Purpose: Create DataWarehouse database with bronze, silver, gold schemas
================================================================================
- Bronze: Raw data from source systems
- Silver: Cleansed and validated data
- Gold: Business-ready aggregated data
================================================================================
*/

-- Create database if not exists
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE DataWarehouse;
END
GO

-- Use database
USE DataWarehouse;
GO

-- Create schemas if not exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    CREATE SCHEMA bronze;
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    CREATE SCHEMA silver;
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
BEGIN
    CREATE SCHEMA gold;
END
GO
GO
