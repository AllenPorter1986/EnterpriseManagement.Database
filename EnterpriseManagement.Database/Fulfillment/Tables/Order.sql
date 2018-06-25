CREATE TABLE [fulfillment].[Order] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [OrderId]         INT            NULL,
    [Identifier]      NVARCHAR (MAX) NULL,
    [Type]            INT            NOT NULL,
    [Status]          INT            NOT NULL,
    [ClientId]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_fulfillment.Order] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_fulfillment.Order_dbo.Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_fulfillment.Order_fulfillment.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [fulfillment].[Order] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_ClientId]
    ON [fulfillment].[Order]([ClientId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OrderId]
    ON [fulfillment].[Order]([OrderId] ASC);

