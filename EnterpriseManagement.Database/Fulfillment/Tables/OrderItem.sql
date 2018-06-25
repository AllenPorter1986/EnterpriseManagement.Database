CREATE TABLE [fulfillment].[OrderItem] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [ItemId]          INT           NOT NULL,
    [Quantity]        INT           NOT NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    [OrderDetail_Id]  INT           NULL,
    CONSTRAINT [PK_fulfillment.OrderItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_fulfillment.OrderItem_fulfillment.OrderDetail_OrderDetail_Id] FOREIGN KEY ([OrderDetail_Id]) REFERENCES [fulfillment].[OrderDetail] ([Id]),
    CONSTRAINT [FK_fulfillment.OrderItem_inventory.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [inventory].[Item] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_OrderDetail_Id]
    ON [fulfillment].[OrderItem]([OrderDetail_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ItemId]
    ON [fulfillment].[OrderItem]([ItemId] ASC);

