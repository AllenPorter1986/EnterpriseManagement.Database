CREATE TABLE [inventory].[LocationVector] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [LocationId]      INT             NOT NULL,
    [X]               DECIMAL (19, 8) NULL,
    [Y]               DECIMAL (19, 8) NULL,
    [Z]               DECIMAL (19, 8) NULL,
    [CreatedDateTime] DATETIME2 (7)   NULL,
    [UpdatedDateTime] DATETIME2 (7)   NULL,
    CONSTRAINT [PK_inventory.LocationVector] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.LocationVector_inventory.Location_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [inventory].[Location] ([Id]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_LocationId]
    ON [inventory].[LocationVector]([LocationId] ASC);

