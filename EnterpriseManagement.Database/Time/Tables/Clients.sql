CREATE TABLE [time].[Clients]
(
	[Id] INT NOT NULL CONSTRAINT PK_Clients PRIMARY KEY IDENTITY(1,1),
	[ClientId] INT NULL,
    [CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT DF_Clients_CreatedDateTime DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL,
    CONSTRAINT [FK_Time_Clients_Clients] FOREIGN KEY ([ClientId]) REFERENCES [time].[Clients] ([Id]),
)
