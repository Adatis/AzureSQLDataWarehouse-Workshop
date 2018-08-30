-- #######################################################################################################################################
-- Create a Master Key
-- #######################################################################################################################################
CREATE MASTER KEY;

-- #######################################################################################################################################
-- Create a Scoped Credential
-- #######################################################################################################################################
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential
WITH
    IDENTITY = 'user',
    SECRET = 'ZjqKvIDFMTiIFI6MgawacKZTJGy5uW/Tt8AemBdsVKjO6qCGCmnkPfSVEtqDngc5KZbZ49XNhYqVnB6mfqnkdg=='
;

-- #######################################################################################################################################
--Create a File format
-- #######################################################################################################################################
CREATE EXTERNAL FILE FORMAT TextFile
WITH (
    FORMAT_TYPE = DelimitedText,
    FORMAT_OPTIONS (FIELD_TERMINATOR = ',', STRING_DELIMITER = '"')
);

-- #######################################################################################################################################
-- Create a schema
-- #######################################################################################################################################
CREATE SCHEMA ext;
GO

CREATE SCHEMA oltp;
GO

CREATE SCHEMA olap;
GO

-- #######################################################################################################################################
-- 
-- #######################################################################################################################################

