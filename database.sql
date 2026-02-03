CREATE DATABASE SamaroDB;
GO

USE SamaroDB;
GO

CREATE TABLE [Users] (
    [UserID]       INT           IDENTITY (1, 1) NOT NULL,
    [FullName]     VARCHAR (100) NOT NULL,
    [Email]        VARCHAR (100) NOT NULL,
    [PasswordHash] VARCHAR (255) NOT NULL,
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Phone] NUMERIC NULL, 
    [WhatsappOpted] BIT NULL DEFAULT 0, 
    [FacialOpted] BIT NULL DEFAULT 0, 
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);



CREATE TABLE [dbo].[Blogs] (
    [BlogId]       INT           IDENTITY (1, 1) NOT NULL,
    [BlogCategory] VARCHAR (50)  NULL,
    [BlogImage]    VARCHAR (100) NULL,
    [BlogDate]     DATE          NULL,
    [BlogName]     VARCHAR (50)  NULL,
    [BlogTitle]    VARCHAR (100) NULL,
    [BlogBrief]    VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([BlogId] ASC)
);

CREATE TABLE [dbo].[CaseStudy] (
    [CaseId]    INT           IDENTITY (1, 1) NOT NULL,
    [CaseImage] VARCHAR (100) NULL,
    [CaseName]  VARCHAR (50)  NULL,
    [CaseTitle] VARCHAR (100) NULL,
    [CaseBrief] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([CaseId] ASC)
);

CREATE TABLE ContactMessages
(
    MessageID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Subject VARCHAR(255),
    MessageText VARCHAR(1000),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE [dbo].[Events] (
    [EventID]   INT           IDENTITY (1, 1) NOT NULL,
    [UserID]    INT           NULL,
    [EventName] VARCHAR (150) NULL,
    [EventDate] DATE          NULL,
    [StorageGB] INT           NULL,
    [MaxGuests] INT           NULL,
    [CreatedAt] DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([EventID] ASC)
);

CREATE TABLE [dbo].[Gallery] (
    [IamgeId]       INT           IDENTITY (1, 1) NOT NULL,
    [IamgePath]     VARCHAR (100) NULL,
    [ColorTemplate] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([IamgeId] ASC)
);

