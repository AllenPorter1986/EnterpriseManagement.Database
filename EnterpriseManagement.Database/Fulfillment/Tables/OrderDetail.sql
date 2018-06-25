CREATE TABLE [fulfillment].[OrderDetail] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [OrderId]         INT           NOT NULL,
    [Sequence]        INT           NOT NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    CONSTRAINT [PK_fulfillment.OrderDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_fulfillment.OrderDetail_fulfillment.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [fulfillment].[Order] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_OrderId]
    ON [fulfillment].[OrderDetail]([OrderId] ASC);

