CREATE TABLE [inventory].[SiteVector] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [SiteId]          INT             NOT NULL,
    [X]               DECIMAL (19, 8) NULL,
    [Y]               DECIMAL (19, 8) NULL,
    [Z]               DECIMAL (19, 8) NULL,
    [CreatedDateTime] DATETIME2 (7)   NULL,
    [UpdatedDateTime] DATETIME2 (7)   NULL,
    CONSTRAINT [PK_inventory.SiteVector] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.SiteVector_inventory.Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [inventory].[Site] ([Id]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_SiteId]
    ON [inventory].[SiteVector]([SiteId] ASC);

