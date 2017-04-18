CREATE TABLE [time].[Orders]
(
	[Id] INT NOT NULL  CONSTRAINT PK_Orders PRIMARY KEY IDENTITY(1,1),
	[OrderId] INT NULL,
	[Identifier] VARCHAR(30) NULL ,--CONSTRAINT DF_Orders_UniqueIdentifier UNIQUE ([Identifier]),
	[OrderStatus] INT NULL,
	[OrderType] INT NULL,
    [CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT DF_Orders_CreatedDateTime DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL,
    CONSTRAINT [FK_Orders_Orders] FOREIGN KEY ([OrderId]) REFERENCES [time].[Orders] ([Id]),
)

GO

CREATE INDEX [IX_Orders_Identifier] ON [time].[Orders] ([Identifier])
