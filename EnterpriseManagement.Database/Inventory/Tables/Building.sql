CREATE TABLE [inventory].[Building] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [SiteId]          INT            NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Sequence]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Building] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_inventory.Building_inventory.Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [inventory].[Site] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_SiteId]
    ON [inventory].[Building]([SiteId] ASC);

