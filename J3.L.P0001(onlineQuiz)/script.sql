USE [J3LP0001]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 8/19/2018 5:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[questionid] [int] NOT NULL,
	[answer] [nvarchar](50) NOT NULL,
	[correct] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 8/19/2018 5:16:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[username] [varchar](50) NOT NULL,
	[questionid] [int] NOT NULL,
	[question] [nvarchar](50) NOT NULL,
	[created] [date] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[questionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/19/2018 5:16:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([questionid])
REFERENCES [dbo].[Question] ([questionid])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_User]
GO

<--insert-->
INSERT INTO dbo.[User] (username, password, email, type) VALUES ('caupd', '123456', 'caupd@fpt.edu.vn', 0)
INSERT INTO dbo.[User] (username, password, email, type) VALUES ('hoapnse05740', '123456', 'hoapnse05740@fpt.edu.vn', 1)

INSERT INTO dbo.Question (username, questionid, question, created) VALUES ('caupd', 1, 'According to your text, a family consists of _____', '1-01-2019')
INSERT INTO dbo.Question (username, questionid, question, created) VALUES ('caupd', 2, 'Which of the following represents?', '1-01-2019')

INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (1, 'people who have lived in a relationship', 0)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (1, 'people who are married or united by kinship', 0)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (1, 'parents and children', 1)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (1, 'blood relatives', 0)

INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (2, 'single-parent family', 0)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (2, 'parents and children', 1)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (2, 'mother, father, and their biological children.', 0)
INSERT INTO dbo.Answer(questionid, answer, correct) VALUES (2, 'parents, children, grandparents, aunts, and uncles' , 0)