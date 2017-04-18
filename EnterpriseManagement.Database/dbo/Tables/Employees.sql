CREATE TABLE [dbo].[Employees]
(
	[Id] INT NOT NULL CONSTRAINT PK_Employees PRIMARY KEY IDENTITY(1,1), 
    [Identifier] VARCHAR(30) NULL ,--CONSTRAINT DF_Employees_UniqueIdentifier UNIQUE ([Identifier]), 
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL,     
	[CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT DF_Employees_CreatedDateTime DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL,
	
)

GO

CREATE INDEX [IX_Employees_Identifier] ON [dbo].[Employees] ([Identifier])