-- #######################################################################################################################################
-- Build all missing external tables 
-- #######################################################################################################################################

BEGIN TRY
	DROP PROCEDURE dbo.CreateAllExternalTables
END TRY
BEGIN CATCH
	PRINT 'No Need'
END CATCH;
GO

CREATE PROCEDURE dbo.CreateAllExternalTables AS 
BEGIN

	/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Address;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_address;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_address
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://address@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Address(
	 [AddressID] NVARCHAR(250) ,   [AddressLine1] NVARCHAR(500) ,   [AddressLine2] NVARCHAR(500) ,   [City] NVARCHAR(500) ,   [StateProvinceID] NVARCHAR(250) ,   [PostalCode] NVARCHAR(500) ,   [SpatialLocation] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_address,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.AddressType;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_addresstype;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_addresstype
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://addresstype@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.AddressType(
	 [AddressTypeID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_addresstype,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.AdventureWorksDWBuildVersion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_adventureworksdwbuildversion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_adventureworksdwbuildversion
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://adventureworksdwbuildversion@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.AdventureWorksDWBuildVersion(
	 [DBVersion] NVARCHAR(500) ,   [VersionDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_adventureworksdwbuildversion,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.AuditLog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_auditlog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_auditlog
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://auditlog@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.AuditLog(
	 [Stage] NVARCHAR(500) ,   [AuditDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_auditlog,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.AWBuildVersion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_awbuildversion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_awbuildversion
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://awbuildversion@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.AWBuildVersion(
	 [SystemInformationID] NVARCHAR(500) ,   [Database Version] NVARCHAR(500) ,   [VersionDate] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_awbuildversion,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.BillOfMaterials;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_billofmaterials;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_billofmaterials
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://billofmaterials@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.BillOfMaterials(
	 [BillOfMaterialsID] NVARCHAR(250) ,   [ProductAssemblyID] NVARCHAR(250) ,   [ComponentID] NVARCHAR(250) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [UnitMeasureCode] NVARCHAR(500) ,   [BOMLevel] NVARCHAR(500) ,   [PerAssemblyQty] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_billofmaterials,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.BusinessEntity;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_businessentity;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_businessentity
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://businessentity@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.BusinessEntity(
	 [BusinessEntityID] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_businessentity,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.BusinessEntityAddress;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_businessentityaddress;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_businessentityaddress
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://businessentityaddress@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.BusinessEntityAddress(
	 [BusinessEntityID] NVARCHAR(250) ,   [AddressID] NVARCHAR(250) ,   [AddressTypeID] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_businessentityaddress,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.BusinessEntityContact;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_businessentitycontact;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_businessentitycontact
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://businessentitycontact@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.BusinessEntityContact(
	 [BusinessEntityID] NVARCHAR(250) ,   [PersonID] NVARCHAR(250) ,   [ContactTypeID] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_businessentitycontact,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ContactType;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_contacttype;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_contacttype
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://contacttype@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ContactType(
	 [ContactTypeID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_contacttype,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.CountryRegion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_countryregion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_countryregion
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://countryregion@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.CountryRegion(
	 [CountryRegionCode] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_countryregion,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.CountryRegionCurrency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_countryregioncurrency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_countryregioncurrency
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://countryregioncurrency@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.CountryRegionCurrency(
	 [CountryRegionCode] NVARCHAR(500) ,   [CurrencyCode] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_countryregioncurrency,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.CreditCard;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_creditcard;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_creditcard
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://creditcard@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.CreditCard(
	 [CreditCardID] NVARCHAR(250) ,   [CardType] NVARCHAR(500) ,   [CardNumber] NVARCHAR(500) ,   [ExpMonth] NVARCHAR(500) ,   [ExpYear] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_creditcard,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Culture;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_culture;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_culture
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://culture@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Culture(
	 [CultureID] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_culture,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Currency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_currency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_currency
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://currency@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Currency(
	 [CurrencyCode] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_currency,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.CurrencyRate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_currencyrate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_currencyrate
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://currencyrate@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.CurrencyRate(
	 [CurrencyRateID] NVARCHAR(250) ,   [CurrencyRateDate] NVARCHAR(250) ,   [FromCurrencyCode] NVARCHAR(500) ,   [ToCurrencyCode] NVARCHAR(500) ,   [AverageRate] NVARCHAR(500) ,   [EndOfDayRate] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_currencyrate,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Customer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_customer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_customer
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://customer@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Customer(
	 [CustomerID] NVARCHAR(250) ,   [PersonID] NVARCHAR(250) ,   [StoreID] NVARCHAR(250) ,   [TerritoryID] NVARCHAR(250) ,   [AccountNumber] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_customer,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DatabaseLog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_databaselog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_databaselog
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://databaselog@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DatabaseLog(
	 [DatabaseLogID] NVARCHAR(250) ,   [PostTime] NVARCHAR(250) ,   [TSQL] NVARCHAR(500) ,   [XmlEvent] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_databaselog,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Department;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_department;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_department
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://department@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Department(
	 [DepartmentID] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [GroupName] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_department,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimAccount;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimaccount;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimaccount
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimaccount@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimAccount(
	 [AccountKey] NVARCHAR(250) ,   [ParentAccountKey] NVARCHAR(250) ,   [AccountCodeAlternateKey] NVARCHAR(250) ,   [ParentAccountCodeAlternateKey] NVARCHAR(250) ,   [AccountDescription] NVARCHAR(500) ,   [AccountType] NVARCHAR(500) ,   [Operator] NVARCHAR(500) ,   [CustomMembers] NVARCHAR(600) ,   [ValueType] NVARCHAR(500) ,   [CustomMemberOptions] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimaccount,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimCurrency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimcurrency;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimcurrency
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimcurrency@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimCurrency(
	 [CurrencyKey] NVARCHAR(250) ,   [CurrencyAlternateKey] NVARCHAR(500) ,   [CurrencyName] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimcurrency,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimCustomer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimcustomer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimcustomer
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimcustomer@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimCustomer(
	 [CustomerKey] NVARCHAR(250) ,   [GeographyKey] NVARCHAR(250) ,   [CustomerAlternateKey] NVARCHAR(500) ,   [Title] NVARCHAR(500) ,   [FirstName] NVARCHAR(500) ,   [MiddleName] NVARCHAR(500) ,   [LastName] NVARCHAR(500) ,   [NameStyle] NVARCHAR(500) ,   [BirthDate] NVARCHAR(250) ,   [MaritalStatus] NVARCHAR(500) ,   [Suffix] NVARCHAR(500) ,   [Gender] NVARCHAR(500) ,   [EmailAddress] NVARCHAR(500) ,   [YearlyIncome] NVARCHAR(500) ,   [TotalChildren] NVARCHAR(500) ,   [NumberChildrenAtHome] NVARCHAR(500) ,   [EnglishEducation] NVARCHAR(500) ,   [SpanishEducation] NVARCHAR(500) ,   [FrenchEducation] NVARCHAR(500) ,   [EnglishOccupation] NVARCHAR(500) ,   [SpanishOccupation] NVARCHAR(500) ,   [FrenchOccupation] NVARCHAR(500) ,   [HouseOwnerFlag] NVARCHAR(500) ,   [NumberCarsOwned] NVARCHAR(500) ,   [AddressLine1] NVARCHAR(500) ,   [AddressLine2] NVARCHAR(500) ,   [Phone] NVARCHAR(500) ,   [DateFirstPurchase] NVARCHAR(250) ,   [CommuteDistance] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimcustomer,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimDate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimdate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimdate
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimdate@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimDate(
	 [DateKey] NVARCHAR(250) ,   [FullDateAlternateKey] NVARCHAR(250) ,   [DayNumberOfWeek] NVARCHAR(500) ,   [EnglishDayNameOfWeek] NVARCHAR(500) ,   [SpanishDayNameOfWeek] NVARCHAR(500) ,   [FrenchDayNameOfWeek] NVARCHAR(500) ,   [DayNumberOfMonth] NVARCHAR(500) ,   [DayNumberOfYear] NVARCHAR(500) ,   [WeekNumberOfYear] NVARCHAR(500) ,   [EnglishMonthName] NVARCHAR(500) ,   [SpanishMonthName] NVARCHAR(500) ,   [FrenchMonthName] NVARCHAR(500) ,   [MonthNumberOfYear] NVARCHAR(500) ,   [CalendarQuarter] NVARCHAR(500) ,   [CalendarYear] NVARCHAR(500) ,   [CalendarSemester] NVARCHAR(500) ,   [FiscalQuarter] NVARCHAR(500) ,   [FiscalYear] NVARCHAR(500) ,   [FiscalSemester] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimdate,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimDepartmentGroup;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimdepartmentgroup;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimdepartmentgroup
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimdepartmentgroup@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimDepartmentGroup(
	 [DepartmentGroupKey] NVARCHAR(250) ,   [ParentDepartmentGroupKey] NVARCHAR(250) ,   [DepartmentGroupName] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimdepartmentgroup,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimEmployee;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimemployee;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimemployee
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimemployee@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimEmployee(
	 [EmployeeKey] NVARCHAR(250) ,   [ParentEmployeeKey] NVARCHAR(250) ,   [EmployeeNationalIDAlternateKey] NVARCHAR(500) ,   [ParentEmployeeNationalIDAlternateKey] NVARCHAR(500) ,   [SalesTerritoryKey] NVARCHAR(250) ,   [FirstName] NVARCHAR(500) ,   [LastName] NVARCHAR(500) ,   [MiddleName] NVARCHAR(500) ,   [NameStyle] NVARCHAR(500) ,   [Title] NVARCHAR(500) ,   [HireDate] NVARCHAR(250) ,   [BirthDate] NVARCHAR(250) ,   [LoginID] NVARCHAR(512) ,   [EmailAddress] NVARCHAR(500) ,   [Phone] NVARCHAR(500) ,   [MaritalStatus] NVARCHAR(500) ,   [EmergencyContactName] NVARCHAR(500) ,   [EmergencyContactPhone] NVARCHAR(500) ,   [SalariedFlag] NVARCHAR(500) ,   [Gender] NVARCHAR(500) ,   [PayFrequency] NVARCHAR(500) ,   [BaseRate] NVARCHAR(500) ,   [VacationHours] NVARCHAR(500) ,   [SickLeaveHours] NVARCHAR(500) ,   [CurrentFlag] NVARCHAR(500) ,   [SalesPersonFlag] NVARCHAR(500) ,   [DepartmentName] NVARCHAR(500) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [Status] NVARCHAR(500) ,   [EmployeePhoto] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimemployee,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimGeography;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimgeography;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimgeography
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimgeography@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimGeography(
	 [GeographyKey] NVARCHAR(250) ,   [City] NVARCHAR(500) ,   [StateProvinceCode] NVARCHAR(500) ,   [StateProvinceName] NVARCHAR(500) ,   [CountryRegionCode] NVARCHAR(500) ,   [EnglishCountryRegionName] NVARCHAR(500) ,   [SpanishCountryRegionName] NVARCHAR(500) ,   [FrenchCountryRegionName] NVARCHAR(500) ,   [PostalCode] NVARCHAR(500) ,   [SalesTerritoryKey] NVARCHAR(250) ,   [IpAddressLocator] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimgeography,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimOrganization;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimorganization;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimorganization
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimorganization@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimOrganization(
	 [OrganizationKey] NVARCHAR(250) ,   [ParentOrganizationKey] NVARCHAR(250) ,   [PercentageOfOwnership] NVARCHAR(500) ,   [OrganizationName] NVARCHAR(500) ,   [CurrencyKey] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimorganization,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimProduct;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimproduct;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimproduct
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimproduct@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimProduct(
	 [ProductKey] NVARCHAR(250) ,   [ProductAlternateKey] NVARCHAR(500) ,   [ProductSubcategoryKey] NVARCHAR(250) ,   [WeightUnitMeasureCode] NVARCHAR(500) ,   [SizeUnitMeasureCode] NVARCHAR(500) ,   [EnglishProductName] NVARCHAR(500) ,   [SpanishProductName] NVARCHAR(500) ,   [FrenchProductName] NVARCHAR(500) ,   [StandardCost] NVARCHAR(500) ,   [FinishedGoodsFlag] NVARCHAR(500) ,   [Color] NVARCHAR(500) ,   [SafetyStockLevel] NVARCHAR(500) ,   [ReorderPoint] NVARCHAR(500) ,   [ListPrice] NVARCHAR(500) ,   [Size] NVARCHAR(500) ,   [SizeRange] NVARCHAR(500) ,   [Weight] NVARCHAR(250) ,   [DaysToManufacture] NVARCHAR(250) ,   [ProductLine] NVARCHAR(500) ,   [DealerPrice] NVARCHAR(500) ,   [Class] NVARCHAR(500) ,   [Style] NVARCHAR(500) ,   [ModelName] NVARCHAR(500) ,   [LargePhoto] NVARCHAR(500) ,   [EnglishDescription] NVARCHAR(800) ,   [FrenchDescription] NVARCHAR(800) ,   [ChineseDescription] NVARCHAR(800) ,   [ArabicDescription] NVARCHAR(800) ,   [HebrewDescription] NVARCHAR(800) ,   [ThaiDescription] NVARCHAR(800) ,   [GermanDescription] NVARCHAR(800) ,   [JapaneseDescription] NVARCHAR(800) ,   [TurkishDescription] NVARCHAR(800) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [Status] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimproduct,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimProductCategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimproductcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimproductcategory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimproductcategory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimProductCategory(
	 [ProductCategoryKey] NVARCHAR(250) ,   [ProductCategoryAlternateKey] NVARCHAR(250) ,   [EnglishProductCategoryName] NVARCHAR(500) ,   [SpanishProductCategoryName] NVARCHAR(500) ,   [FrenchProductCategoryName] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimproductcategory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimProductSubcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimproductsubcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimproductsubcategory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimproductsubcategory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimProductSubcategory(
	 [ProductSubcategoryKey] NVARCHAR(250) ,   [ProductSubcategoryAlternateKey] NVARCHAR(250) ,   [EnglishProductSubcategoryName] NVARCHAR(500) ,   [SpanishProductSubcategoryName] NVARCHAR(500) ,   [FrenchProductSubcategoryName] NVARCHAR(500) ,   [ProductCategoryKey] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimproductsubcategory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimPromotion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimpromotion;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimpromotion
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimpromotion@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimPromotion(
	 [PromotionKey] NVARCHAR(250) ,   [PromotionAlternateKey] NVARCHAR(250) ,   [EnglishPromotionName] NVARCHAR(510) ,   [SpanishPromotionName] NVARCHAR(510) ,   [FrenchPromotionName] NVARCHAR(510) ,   [DiscountPct] NVARCHAR(250) ,   [EnglishPromotionType] NVARCHAR(500) ,   [SpanishPromotionType] NVARCHAR(500) ,   [FrenchPromotionType] NVARCHAR(500) ,   [EnglishPromotionCategory] NVARCHAR(500) ,   [SpanishPromotionCategory] NVARCHAR(500) ,   [FrenchPromotionCategory] NVARCHAR(500) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [MinQty] NVARCHAR(250) ,   [MaxQty] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimpromotion,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimReseller;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimreseller;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimreseller
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimreseller@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimReseller(
	 [ResellerKey] NVARCHAR(250) ,   [GeographyKey] NVARCHAR(250) ,   [ResellerAlternateKey] NVARCHAR(500) ,   [Phone] NVARCHAR(500) ,   [BusinessType] NVARCHAR(500) ,   [ResellerName] NVARCHAR(500) ,   [NumberEmployees] NVARCHAR(250) ,   [OrderFrequency] NVARCHAR(500) ,   [OrderMonth] NVARCHAR(500) ,   [FirstOrderYear] NVARCHAR(250) ,   [LastOrderYear] NVARCHAR(250) ,   [ProductLine] NVARCHAR(500) ,   [AddressLine1] NVARCHAR(500) ,   [AddressLine2] NVARCHAR(500) ,   [AnnualSales] NVARCHAR(500) ,   [BankName] NVARCHAR(500) ,   [MinPaymentType] NVARCHAR(500) ,   [MinPaymentAmount] NVARCHAR(500) ,   [AnnualRevenue] NVARCHAR(500) ,   [YearOpened] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimreseller,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimSalesReason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimsalesreason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimsalesreason
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimsalesreason@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimSalesReason(
	 [SalesReasonKey] NVARCHAR(250) ,   [SalesReasonAlternateKey] NVARCHAR(250) ,   [SalesReasonName] NVARCHAR(500) ,   [SalesReasonReasonType] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimsalesreason,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimSalesTerritory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimsalesterritory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimsalesterritory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimsalesterritory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimSalesTerritory(
	 [SalesTerritoryKey] NVARCHAR(250) ,   [SalesTerritoryAlternateKey] NVARCHAR(250) ,   [SalesTerritoryRegion] NVARCHAR(500) ,   [SalesTerritoryCountry] NVARCHAR(500) ,   [SalesTerritoryGroup] NVARCHAR(500) ,   [SalesTerritoryImage] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimsalesterritory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.DimScenario;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_dimscenario;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_dimscenario
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://dimscenario@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.DimScenario(
	 [ScenarioKey] NVARCHAR(250) ,   [ScenarioName] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_dimscenario,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Document;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_document;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_document
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://document@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Document(
	 [DocumentNode] NVARCHAR(892) ,   [DocumentLevel] NVARCHAR(500) ,   [Title] NVARCHAR(500) ,   [Owner] NVARCHAR(250) ,   [FolderFlag] NVARCHAR(500) ,   [FileName] NVARCHAR(800) ,   [FileExtension] NVARCHAR(500) ,   [Revision] NVARCHAR(500) ,   [ChangeNumber] NVARCHAR(250) ,   [Status] NVARCHAR(500) ,   [DocumentSummary] NVARCHAR(500) ,   [Document] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_document,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.EmailAddress;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_emailaddress;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_emailaddress
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://emailaddress@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.EmailAddress(
	 [BusinessEntityID] NVARCHAR(250) ,   [EmailAddressID] NVARCHAR(250) ,   [EmailAddress] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_emailaddress,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Employee;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_employee;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_employee
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://employee@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Employee(
	 [BusinessEntityID] NVARCHAR(250) ,   [NationalIDNumber] NVARCHAR(500) ,   [LoginID] NVARCHAR(512) ,   [OrganizationNode] NVARCHAR(892) ,   [OrganizationLevel] NVARCHAR(500) ,   [JobTitle] NVARCHAR(500) ,   [BirthDate] NVARCHAR(250) ,   [MaritalStatus] NVARCHAR(500) ,   [Gender] NVARCHAR(500) ,   [HireDate] NVARCHAR(250) ,   [SalariedFlag] NVARCHAR(500) ,   [VacationHours] NVARCHAR(500) ,   [SickLeaveHours] NVARCHAR(500) ,   [CurrentFlag] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_employee,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.EmployeeDepartmentHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_employeedepartmenthistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_employeedepartmenthistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://employeedepartmenthistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.EmployeeDepartmentHistory(
	 [BusinessEntityID] NVARCHAR(250) ,   [DepartmentID] NVARCHAR(500) ,   [ShiftID] NVARCHAR(500) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_employeedepartmenthistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.EmployeePayHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_employeepayhistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_employeepayhistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://employeepayhistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.EmployeePayHistory(
	 [BusinessEntityID] NVARCHAR(250) ,   [RateChangeDate] NVARCHAR(250) ,   [Rate] NVARCHAR(500) ,   [PayFrequency] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_employeepayhistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ErrorLog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_errorlog;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_errorlog
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://errorlog@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ErrorLog(
	 [ErrorLogID] NVARCHAR(250) ,   [ErrorTime] NVARCHAR(250) ,   [ErrorNumber] NVARCHAR(250) ,   [ErrorSeverity] NVARCHAR(250) ,   [ErrorState] NVARCHAR(250) ,   [ErrorProcedure] NVARCHAR(500) ,   [ErrorLine] NVARCHAR(250) ,   [ErrorMessage] NVARCHAR(4000)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_errorlog,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactCallCenter;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factcallcenter;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factcallcenter
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factcallcenter@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactCallCenter(
	 [FactCallCenterID] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [WageType] NVARCHAR(500) ,   [Shift] NVARCHAR(500) ,   [LevelOneOperators] NVARCHAR(500) ,   [LevelTwoOperators] NVARCHAR(500) ,   [TotalOperators] NVARCHAR(500) ,   [Calls] NVARCHAR(250) ,   [AutomaticResponses] NVARCHAR(250) ,   [Orders] NVARCHAR(250) ,   [IssuesRaised] NVARCHAR(500) ,   [AverageTimePerIssue] NVARCHAR(500) ,   [ServiceGrade] NVARCHAR(250) ,   [Date] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factcallcenter,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactCurrencyRate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factcurrencyrate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factcurrencyrate
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factcurrencyrate@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactCurrencyRate(
	 [CurrencyKey] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [AverageRate] NVARCHAR(250) ,   [EndOfDayRate] NVARCHAR(250) ,   [Date] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factcurrencyrate,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactFinance;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factfinance;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factfinance
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factfinance@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactFinance(
	 [FinanceKey] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [OrganizationKey] NVARCHAR(250) ,   [DepartmentGroupKey] NVARCHAR(250) ,   [ScenarioKey] NVARCHAR(250) ,   [AccountKey] NVARCHAR(250) ,   [Amount] NVARCHAR(250) ,   [Date] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factfinance,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactInternetSales;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factinternetsales;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factinternetsales
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factinternetsales@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactInternetSales(
	 [ProductKey] NVARCHAR(250) ,   [OrderDateKey] NVARCHAR(250) ,   [DueDateKey] NVARCHAR(250) ,   [ShipDateKey] NVARCHAR(250) ,   [CustomerKey] NVARCHAR(250) ,   [PromotionKey] NVARCHAR(250) ,   [CurrencyKey] NVARCHAR(250) ,   [SalesTerritoryKey] NVARCHAR(250) ,   [SalesOrderNumber] NVARCHAR(500) ,   [SalesOrderLineNumber] NVARCHAR(500) ,   [RevisionNumber] NVARCHAR(500) ,   [OrderQuantity] NVARCHAR(500) ,   [UnitPrice] NVARCHAR(500) ,   [ExtendedAmount] NVARCHAR(500) ,   [UnitPriceDiscountPct] NVARCHAR(250) ,   [DiscountAmount] NVARCHAR(250) ,   [ProductStandardCost] NVARCHAR(500) ,   [TotalProductCost] NVARCHAR(500) ,   [SalesAmount] NVARCHAR(500) ,   [TaxAmt] NVARCHAR(500) ,   [Freight] NVARCHAR(500) ,   [CarrierTrackingNumber] NVARCHAR(500) ,   [CustomerPONumber] NVARCHAR(500) ,   [OrderDate] NVARCHAR(250) ,   [DueDate] NVARCHAR(250) ,   [ShipDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factinternetsales,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactInternetSalesReason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factinternetsalesreason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factinternetsalesreason
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factinternetsalesreason@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactInternetSalesReason(
	 [SalesOrderNumber] NVARCHAR(500) ,   [SalesOrderLineNumber] NVARCHAR(500) ,   [SalesReasonKey] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factinternetsalesreason,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactProductInventory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factproductinventory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factproductinventory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factproductinventory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactProductInventory(
	 [ProductKey] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [MovementDate] NVARCHAR(250) ,   [UnitCost] NVARCHAR(500) ,   [UnitsIn] NVARCHAR(250) ,   [UnitsOut] NVARCHAR(250) ,   [UnitsBalance] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factproductinventory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactResellerSales;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factresellersales;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factresellersales
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factresellersales@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactResellerSales(
	 [ProductKey] NVARCHAR(250) ,   [OrderDateKey] NVARCHAR(250) ,   [DueDateKey] NVARCHAR(250) ,   [ShipDateKey] NVARCHAR(250) ,   [ResellerKey] NVARCHAR(250) ,   [EmployeeKey] NVARCHAR(250) ,   [PromotionKey] NVARCHAR(250) ,   [CurrencyKey] NVARCHAR(250) ,   [SalesTerritoryKey] NVARCHAR(250) ,   [SalesOrderNumber] NVARCHAR(500) ,   [SalesOrderLineNumber] NVARCHAR(500) ,   [RevisionNumber] NVARCHAR(500) ,   [OrderQuantity] NVARCHAR(500) ,   [UnitPrice] NVARCHAR(500) ,   [ExtendedAmount] NVARCHAR(500) ,   [UnitPriceDiscountPct] NVARCHAR(250) ,   [DiscountAmount] NVARCHAR(250) ,   [ProductStandardCost] NVARCHAR(500) ,   [TotalProductCost] NVARCHAR(500) ,   [SalesAmount] NVARCHAR(500) ,   [TaxAmt] NVARCHAR(500) ,   [Freight] NVARCHAR(500) ,   [CarrierTrackingNumber] NVARCHAR(500) ,   [CustomerPONumber] NVARCHAR(500) ,   [OrderDate] NVARCHAR(250) ,   [DueDate] NVARCHAR(250) ,   [ShipDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factresellersales,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactSalesQuota;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factsalesquota;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factsalesquota
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factsalesquota@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactSalesQuota(
	 [SalesQuotaKey] NVARCHAR(250) ,   [EmployeeKey] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [CalendarYear] NVARCHAR(500) ,   [CalendarQuarter] NVARCHAR(500) ,   [SalesAmountQuota] NVARCHAR(500) ,   [Date] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factsalesquota,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.FactSurveyResponse;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_factsurveyresponse;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_factsurveyresponse
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://factsurveyresponse@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.FactSurveyResponse(
	 [SurveyResponseKey] NVARCHAR(250) ,   [DateKey] NVARCHAR(250) ,   [CustomerKey] NVARCHAR(250) ,   [ProductCategoryKey] NVARCHAR(250) ,   [EnglishProductCategoryName] NVARCHAR(500) ,   [ProductSubcategoryKey] NVARCHAR(250) ,   [EnglishProductSubcategoryName] NVARCHAR(500) ,   [Date] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_factsurveyresponse,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Illustration;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_illustration;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_illustration
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://illustration@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Illustration(
	 [IllustrationID] NVARCHAR(250) ,   [Diagram] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_illustration,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.JobCandidate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_jobcandidate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_jobcandidate
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://jobcandidate@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.JobCandidate(
	 [JobCandidateID] NVARCHAR(250) ,   [BusinessEntityID] NVARCHAR(250) ,   [Resume] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_jobcandidate,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Location;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_location;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_location
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://location@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Location(
	 [LocationID] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [CostRate] NVARCHAR(500) ,   [Availability] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_location,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Password;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_password;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_password
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://password@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Password(
	 [BusinessEntityID] NVARCHAR(250) ,   [PasswordHash] NVARCHAR(500) ,   [PasswordSalt] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_password,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Person;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_person;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_person
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://person@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Person(
	 [BusinessEntityID] NVARCHAR(250) ,   [PersonType] NVARCHAR(500) ,   [NameStyle] NVARCHAR(500) ,   [Title] NVARCHAR(500) ,   [FirstName] NVARCHAR(500) ,   [MiddleName] NVARCHAR(500) ,   [LastName] NVARCHAR(500) ,   [Suffix] NVARCHAR(500) ,   [EmailPromotion] NVARCHAR(250) ,   [AdditionalContactInfo] NVARCHAR(500) ,   [Demographics] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_person,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.PersonCreditCard;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_personcreditcard;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_personcreditcard
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://personcreditcard@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.PersonCreditCard(
	 [BusinessEntityID] NVARCHAR(250) ,   [CreditCardID] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_personcreditcard,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.PersonPhone;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_personphone;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_personphone
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://personphone@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.PersonPhone(
	 [BusinessEntityID] NVARCHAR(250) ,   [PhoneNumber] NVARCHAR(500) ,   [PhoneNumberTypeID] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_personphone,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.PhoneNumberType;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_phonenumbertype;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_phonenumbertype
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://phonenumbertype@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.PhoneNumberType(
	 [PhoneNumberTypeID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_phonenumbertype,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

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
      LOCATION = 'wasbs://product@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Product(
	 [ProductID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [ProductNumber] NVARCHAR(500) ,   [MakeFlag] NVARCHAR(500) ,   [FinishedGoodsFlag] NVARCHAR(500) ,   [Color] NVARCHAR(500) ,   [SafetyStockLevel] NVARCHAR(500) ,   [ReorderPoint] NVARCHAR(500) ,   [StandardCost] NVARCHAR(500) ,   [ListPrice] NVARCHAR(500) ,   [Size] NVARCHAR(500) ,   [SizeUnitMeasureCode] NVARCHAR(500) ,   [WeightUnitMeasureCode] NVARCHAR(500) ,   [Weight] NVARCHAR(250) ,   [DaysToManufacture] NVARCHAR(250) ,   [ProductLine] NVARCHAR(500) ,   [Class] NVARCHAR(500) ,   [Style] NVARCHAR(500) ,   [ProductSubcategoryID] NVARCHAR(250) ,   [ProductModelID] NVARCHAR(250) ,   [SellStartDate] NVARCHAR(250) ,   [SellEndDate] NVARCHAR(250) ,   [DiscontinuedDate] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_product,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductCategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productcategory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productcategory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductCategory(
	 [ProductCategoryID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productcategory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductCostHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productcosthistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productcosthistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productcosthistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductCostHistory(
	 [ProductID] NVARCHAR(250) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [StandardCost] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productcosthistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductDescription;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productdescription;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productdescription
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productdescription@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductDescription(
	 [ProductDescriptionID] NVARCHAR(250) ,   [Description] NVARCHAR(800) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productdescription,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductDocument;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productdocument;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productdocument
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productdocument@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductDocument(
	 [ProductID] NVARCHAR(250) ,   [DocumentNode] NVARCHAR(892) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productdocument,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductInventory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productinventory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productinventory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productinventory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductInventory(
	 [ProductID] NVARCHAR(250) ,   [LocationID] NVARCHAR(500) ,   [Shelf] NVARCHAR(500) ,   [Bin] NVARCHAR(500) ,   [Quantity] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productinventory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductListPriceHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productlistpricehistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productlistpricehistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productlistpricehistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductListPriceHistory(
	 [ProductID] NVARCHAR(250) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [ListPrice] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productlistpricehistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductModel;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productmodel;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productmodel
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productmodel@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductModel(
	 [ProductModelID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [CatalogDescription] NVARCHAR(500) ,   [Instructions] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productmodel,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductModelIllustration;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productmodelillustration;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productmodelillustration
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productmodelillustration@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductModelIllustration(
	 [ProductModelID] NVARCHAR(250) ,   [IllustrationID] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productmodelillustration,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductPhoto;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productphoto;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productphoto
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productphoto@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductPhoto(
	 [ProductPhotoID] NVARCHAR(250) ,   [ThumbNailPhoto] NVARCHAR(500) ,   [ThumbnailPhotoFileName] NVARCHAR(500) ,   [LargePhoto] NVARCHAR(500) ,   [LargePhotoFileName] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productphoto,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductProductPhoto;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productproductphoto;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productproductphoto
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productproductphoto@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductProductPhoto(
	 [ProductID] NVARCHAR(250) ,   [ProductPhotoID] NVARCHAR(250) ,   [Primary] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productproductphoto,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductReview;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productreview;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productreview
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productreview@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductReview(
	 [ProductReviewID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [ReviewerName] NVARCHAR(500) ,   [ReviewDate] NVARCHAR(250) ,   [EmailAddress] NVARCHAR(500) ,   [Rating] NVARCHAR(250) ,   [Comments] NVARCHAR(4000) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productreview,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductSubcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productsubcategory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productsubcategory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productsubcategory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductSubcategory(
	 [ProductSubcategoryID] NVARCHAR(250) ,   [ProductCategoryID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productsubcategory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProductVendor;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_productvendor;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_productvendor
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://productvendor@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProductVendor(
	 [ProductID] NVARCHAR(250) ,   [BusinessEntityID] NVARCHAR(250) ,   [AverageLeadTime] NVARCHAR(250) ,   [StandardPrice] NVARCHAR(500) ,   [LastReceiptCost] NVARCHAR(500) ,   [LastReceiptDate] NVARCHAR(250) ,   [MinOrderQty] NVARCHAR(250) ,   [MaxOrderQty] NVARCHAR(250) ,   [OnOrderQty] NVARCHAR(250) ,   [UnitMeasureCode] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_productvendor,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ProspectiveBuyer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_prospectivebuyer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_prospectivebuyer
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://prospectivebuyer@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ProspectiveBuyer(
	 [ProspectiveBuyerKey] NVARCHAR(250) ,   [ProspectAlternateKey] NVARCHAR(500) ,   [FirstName] NVARCHAR(500) ,   [MiddleName] NVARCHAR(500) ,   [LastName] NVARCHAR(500) ,   [BirthDate] NVARCHAR(250) ,   [MaritalStatus] NVARCHAR(500) ,   [Gender] NVARCHAR(500) ,   [EmailAddress] NVARCHAR(500) ,   [YearlyIncome] NVARCHAR(500) ,   [TotalChildren] NVARCHAR(500) ,   [NumberChildrenAtHome] NVARCHAR(500) ,   [Education] NVARCHAR(500) ,   [Occupation] NVARCHAR(500) ,   [HouseOwnerFlag] NVARCHAR(500) ,   [NumberCarsOwned] NVARCHAR(500) ,   [AddressLine1] NVARCHAR(500) ,   [AddressLine2] NVARCHAR(500) ,   [City] NVARCHAR(500) ,   [StateProvinceCode] NVARCHAR(500) ,   [PostalCode] NVARCHAR(500) ,   [Phone] NVARCHAR(500) ,   [Salutation] NVARCHAR(500) ,   [Unknown] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_prospectivebuyer,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.PurchaseOrderDetail;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_purchaseorderdetail;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_purchaseorderdetail
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://purchaseorderdetail@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.PurchaseOrderDetail(
	 [PurchaseOrderID] NVARCHAR(250) ,   [PurchaseOrderDetailID] NVARCHAR(250) ,   [DueDate] NVARCHAR(250) ,   [OrderQty] NVARCHAR(500) ,   [ProductID] NVARCHAR(250) ,   [UnitPrice] NVARCHAR(500) ,   [LineTotal] NVARCHAR(500) ,   [ReceivedQty] NVARCHAR(250) ,   [RejectedQty] NVARCHAR(250) ,   [StockedQty] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_purchaseorderdetail,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.PurchaseOrderHeader;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_purchaseorderheader;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_purchaseorderheader
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://purchaseorderheader@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.PurchaseOrderHeader(
	 [PurchaseOrderID] NVARCHAR(250) ,   [RevisionNumber] NVARCHAR(500) ,   [Status] NVARCHAR(500) ,   [EmployeeID] NVARCHAR(250) ,   [VendorID] NVARCHAR(250) ,   [ShipMethodID] NVARCHAR(250) ,   [OrderDate] NVARCHAR(250) ,   [ShipDate] NVARCHAR(250) ,   [SubTotal] NVARCHAR(500) ,   [TaxAmt] NVARCHAR(500) ,   [Freight] NVARCHAR(500) ,   [TotalDue] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_purchaseorderheader,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesOrderDetail;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesorderdetail;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesorderdetail
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesorderdetail@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesOrderDetail(
	 [SalesOrderID] NVARCHAR(250) ,   [SalesOrderDetailID] NVARCHAR(250) ,   [CarrierTrackingNumber] NVARCHAR(500) ,   [OrderQty] NVARCHAR(500) ,   [ProductID] NVARCHAR(250) ,   [SpecialOfferID] NVARCHAR(250) ,   [UnitPrice] NVARCHAR(500) ,   [UnitPriceDiscount] NVARCHAR(500) ,   [LineTotal] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesorderdetail,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesOrderHeader;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesorderheader;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesorderheader
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesorderheader@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesOrderHeader(
	 [SalesOrderID] NVARCHAR(250) ,   [RevisionNumber] NVARCHAR(500) ,   [OrderDate] NVARCHAR(250) ,   [DueDate] NVARCHAR(250) ,   [ShipDate] NVARCHAR(250) ,   [Status] NVARCHAR(500) ,   [OnlineOrderFlag] NVARCHAR(500) ,   [SalesOrderNumber] NVARCHAR(500) ,   [PurchaseOrderNumber] NVARCHAR(500) ,   [AccountNumber] NVARCHAR(500) ,   [CustomerID] NVARCHAR(250) ,   [SalesPersonID] NVARCHAR(250) ,   [TerritoryID] NVARCHAR(250) ,   [BillToAddressID] NVARCHAR(250) ,   [ShipToAddressID] NVARCHAR(250) ,   [ShipMethodID] NVARCHAR(250) ,   [CreditCardID] NVARCHAR(250) ,   [CreditCardApprovalCode] NVARCHAR(500) ,   [CurrencyRateID] NVARCHAR(250) ,   [SubTotal] NVARCHAR(500) ,   [TaxAmt] NVARCHAR(500) ,   [Freight] NVARCHAR(500) ,   [TotalDue] NVARCHAR(500) ,   [Comment] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesorderheader,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesOrderHeaderSalesReason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesorderheadersalesreason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesorderheadersalesreason
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesorderheadersalesreason@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesOrderHeaderSalesReason(
	 [SalesOrderID] NVARCHAR(250) ,   [SalesReasonID] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesorderheadersalesreason,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesPerson;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesperson;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesperson
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesperson@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesPerson(
	 [BusinessEntityID] NVARCHAR(250) ,   [TerritoryID] NVARCHAR(250) ,   [SalesQuota] NVARCHAR(500) ,   [Bonus] NVARCHAR(500) ,   [CommissionPct] NVARCHAR(500) ,   [SalesYTD] NVARCHAR(500) ,   [SalesLastYear] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesperson,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesPersonQuotaHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salespersonquotahistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salespersonquotahistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salespersonquotahistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesPersonQuotaHistory(
	 [BusinessEntityID] NVARCHAR(250) ,   [QuotaDate] NVARCHAR(250) ,   [SalesQuota] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salespersonquotahistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesReason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesreason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesreason
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesreason@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesReason(
	 [SalesReasonID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [ReasonType] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesreason,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesTaxRate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salestaxrate;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salestaxrate
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salestaxrate@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesTaxRate(
	 [SalesTaxRateID] NVARCHAR(250) ,   [StateProvinceID] NVARCHAR(250) ,   [TaxType] NVARCHAR(500) ,   [TaxRate] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salestaxrate,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesTerritory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesterritory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesterritory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesterritory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesTerritory(
	 [TerritoryID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [CountryRegionCode] NVARCHAR(500) ,   [Group] NVARCHAR(500) ,   [SalesYTD] NVARCHAR(500) ,   [SalesLastYear] NVARCHAR(500) ,   [CostYTD] NVARCHAR(500) ,   [CostLastYear] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesterritory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SalesTerritoryHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_salesterritoryhistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_salesterritoryhistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://salesterritoryhistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SalesTerritoryHistory(
	 [BusinessEntityID] NVARCHAR(250) ,   [TerritoryID] NVARCHAR(250) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_salesterritoryhistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ScrapReason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_scrapreason;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_scrapreason
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://scrapreason@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ScrapReason(
	 [ScrapReasonID] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_scrapreason,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Shift;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_shift;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_shift
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://shift@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Shift(
	 [ShiftID] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [StartTime] NVARCHAR(250) ,   [EndTime] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_shift,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ShipMethod;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_shipmethod;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_shipmethod
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://shipmethod@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ShipMethod(
	 [ShipMethodID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [ShipBase] NVARCHAR(500) ,   [ShipRate] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_shipmethod,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.ShoppingCartItem;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_shoppingcartitem;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_shoppingcartitem
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://shoppingcartitem@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.ShoppingCartItem(
	 [ShoppingCartItemID] NVARCHAR(250) ,   [ShoppingCartID] NVARCHAR(500) ,   [Quantity] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [DateCreated] NVARCHAR(250) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_shoppingcartitem,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SpecialOffer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_specialoffer;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_specialoffer
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://specialoffer@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SpecialOffer(
	 [SpecialOfferID] NVARCHAR(250) ,   [Description] NVARCHAR(510) ,   [DiscountPct] NVARCHAR(500) ,   [Type] NVARCHAR(500) ,   [Category] NVARCHAR(500) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [MinQty] NVARCHAR(250) ,   [MaxQty] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_specialoffer,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.SpecialOfferProduct;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_specialofferproduct;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_specialofferproduct
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://specialofferproduct@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.SpecialOfferProduct(
	 [SpecialOfferID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_specialofferproduct,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.StateProvince;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_stateprovince;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_stateprovince
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://stateprovince@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.StateProvince(
	 [StateProvinceID] NVARCHAR(250) ,   [StateProvinceCode] NVARCHAR(500) ,   [CountryRegionCode] NVARCHAR(500) ,   [IsOnlyStateProvinceFlag] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [TerritoryID] NVARCHAR(250) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_stateprovince,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Store;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_store;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_store
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://store@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Store(
	 [BusinessEntityID] NVARCHAR(250) ,   [Name] NVARCHAR(500) ,   [SalesPersonID] NVARCHAR(250) ,   [Demographics] NVARCHAR(500) ,   [rowguid] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_store,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.sysdiagrams;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_sysdiagrams;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_sysdiagrams
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://sysdiagrams@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.sysdiagrams(
	 [principal_id] NVARCHAR(250) ,   [diagram_id] NVARCHAR(250) ,   [version] NVARCHAR(250) ,   [definition] NVARCHAR(500)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_sysdiagrams,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.TransactionHistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_transactionhistory;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_transactionhistory
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://transactionhistory@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.TransactionHistory(
	 [TransactionID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [ReferenceOrderID] NVARCHAR(250) ,   [ReferenceOrderLineID] NVARCHAR(250) ,   [TransactionDate] NVARCHAR(250) ,   [TransactionType] NVARCHAR(500) ,   [Quantity] NVARCHAR(250) ,   [ActualCost] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_transactionhistory,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.TransactionHistoryArchive;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_transactionhistoryarchive;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_transactionhistoryarchive
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://transactionhistoryarchive@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.TransactionHistoryArchive(
	 [TransactionID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [ReferenceOrderID] NVARCHAR(250) ,   [ReferenceOrderLineID] NVARCHAR(250) ,   [TransactionDate] NVARCHAR(250) ,   [TransactionType] NVARCHAR(500) ,   [Quantity] NVARCHAR(250) ,   [ActualCost] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_transactionhistoryarchive,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.UnitMeasure;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_unitmeasure;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_unitmeasure
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://unitmeasure@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.UnitMeasure(
	 [UnitMeasureCode] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_unitmeasure,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.Vendor;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_vendor;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_vendor
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://vendor@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.Vendor(
	 [BusinessEntityID] NVARCHAR(250) ,   [AccountNumber] NVARCHAR(500) ,   [Name] NVARCHAR(500) ,   [CreditRating] NVARCHAR(500) ,   [PreferredVendorStatus] NVARCHAR(500) ,   [ActiveFlag] NVARCHAR(500) ,   [PurchasingWebServiceURL] NVARCHAR(2048) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_vendor,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.WorkOrder;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_workorder;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_workorder
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://workorder@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.WorkOrder(
	 [WorkOrderID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [OrderQty] NVARCHAR(250) ,   [StockedQty] NVARCHAR(250) ,   [ScrappedQty] NVARCHAR(500) ,   [StartDate] NVARCHAR(250) ,   [EndDate] NVARCHAR(250) ,   [DueDate] NVARCHAR(250) ,   [ScrapReasonID] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_workorder,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);

/*================================================================
 * Desc:		Create Script for External Table & Related Data Source
 * Created:		This procedure was auto-generated at 
 * Created By:	Procedure Logic provided by Adatis Consulting Ltd
 ================================================================*/

BEGIN TRY
  DROP EXTERNAL TABLE Ext.WorkOrderRouting;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH

BEGIN TRY
  DROP EXTERNAL DATA SOURCE Blob_workorderrouting;
END TRY
BEGIN CATCH
	PRINT 'DNGN'
END CATCH


CREATE EXTERNAL DATA SOURCE Blob_workorderrouting
WITH (TYPE = HADOOP,
      LOCATION = 'wasbs://workorderrouting@magicworksblob.blob.core.windows.net',
      CREDENTIAL = AzureStorageCredential);


CREATE EXTERNAL TABLE Ext.WorkOrderRouting(
	 [WorkOrderID] NVARCHAR(250) ,   [ProductID] NVARCHAR(250) ,   [OperationSequence] NVARCHAR(500) ,   [LocationID] NVARCHAR(500) ,   [ScheduledStartDate] NVARCHAR(250) ,   [ScheduledEndDate] NVARCHAR(250) ,   [ActualStartDate] NVARCHAR(250) ,   [ActualEndDate] NVARCHAR(250) ,   [ActualResourceHrs] NVARCHAR(250) ,   [PlannedCost] NVARCHAR(500) ,   [ActualCost] NVARCHAR(500) ,   [ModifiedDate] NVARCHAR(250)
)
WITH (LOCATION='./',
      DATA_SOURCE  = Blob_workorderrouting,
      FILE_FORMAT  = TextFile,
      REJECT_TYPE  = VALUE,
      REJECT_VALUE = 110);




END 
