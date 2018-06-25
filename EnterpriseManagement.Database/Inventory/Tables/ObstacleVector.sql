CREATE TABLE [inventory].[ObstacleVector] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [ObstacleId]      INT             NOT NULL,
    [X]               DECIMAL (19, 8) NULL,
    [Y]               DECIMAL (19, 8) NULL,
    [Z]               DECIMAL (19, 8) NULL,
    [CreatedDateTime] DATETIME2 (7)   NULL,
    [UpdatedDateTime] DATETIME2 (7)   NULL,
    CONSTRAINT [PK_inventory.ObstacleVector] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.ObstacleVector_inventory.Obstacle_ObstacleId] FOREIGN KEY ([ObstacleId]) REFERENCES [inventory].[Obstacle] ([Id]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_ObstacleId]
    ON [inventory].[ObstacleVector]([ObstacleId] ASC);

