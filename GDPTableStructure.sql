USE [Economic]
GO
/****** Object:  Schema [Economy]    Script Date: 10/1/2022 5:07:50 pm ******/
CREATE SCHEMA [Economy]
GO
/****** Object:  Table [Economy].[Country]    Script Date: 10/1/2022 5:07:50 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Economy].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Economy].[GDPRecord]    Script Date: 10/1/2022 5:07:50 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Economy].[GDPRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Indicator_ID] [int] NOT NULL,
	[Sector_ID] [int] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[Value] [float] NOT NULL,
	[Is_Q2Q] [bit] NOT NULL,
	[Date_Created] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Date_Modified] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Is_Active] [bit] NOT NULL,
	[Is_Delete] [bit] NOT NULL,
 CONSTRAINT [PK_GDPRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Economy].[Indicator]    Script Date: 10/1/2022 5:07:50 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Economy].[Indicator](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Indicator] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Indicator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Economy].[Sector]    Script Date: 10/1/2022 5:07:50 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Economy].[Sector](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sector] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Economy].[GDPRecord]  WITH CHECK ADD  CONSTRAINT [FK_Country_ID] FOREIGN KEY([Country_ID])
REFERENCES [Economy].[Country] ([ID])
GO
ALTER TABLE [Economy].[GDPRecord] CHECK CONSTRAINT [FK_Country_ID]
GO
ALTER TABLE [Economy].[GDPRecord]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_ID] FOREIGN KEY([Indicator_ID])
REFERENCES [Economy].[Indicator] ([ID])
GO
ALTER TABLE [Economy].[GDPRecord] CHECK CONSTRAINT [FK_Indicator_ID]
GO
ALTER TABLE [Economy].[GDPRecord]  WITH CHECK ADD  CONSTRAINT [FK_Sector_ID] FOREIGN KEY([Sector_ID])
REFERENCES [Economy].[Sector] ([ID])
GO
ALTER TABLE [Economy].[GDPRecord] CHECK CONSTRAINT [FK_Sector_ID]
GO

