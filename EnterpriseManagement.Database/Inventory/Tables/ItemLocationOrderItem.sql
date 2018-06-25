CREATE TABLE [inventory].[ItemLocationOrderItem] (
    [OrderItemId]             INT NOT NULL,
    [ItemId]                  INT NOT NULL,
    [ItemLocationId]          INT NOT NULL,
    [Quantity]                INT NOT NULL,
    [ItemLocation_ItemId]     INT NULL,
    [ItemLocation_LocationId] INT NULL,
    CONSTRAINT [PK_inventory.ItemLocationOrderItem] PRIMARY KEY CLUSTERED ([OrderItemId] ASC, [ItemId] ASC, [ItemLocationId] ASC),
    CONSTRAINT [FK_inventory.ItemLocationOrderItem_fulfillment.OrderItem_OrderItemId] FOREIGN KEY ([OrderItemId]) REFERENCES [fulfillment].[OrderItem] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_inventory.ItemLocationOrderItem_inventory.ItemLocation_ItemLocation_ItemId_ItemLocation_LocationId] FOREIGN KEY ([ItemLocation_ItemId], [ItemLocation_LocationId]) REFERENCES [inventory].[ItemLocation] ([ItemId], [LocationId])
);


GO
CREATE NONCLUSTERED INDEX [IX_ItemLocation_ItemId_ItemLocation_LocationId]
    ON [inventory].[ItemLocationOrderItem]([ItemLocation_ItemId] ASC, [ItemLocation_LocationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OrderItemId]
    ON [inventory].[ItemLocationOrderItem]([OrderItemId] ASC);

