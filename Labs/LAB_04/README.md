# Lab 004 - Loading data in to Azure SQL Data Warehouse. [Polybase]

In this lab you are a Magic Works Consultant. You're responsible for developing Magic works new data warehouse in Azure SQL Data Warehouse. Magic works have done some of the work for you, they have loaded all their data in to an Azure blob storage account. 

The connection details you need for this storage account are as follows: 
```sql
Blob Account: magicadventure
Container: data
Full: wasbs://data@magicadventure.blob.core.windows.net
Blob Key: ZjqKvIDFMTiIFI6MgawacKZTJGy5uW/Tt8AemBdsVKjO6qCGCmnkPfSVEtqDngc5KZbZ49XNhYqVnB6mfqnkdg==

```

To view the data you can install Azure storage explorer. You can download this 
[here](https://azure.microsoft.com/en-gb/features/storage-explorer/)

Azure storage explorer also now works with Azure Data Lake - which is nice!

In this lab you will need to complete the folloing actions. 

1. Log in to SSMS 
2. Connect to your instance (or an instance we have proved you) of Azure SQL Data Warehouse. 
3. Create a Master Key
4. Create a Database scoped credential 
5. Create an external data source 
6. Create a textfile format
7. Create an external table
8. Query that table 

Below is a snippt that you can copy and amend. If this does not work, you will find the commpleted example code at the bottom of this document. 

### Login and connect to the database. 
You should be able to do this now. If you cannot, then please let us know, either in-person or on Slack. 
Please refer to LAB 00 for details on connecting to an instance Of Azure SQLDW. 

***PLEASE MAKE SURE YOU'RE CONNECTED TO YOUR INSTANCE***

### Run the following clean up script
This ensures that the version of the data warehouse you're working with is fresh. 
```sql
EXEC dbo.ResetBuildScript
```

### Create a Master Key and Scoped credential 
We need to create a master key, only necessary if one does not exist already.
```sql
CREATE MASTER KEY;
```

### Create a scoped credential
IDENTITY: Provide any string, it is not used for authentication to Azure storage.
SECRET: Provide your Azure storage account key. Grab this from above.
```sql
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential
WITH
    IDENTITY = 'user',
    SECRET = '<Blob Key>'
;
```

### Create an External Data Source 
Next we need to create an external data source. You will need to amend 'blob_container_name' and 'azure_storage_account_name', you can find both of these at the top of this document. Key points here are that we are making a connection to a HADOOP type data source. BLOB storage runs on HDFS, the Hadoop file system. 
blob_container_name: product
azure_storage_account_name: magicworksblob 
```sql
CREATE EXTERNAL DATA SOURCE AzureStorage
WITH (
    TYPE = HADOOP,
    LOCATION = 'wasbs://<blob_container_name>@<azure_storage_account_name>.blob.core.windows.net',
    CREDENTIAL = AzureStorageCredential
);
```

### Create a textfile format
You only need to create this part once, per type of data you're consuming. If you're consuming a pipe delimted file, you would need a slightly different textfile format. 
```sql
CREATE EXTERNAL FILE FORMAT TextFile
WITH (
    FORMAT_TYPE = DelimitedText,
    FORMAT_OPTIONS (FIELD_TERMINATOR = ',', STRING_DELIMITER= '"')
);

```

### Create an external table
This is schema on read so we need to state what the expected data should be as it is read. 
Polybase has some quirks, but as long as we have structured data we will be fine. If you need to clean the data to conform with Polybase's quirks, we recommend custom functions in Data Factory or to use Data Lake Analytics. 

You will need to amend the following. 
```sql
CREATE EXTERNAL DATA SOURCE Blob_product
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://product@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);
```

```sql
CREATE EXTERNAL TABLE Ext.Product(
	 [ProductID] NVARCHAR(50) ,   [Name] NVARCHAR(500) ,   [ProductNumber] NVARCHAR(500) ,   [MakeFlag] NVARCHAR(500) ,   [FinishedGoodsFlag] NVARCHAR(500) ,   [Color] NVARCHAR(500) ,   [SafetyStockLevel] NVARCHAR(500) ,   [ReorderPoint] NVARCHAR(500) ,   [StandardCost] NVARCHAR(500) ,   [ListPrice] NVARCHAR(500) ,   [Size] NVARCHAR(500) ,   [SizeUnitMeasureCode] NVARCHAR(500) ,   [WeightUnitMeasureCode] NVARCHAR(500) ,   [Weight] NVARCHAR(50) ,   [DaysToManufacture] NVARCHAR(50) ,   [ProductLine] NVARCHAR(500) ,   [Class] NVARCHAR(500) ,   [Style] NVARCHAR(500) ,   [ProductSubcategoryID] NVARCHAR(50) ,   [ProductModelID] NVARCHAR(50) ,   [SellStartDate] NVARCHAR(50) ,   [SellEndDate] NVARCHAR(50) ,   [DiscontinuedDate] NVARCHAR(50) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(50)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_product,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 0);
```

### Query that table 
If all the elements above have worked you will now be able to query the data in Blob storage. 
Remember. This is not a table in the data warehouse. This is a connection via a MapReduce function to Azure Blob Storage. 
```sql
SELECT * FROM Ext.Product
```



## Completed example
```sql
BEGIN TRY
	CREATE MASTER KEY;
END TRY
BEGIN CATCH
	PRINT 'No Need'
END CATCH;
GO

BEGIN TRY
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential
WITH
    IDENTITY = 'user',
    SECRET = 'ZjqKvIDFMTiIFI6MgawacKZTJGy5uW/Tt8AemBdsVKjO6qCGCmnkPfSVEtqDngc5KZbZ49XNhYqVnB6mfqnkdg=='
END TRY
BEGIN CATCH
	PRINT 'No Need'
END CATCH;
GO


BEGIN TRY
	CREATE EXTERNAL FILE FORMAT TextFileQuote
WITH (
    FORMAT_TYPE = DelimitedText,
    FORMAT_OPTIONS (FIELD_TERMINATOR = ',', STRING_DELIMITER= '"')
)
END TRY
BEGIN CATCH
	PRINT 'No Need'
END CATCH;
GO

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Product;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_product;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_product
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://data@magicadventure.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Product(
	 [ProductID] NVARCHAR(50) ,   [Name] NVARCHAR(500) ,   [ProductNumber] NVARCHAR(500) ,   [MakeFlag] NVARCHAR(500) ,   [FinishedGoodsFlag] NVARCHAR(500) ,   [Color] NVARCHAR(500) ,   [SafetyStockLevel] NVARCHAR(500) ,   [ReorderPoint] NVARCHAR(500) ,   [StandardCost] NVARCHAR(500) ,   [ListPrice] NVARCHAR(500) ,   [Size] NVARCHAR(500) ,   [SizeUnitMeasureCode] NVARCHAR(500) ,   [WeightUnitMeasureCode] NVARCHAR(500) ,   [Weight] NVARCHAR(50) ,   [DaysToManufacture] NVARCHAR(50) ,   [ProductLine] NVARCHAR(500) ,   [Class] NVARCHAR(500) ,   [Style] NVARCHAR(500) ,   [ProductSubcategoryID] NVARCHAR(50) ,   [ProductModelID] NVARCHAR(50) ,   [SellStartDate] NVARCHAR(50) ,   [SellEndDate] NVARCHAR(50) ,   [DiscontinuedDate] NVARCHAR(50) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(50)
)
WITH (LOCATION='Production_Product.txt',
      DATA_SOURCE  = Blob_product,
      FILE_FORMAT  = TextFileQuote,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 1);


SELECT * FROM Ext.Product
```