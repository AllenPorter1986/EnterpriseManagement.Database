CREATE TABLE [time].[Function] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Type]            INT            NOT NULL,
    [Identifier]      NVARCHAR (MAX) NULL,
    [Description]     NVARCHAR (MAX) NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_time.Function] PRIMARY KEY CLUSTERED ([Id] ASC)
);



