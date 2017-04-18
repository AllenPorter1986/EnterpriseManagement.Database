CREATE TABLE [time].[TimeSheetRecords]
(
	[TimeSheetId] INT NOT NULL, 
    [RecordId] INT NOT NULL, 
    [Sequence] INT NOT NULL, 
	CONSTRAINT [PK_TimeSheetRecords] PRIMARY KEY ([RecordId], [TimeSheetId]),
    CONSTRAINT [FK_TimeSheetRecords_TimeSheets] FOREIGN KEY ([TimeSheetId]) REFERENCES [time].[TimeSheets] ([Id]),
    CONSTRAINT [FK_TimeSheetRecords_Records] FOREIGN KEY ([RecordId]) REFERENCES [time].[Records] ([Id]),
)
