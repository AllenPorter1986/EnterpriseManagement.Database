CREATE TABLE [time].[Tasks]
(
	[Id] INT NOT NULL CONSTRAINT PK_Tasks PRIMARY KEY IDENTITY(1,1), 
	[ClientId] INT NULL, 
    [FunctionId] INT NOT NULL, 
	[CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT DF_Tasks_CreatedDateTime DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL,
    CONSTRAINT [FK_Tasks_Clients] FOREIGN KEY ([ClientId]) REFERENCES [time].[Clients] ([Id]),
    CONSTRAINT [FK_Tasks_Functions] FOREIGN KEY ([FunctionId]) REFERENCES [time].[Functions] ([Id])
)
