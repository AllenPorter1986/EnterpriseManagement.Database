CREATE TABLE [inventory].[Aisle] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [ZoneId]          INT            NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Sequence]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Aisle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.Aisle_inventory.Zone_ZoneId] FOREIGN KEY ([ZoneId]) REFERENCES [inventory].[Zone] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_ZoneId]
    ON [inventory].[Aisle]([ZoneId] ASC);

