CREATE TABLE [time].[TimeSheets]
(
	[Id] INT NOT NULL CONSTRAINT PK_TimeSheets PRIMARY KEY IDENTITY(1,1), 
    [EmployeeId] INT NOT NULL, 
    [Status] INT NOT NULL, 
    [CreatedDateTime] DATETIMEOFFSET(7) NULL CONSTRAINT DF_TimeSheets_CreatedDateTime DEFAULT GETUTCDATE(), 
    [UpdatedDateTime] DATETIMEOFFSET(7) NULL
    CONSTRAINT [FK_TimeSheets_Employees] FOREIGN KEY ([EmployeeId]) REFERENCES Employees([Id]),
	
)
