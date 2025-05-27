
-- create a storage credential
CREATE CREDENTIAL [https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups]
WITH IDENTITY = 'SHARED ACCESS SIGNATURE',
SECRET = 'sv=2024-11-04&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2025-05-31T17:48:28Z&st=2025-05-27T09:48:28Z&spr=https&sig=Ho%2FvGbTzTIYfKyGhXgDU0XTN41HHXGzicgekZ0H8i1c%3D'


BACKUP DATABASE Northwind
TO URL = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/Northwind/Northwind.bak' WITH FORMAT


BACKUP DATABASE Evdata
TO URL = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/Evdata/EvData.bak' WITH FORMAT

BACKUP DATABASE WideWorldimporters
TO URL = = 'https://ilikesqlmigrationblob.blob.core.windows.net/sqlbackups/wwimporters/wwimporters.bak' WITH FORMAT