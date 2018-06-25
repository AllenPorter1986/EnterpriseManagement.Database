CREATE TABLE [inventory].[BuildingVector] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [BuildingId]      INT             NOT NULL,
    [X]               DECIMAL (19, 8) NULL,
    [Y]               DECIMAL (19, 8) NULL,
    [Z]               DECIMAL (19, 8) NULL,
    [CreatedDateTime] DATETIME2 (7)   NULL,
    [UpdatedDateTime] DATETIME2 (7)   NULL,
    CONSTRAINT [PK_inventory.BuildingVector] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.BuildingVector_inventory.Building_BuildingId] FOREIGN KEY ([BuildingId]) REFERENCES [inventory].[Building] ([Id]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_BuildingId]
    ON [inventory].[BuildingVector]([BuildingId] ASC);

