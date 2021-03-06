USE [Sushi]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 3/22/2020 5:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NULL,
	[tel] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[openingHours] [nvarchar](max) NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 3/22/2020 5:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
	[shortDes] [nvarchar](max) NULL,
	[detailDes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Share]    Script Date: 3/22/2020 5:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[id] [int] NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[SocialNetwork] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Share] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sushi]    Script Date: 3/22/2020 5:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sushi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[shortDes] [nvarchar](max) NULL,
	[detailDes] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sushi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Information] ON 

INSERT [dbo].[Information] ([id], [address], [tel], [email], [openingHours]) VALUES (1, N'The Sushi Restaurant<br/>Phu Nghia - Chuong My - Ha Noi', N'0961234567', N'sushiphunghia@gmail.com', N'Monday Closed<br/>Tuesday 12 - 22<br/>Wednesday 12 - 22<br/>Thursday 12 - 22<br/>Friday 11 - 23<br/>Saturday 11 - 23<br/>Sunday 11 - 22')
SET IDENTITY_INSERT [dbo].[Information] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (2, N'Menu 1', N'10.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (4, N'Menu 2', N'20.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (5, N'Menu 3', N'30.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (7, N'Menu 4', N'40.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (8, N'Menu 5', N'50.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (9, N'Menu 6', N'60.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (10, N'Menu 7', N'70.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (11, N'Menu 8', N'80.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (12, N'Menu 9', N'90.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (13, N'Menu 10', N'100.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (14, N'Menu 11', N'110.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[Share] ([id], [Icon], [SocialNetwork], [URL]) VALUES (1, N'fb.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([id], [Icon], [SocialNetwork], [URL]) VALUES (2, N'tw.png', N'Twitter', N'https://twitter.com/')
INSERT [dbo].[Share] ([id], [Icon], [SocialNetwork], [URL]) VALUES (3, N'gg.png', N'Google+', N'https://www.google.com.vn/')
SET IDENTITY_INSERT [dbo].[Sushi] ON 

INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (2, N'Sushi 1', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'1000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (4, N'Sushi 2', N'sushi2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'2000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (5, N'Sushi 3', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (6, N'Sushi 4', N'sushi4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'4000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (8, N'Sushi 5', N'sushi5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'5000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (9, N'Sushi 6', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'6000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (10, N'Sushi 7', N'sushi7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'7000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (11, N'Sushi 8', N'sushi8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'8000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (12, N'Sushi 9', N'sushi9.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'9000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (13, N'Sushi10', N'sushi9.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula etsasdsaThank you very much for your letter which arrived a few days ago. It was lovely to hear from you. I am sorry, I haven’t written for you such along time because I studied hard to pass the final exam. However, I had agreat weekend more than every when I went to live concerts last night with my friends. Now, I am writing to tell you how the wonderful concert is It is the beautiful concert I have ever taken part in with many people and the miracle of sound of piano. As you know, my pianist is Yiruma and in last concert I couldn’t believe that he appeared in my eyes and gave me a big hug after his performance. I also listen a soothing music which is played by him and other professional musicians. Only when I heard his song from the stage I feel anythings around me seem to disappear and I can fly with many stars on the sky to forget all my fears which I suffered before.

That is amazing.

', N'10000')
SET IDENTITY_INSERT [dbo].[Sushi] OFF
