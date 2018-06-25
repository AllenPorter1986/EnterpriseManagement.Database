CREATE TABLE [time].[RecordTaskDetail] (
    [RecordId] INT NOT NULL,
    [TaskId]   INT NOT NULL,
    CONSTRAINT [PK_time.RecordTaskDetail] PRIMARY KEY CLUSTERED ([RecordId] ASC, [TaskId] ASC),
    CONSTRAINT [FK_time.RecordTaskDetail_time.Record_RecordId] FOREIGN KEY ([RecordId]) REFERENCES [time].[Record] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_time.RecordTaskDetail_time.TaskDetail_TaskId] FOREIGN KEY ([TaskId]) REFERENCES [time].[TaskDetail] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_TaskId]
    ON [time].[RecordTaskDetail]([TaskId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RecordId]
    ON [time].[RecordTaskDetail]([RecordId] ASC);

