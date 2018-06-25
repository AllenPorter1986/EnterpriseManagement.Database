CREATE TABLE [inventory].[Location] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [AisleId]         INT            NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Sequence]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Location] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.Location_inventory.Aisle_AisleId] FOREIGN KEY ([AisleId]) REFERENCES [inventory].[Aisle] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_AisleId]
    ON [inventory].[Location]([AisleId] ASC);

