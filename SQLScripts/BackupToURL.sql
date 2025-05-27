
-- create a storage credential
CREATE CREDENTIAL [https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups]
WITH IDENTITY = 'SHARED ACCESS SIGNATURE',
SECRET = ''


BACKUP DATABASE Northwind
TO URL = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/Northwind/Northwind.bak' WITH FORMAT


BACKUP DATABASE Evdata
TO URL = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/Evdata/EvData.bak' WITH FORMAT

BACKUP DATABASE WideWorldimporters
TO URL = = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/wwimporters/wwimporters.bak' WITH FORMAT