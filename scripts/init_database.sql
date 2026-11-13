/*
create database and Schema
script Purpose:
    This script creates a new database named 'DataWarehouse' after chceking if it already exits.
    If the database exits, it is droped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver' and 'gold'

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exits.
    All data in the database will be permanenly deleted. Proceed with caution
    and ensure you have backups before running this script
*/





USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXITS (SELECT 1 FROM sys.databases WHERE namw = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USE WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  
-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
