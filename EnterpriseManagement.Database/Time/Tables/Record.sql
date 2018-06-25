CREATE TABLE [time].[Record] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Sequence]        INT           NOT NULL,
    [StartTime]       DATETIME2 (7) NOT NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    [TimeSheet_Id]    INT           NULL,
    CONSTRAINT [PK_time.Record] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_time.Record_time.TimeSheet_TimeSheet_Id] FOREIGN KEY ([TimeSheet_Id]) REFERENCES [time].[TimeSheet] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_TimeSheet_Id]
    ON [time].[Record]([TimeSheet_Id] ASC);

