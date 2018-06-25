CREATE TABLE [inventory].[Obstacle] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [BuildingId]      INT            NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Sequence]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Obstacle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.Obstacle_inventory.Building_BuildingId] FOREIGN KEY ([BuildingId]) REFERENCES [inventory].[Building] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_BuildingId]
    ON [inventory].[Obstacle]([BuildingId] ASC);

