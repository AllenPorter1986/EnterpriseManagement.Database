CREATE TABLE [time].[Functions]
(
	[Id] INT NOT NULL  CONSTRAINT PK_Functions PRIMARY KEY IDENTITY(1,1),
	[Identifier] VARCHAR(30) NULL ,-- CONSTRAINT DF_Functions_UniqueIdentifier UNIQUE ([Identifier]),
	[Type] INT NOT NULL,
	[Description] VARCHAR(30) NOT NULL,
	[CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT [DF_Functions_CreatedDateTime] DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL
)

GO

CREATE INDEX [IX_Functions_Identifier] ON [time].[Functions] ([Identifier])
