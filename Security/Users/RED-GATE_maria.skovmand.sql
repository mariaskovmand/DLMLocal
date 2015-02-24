IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'RED-GATE\maria.skovmand')
CREATE LOGIN [RED-GATE\maria.skovmand] FROM WINDOWS
GO
CREATE USER [RED-GATE\maria.skovmand] FOR LOGIN [RED-GATE\maria.skovmand]
GO
