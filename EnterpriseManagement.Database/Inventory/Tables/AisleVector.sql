CREATE TABLE [inventory].[AisleVector] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [AisleId]         INT             NOT NULL,
    [X]               DECIMAL (19, 8) NULL,
    [Y]               DECIMAL (19, 8) NULL,
    [Z]               DECIMAL (19, 8) NULL,
    [CreatedDateTime] DATETIME2 (7)   NULL,
    [UpdatedDateTime] DATETIME2 (7)   NULL,
    CONSTRAINT [PK_inventory.AisleVector] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.AisleVector_inventory.Aisle_AisleId] FOREIGN KEY ([AisleId]) REFERENCES [inventory].[Aisle] ([Id]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_AisleId]
    ON [inventory].[AisleVector]([AisleId] ASC);

