use master;
-- CREATE THE 'data_warehouse' DATABASE --
create database data_warehouse;

use data_warehouse;
go
--CREATE 3 SCHEMAS FOR 3 LAYERS --
create schema bronze;
go
create schema silver;
go
create schema gold;
go
