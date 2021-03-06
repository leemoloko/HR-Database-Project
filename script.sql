USE [RecruitmentNewDB]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[id] [int] NOT NULL,
	[answerDetails] [nvarchar](max) NULL,
	[totalGrades] [char](100) NULL,
	[applicationTestId] [int] NOT NULL,
	[pass] [bit] NULL,
	[recruiterId] [int] NOT NULL,
 CONSTRAINT [answersPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicant]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicant](
	[id] [int] NOT NULL,
	[description] [text] NOT NULL,
	[lastName] [varchar](255) NOT NULL,
	[firstName] [varchar](255) NOT NULL,
	[phone] [varchar](12) NOT NULL,
	[email] [text] NOT NULL,
 CONSTRAINT [applicantPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicantEvaluation]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicantEvaluation](
	[id] [int] NOT NULL,
	[hired] [bit] NULL,
	[applicationId] [int] NOT NULL,
	[recruiterId] [int] NOT NULL,
	[applicantReview] [varchar](255) NULL,
	[recruiterReview] [varchar](255) NULL,
	[onBoardingDate] [datetime] NULL,
 CONSTRAINT [applicantEvaluationPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application](
	[id] [int] NOT NULL,
	[dateApplied] [datetime] NOT NULL,
	[jobsId] [int] NOT NULL,
	[applicantId] [int] NOT NULL,
	[experience] [varchar](255) NOT NULL,
	[description] [varchar](500) NOT NULL,
	[education] [varchar](255) NOT NULL,
 CONSTRAINT [applicationPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationDocument]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationDocument](
	[id] [int] NOT NULL,
	[documentUrl] [varchar](255) NULL,
	[applicationId] [int] NOT NULL,
 CONSTRAINT [applicationDocumentPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationStatus]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationStatus](
	[id] [int] NOT NULL,
	[status] [varchar](150) NOT NULL,
 CONSTRAINT [applicationStatusPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationStatusChange]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationStatusChange](
	[id] [int] NOT NULL,
	[applicationId] [int] NOT NULL,
	[applicationStatusId] [int] NOT NULL,
	[updatedAt] [datetime] NOT NULL,
 CONSTRAINT [applicationStatusChangePk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationTest]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationTest](
	[id] [int] NOT NULL,
	[testId] [int] NOT NULL,
	[applicationId] [int] NOT NULL,
	[applicationTestStart] [datetime] NULL,
	[applicationTestEnd] [datetime] NULL,
 CONSTRAINT [applicationTestPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interview]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interview](
	[id] [int] NOT NULL,
	[interviewEndTime] [datetime] NOT NULL,
	[applicationId] [int] NOT NULL,
	[interviewScheduleTime] [datetime] NOT NULL,
 CONSTRAINT [interviewPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interviewNote]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interviewNote](
	[id] [int] NOT NULL,
	[interviewId] [int] NOT NULL,
	[summary] [varchar](500) NULL,
	[isQualified] [bit] NULL,
	[recruiterId] [int] NOT NULL,
 CONSTRAINT [interviewNotePk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[id] [int] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[jobPositionId] [int] NOT NULL,
	[jobPlatformId] [int] NOT NULL,
	[noOfPositions] [int] NOT NULL,
	[name] [varchar](80) NOT NULL,
	[jobCategoryId] [int] NOT NULL,
	[jobTypeId] [int] NOT NULL,
	[jobMediumId] [int] NOT NULL,
	[description] [varchar](500) NOT NULL,
	[organizationName] [varchar](200) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[publishedDate] [datetime] NOT NULL,
 CONSTRAINT [jobPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobCategory]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobCategory](
	[id] [int] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](80) NOT NULL,
	[description] [varchar](500) NOT NULL,
 CONSTRAINT [jobCategoryPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobMedium]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobMedium](
	[id] [int] NOT NULL,
	[medium] [varchar](80) NOT NULL,
 CONSTRAINT [jobMediumPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobPlatform]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobPlatform](
	[id] [int] NOT NULL,
	[description] [varchar](500) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](80) NOT NULL,
 CONSTRAINT [jobPlatformPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobProfile]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobProfile](
	[id] [int] NOT NULL,
	[description] [varchar](500) NOT NULL,
	[name] [varchar](80) NOT NULL,
	[code] [varchar](20) NOT NULL,
 CONSTRAINT [jobPositionPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobType]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobType](
	[id] [int] NOT NULL,
	[name] [varchar](80) NOT NULL,
 CONSTRAINT [jobTypePk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recruiter]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recruiter](
	[id] [int] NOT NULL,
	[name] [varchar](200) NOT NULL,
 CONSTRAINT [recruiterPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 07-05-2022 03:25:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NOT NULL,
	[score] [int] NOT NULL,
	[timespan] [int] NULL,
	[code] [varchar](20) NOT NULL,
	[isOnline] [bit] NOT NULL,
 CONSTRAINT [testPk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[answers] ([id], [answerDetails], [totalGrades], [applicationTestId], [pass], [recruiterId]) VALUES (1, N'Answer Details', N'B                                                                                                   ', 1, 1, 1)
INSERT [dbo].[answers] ([id], [answerDetails], [totalGrades], [applicationTestId], [pass], [recruiterId]) VALUES (2, N'Answer Details', N'A                                                                                                   ', 2, 1, 2)
GO
INSERT [dbo].[applicant] ([id], [description], [lastName], [firstName], [phone], [email]) VALUES (1, N'description 1', N'Eric', N'Cartman', N'9324256789', N'ericartman@gmail.com')
INSERT [dbo].[applicant] ([id], [description], [lastName], [firstName], [phone], [email]) VALUES (2, N'description 2', N'Micheal', N'Blackshire', N'9324226789', N'mblack@gmail.com')
INSERT [dbo].[applicant] ([id], [description], [lastName], [firstName], [phone], [email]) VALUES (3, N'description 3', N'Clint', N'Capella', N'9324220129', N'ccpella@gmail.com')
INSERT [dbo].[applicant] ([id], [description], [lastName], [firstName], [phone], [email]) VALUES (4, N'description 4', N'Butter', N'Stoctch', N'9126385749', N'butters@gmail.com')
INSERT [dbo].[applicant] ([id], [description], [lastName], [firstName], [phone], [email]) VALUES (5, N'description 5', N'Salim', N'Ramos', N'9236385749', N'sramos@gmail.com')
GO
INSERT [dbo].[applicantEvaluation] ([id], [hired], [applicationId], [recruiterId], [applicantReview], [recruiterReview], [onBoardingDate]) VALUES (1, 0, 1, 1, N'learn a lot of things related to technology', N'having better knowlege of the field', CAST(N'2022-05-07T01:42:17.273' AS DateTime))
INSERT [dbo].[applicantEvaluation] ([id], [hired], [applicationId], [recruiterId], [applicantReview], [recruiterReview], [onBoardingDate]) VALUES (2, 1, 2, 2, N'learn a lot of things related to technology', N'having better knowlege of the field', CAST(N'2022-05-07T01:42:17.277' AS DateTime))
GO
INSERT [dbo].[application] ([id], [dateApplied], [jobsId], [applicantId], [experience], [description], [education]) VALUES (1, CAST(N'2022-05-15T10:00:00.000' AS DateTime), 1, 1, N'1 year', N'BE Profile for 1 year exp.', N'BE')
INSERT [dbo].[application] ([id], [dateApplied], [jobsId], [applicantId], [experience], [description], [education]) VALUES (2, CAST(N'2022-05-15T10:00:00.000' AS DateTime), 2, 2, N'2 year', N'ME Profile for 3 year exp.', N'ME')
INSERT [dbo].[application] ([id], [dateApplied], [jobsId], [applicantId], [experience], [description], [education]) VALUES (3, CAST(N'2022-05-15T10:00:00.000' AS DateTime), 3, 3, N'5 year', N'Profile for 5 year exp.', N'BA')
GO
INSERT [dbo].[applicationDocument] ([id], [documentUrl], [applicationId]) VALUES (1, N'http::/docs.google.com/csdfaewfae', 1)
INSERT [dbo].[applicationDocument] ([id], [documentUrl], [applicationId]) VALUES (2, N'http::/docs.google.com/grggrete', 2)
INSERT [dbo].[applicationDocument] ([id], [documentUrl], [applicationId]) VALUES (3, N'http::/docs.google.com/trhtyfjfgdhdfg', 3)
GO
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (1, N'INITIATED')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (2, N'PROCESSING')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (3, N'NEGOTIATING')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (4, N'ACCEPTED')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (5, N'ONBOARDED')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (6, N'DECLINED')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (7, N'REJECTED')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (8, N'WAITING')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (9, N'ONCALLL')
INSERT [dbo].[applicationStatus] ([id], [status]) VALUES (10, N'BLACKLIST')
GO
INSERT [dbo].[applicationStatusChange] ([id], [applicationId], [applicationStatusId], [updatedAt]) VALUES (1, 1, 1, CAST(N'2022-05-07T01:15:19.130' AS DateTime))
INSERT [dbo].[applicationStatusChange] ([id], [applicationId], [applicationStatusId], [updatedAt]) VALUES (2, 1, 2, CAST(N'2022-05-07T01:15:19.430' AS DateTime))
INSERT [dbo].[applicationStatusChange] ([id], [applicationId], [applicationStatusId], [updatedAt]) VALUES (3, 1, 3, CAST(N'2022-05-07T01:15:19.433' AS DateTime))
INSERT [dbo].[applicationStatusChange] ([id], [applicationId], [applicationStatusId], [updatedAt]) VALUES (4, 1, 3, CAST(N'2022-05-07T01:15:19.480' AS DateTime))
GO
INSERT [dbo].[applicationTest] ([id], [testId], [applicationId], [applicationTestStart], [applicationTestEnd]) VALUES (1, 1, 1, CAST(N'2022-05-15T10:00:00.000' AS DateTime), CAST(N'2022-05-15T11:00:00.000' AS DateTime))
INSERT [dbo].[applicationTest] ([id], [testId], [applicationId], [applicationTestStart], [applicationTestEnd]) VALUES (2, 2, 2, CAST(N'2022-05-16T10:00:00.000' AS DateTime), CAST(N'2022-05-16T11:00:00.000' AS DateTime))
INSERT [dbo].[applicationTest] ([id], [testId], [applicationId], [applicationTestStart], [applicationTestEnd]) VALUES (3, 3, 3, CAST(N'2022-05-17T10:00:00.000' AS DateTime), CAST(N'2022-05-17T11:00:00.000' AS DateTime))
GO
INSERT [dbo].[interview] ([id], [interviewEndTime], [applicationId], [interviewScheduleTime]) VALUES (1, CAST(N'2022-05-15T10:00:00.000' AS DateTime), 1, CAST(N'2022-05-15T11:00:00.000' AS DateTime))
INSERT [dbo].[interview] ([id], [interviewEndTime], [applicationId], [interviewScheduleTime]) VALUES (2, CAST(N'2022-05-16T10:00:00.000' AS DateTime), 1, CAST(N'2022-05-16T11:00:00.000' AS DateTime))
INSERT [dbo].[interview] ([id], [interviewEndTime], [applicationId], [interviewScheduleTime]) VALUES (3, CAST(N'2022-05-17T10:00:00.000' AS DateTime), 1, CAST(N'2022-05-17T11:00:00.000' AS DateTime))
GO
INSERT [dbo].[interviewNote] ([id], [interviewId], [summary], [isQualified], [recruiterId]) VALUES (1, 1, N'Good candidate', 1, 1)
INSERT [dbo].[interviewNote] ([id], [interviewId], [summary], [isQualified], [recruiterId]) VALUES (2, 2, N'Bad candidate', 0, 2)
GO
INSERT [dbo].[job] ([id], [code], [jobPositionId], [jobPlatformId], [noOfPositions], [name], [jobCategoryId], [jobTypeId], [jobMediumId], [description], [organizationName], [startDate], [publishedDate]) VALUES (1, N'DEVELOPMENT', 1, 1, 3, N'development', 1, 1, 1, N'recruitment in development field', N'Amazon', CAST(N'2022-05-07T01:09:49.293' AS DateTime), CAST(N'2022-05-07T01:09:49.293' AS DateTime))
INSERT [dbo].[job] ([id], [code], [jobPositionId], [jobPlatformId], [noOfPositions], [name], [jobCategoryId], [jobTypeId], [jobMediumId], [description], [organizationName], [startDate], [publishedDate]) VALUES (2, N'TESTING', 2, 2, 3, N'testing', 1, 1, 1, N'recruitment in development field', N'Facebook', CAST(N'2022-05-07T01:11:34.663' AS DateTime), CAST(N'2022-05-07T01:11:34.663' AS DateTime))
GO
INSERT [dbo].[jobCategory] ([id], [code], [name], [description]) VALUES (1, N'IT', N'IT', N'IT Computers')
INSERT [dbo].[jobCategory] ([id], [code], [name], [description]) VALUES (2, N'MK', N'Marketing', N'Marketing')
INSERT [dbo].[jobCategory] ([id], [code], [name], [description]) VALUES (3, N'BK', N'Banking', N'Banking Sector')
INSERT [dbo].[jobCategory] ([id], [code], [name], [description]) VALUES (4, N'CO', N'Construction', N'Infra and Construction')
INSERT [dbo].[jobCategory] ([id], [code], [name], [description]) VALUES (5, N'ME', N'Medical', N'Healthcare and medicals')
GO
INSERT [dbo].[jobMedium] ([id], [medium]) VALUES (1, N'ONLINE')
INSERT [dbo].[jobMedium] ([id], [medium]) VALUES (2, N'ONSITE')
GO
INSERT [dbo].[jobPlatform] ([id], [description], [code], [name]) VALUES (1, N'Facebook Marketplace', N'FB', N'FACEBOOK')
INSERT [dbo].[jobPlatform] ([id], [description], [code], [name]) VALUES (2, N'LinkedIn Jobs', N'LI', N'LINKEDIN')
INSERT [dbo].[jobPlatform] ([id], [description], [code], [name]) VALUES (3, N'Google Jobs', N'GO', N'GOOGLE')
GO
INSERT [dbo].[jobProfile] ([id], [description], [name], [code]) VALUES (1, N'Software Engineer', N'Software Engineer', N'SE')
INSERT [dbo].[jobProfile] ([id], [description], [name], [code]) VALUES (2, N'Senior Software Engineer', N'Senior Software Engineer', N'SSE')
INSERT [dbo].[jobProfile] ([id], [description], [name], [code]) VALUES (3, N'Bank Manager', N'Manager', N'MN')
INSERT [dbo].[jobProfile] ([id], [description], [name], [code]) VALUES (4, N'Construction Worker', N'Worker', N'WO')
GO
INSERT [dbo].[jobType] ([id], [name]) VALUES (1, N'CONTRACT')
INSERT [dbo].[jobType] ([id], [name]) VALUES (2, N'FULL-TIME')
INSERT [dbo].[jobType] ([id], [name]) VALUES (3, N'PART-TIME')
INSERT [dbo].[jobType] ([id], [name]) VALUES (4, N'INTERNSHIP')
GO
INSERT [dbo].[recruiter] ([id], [name]) VALUES (1, N'James Allen')
INSERT [dbo].[recruiter] ([id], [name]) VALUES (2, N'Warren Dixon')
INSERT [dbo].[recruiter] ([id], [name]) VALUES (3, N'Josh Hector')
INSERT [dbo].[recruiter] ([id], [name]) VALUES (4, N'Andre Rivera')
INSERT [dbo].[recruiter] ([id], [name]) VALUES (5, N'Bill Clinton')
GO
INSERT [dbo].[test] ([id], [score], [timespan], [code], [isOnline]) VALUES (1, 100, 30, N'C++', 1)
INSERT [dbo].[test] ([id], [score], [timespan], [code], [isOnline]) VALUES (2, 50, 60, N'PYTHON', 1)
INSERT [dbo].[test] ([id], [score], [timespan], [code], [isOnline]) VALUES (3, 200, 60, N'MCQ', 1)
GO
ALTER TABLE [dbo].[applicantEvaluation]  WITH CHECK ADD  CONSTRAINT [applicantEvaluationsApplications] FOREIGN KEY([applicationId])
REFERENCES [dbo].[application] ([id])
GO
ALTER TABLE [dbo].[applicantEvaluation] CHECK CONSTRAINT [applicantEvaluationsApplications]
GO
ALTER TABLE [dbo].[applicantEvaluation]  WITH CHECK ADD  CONSTRAINT [applicantEvaluationsRecruiters] FOREIGN KEY([recruiterId])
REFERENCES [dbo].[recruiter] ([id])
GO
ALTER TABLE [dbo].[applicantEvaluation] CHECK CONSTRAINT [applicantEvaluationsRecruiters]
GO
ALTER TABLE [dbo].[applicationDocument]  WITH CHECK ADD  CONSTRAINT [applicationDocumentApplications] FOREIGN KEY([applicationId])
REFERENCES [dbo].[application] ([id])
GO
ALTER TABLE [dbo].[applicationDocument] CHECK CONSTRAINT [applicationDocumentApplications]
GO
