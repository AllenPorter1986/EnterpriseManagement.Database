CREATE TABLE [time].[Task] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [ClientId]        INT           NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    [Function_Id]     INT           NULL,
    [Order_Id]        INT           NULL,
    CONSTRAINT [PK_time.Task] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_time.Task_dbo.Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]),
    CONSTRAINT [FK_time.Task_fulfillment.Order_Order_Id] FOREIGN KEY ([Order_Id]) REFERENCES [fulfillment].[Order] ([Id]),
    CONSTRAINT [FK_time.Task_time.Function_Function_Id] FOREIGN KEY ([Function_Id]) REFERENCES [time].[Function] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_Order_Id]
    ON [time].[Task]([Order_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Function_Id]
    ON [time].[Task]([Function_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ClientId]
    ON [time].[Task]([ClientId] ASC);

