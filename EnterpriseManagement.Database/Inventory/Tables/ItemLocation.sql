CREATE TABLE [inventory].[ItemLocation] (
    [ItemId]      INT NOT NULL,
    [LocationId]  INT NOT NULL,
    [Quantity]    INT NOT NULL,
    [QuantityMin] INT NOT NULL,
    [QuantityMax] INT NOT NULL,
    CONSTRAINT [PK_inventory.ItemLocation] PRIMARY KEY CLUSTERED ([ItemId] ASC, [LocationId] ASC),
    CONSTRAINT [FK_inventory.ItemLocation_inventory.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [inventory].[Item] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_inventory.ItemLocation_inventory.Location_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [inventory].[Location] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_LocationId]
    ON [inventory].[ItemLocation]([LocationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ItemId]
    ON [inventory].[ItemLocation]([ItemId] ASC);

