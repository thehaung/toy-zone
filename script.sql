USE [webbandonoithat]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK__category__3213E83F19E2C1FE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[custumer]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custumer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[account] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[fullname] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
 CONSTRAINT [PK__custumer__3213E83F8B1DCCE4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [nvarchar](255) NULL,
	[delivey_address] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[receiver] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[total_money] [numeric](19, 0) NULL,
	[customer_id] [int] NULL,
 CONSTRAINT [PK__order__3213E83FDF76871E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [nvarchar](255) NULL,
	[image] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[price] [numeric](19, 0) NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK__product__3213E83F25CBA161] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_order]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_order](
	[count] [int] NULL,
	[price] [numeric](19, 0) NULL,
	[product_id] [int] NOT NULL,
	[odder_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[odder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_promo]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_promo](
	[discount] [numeric](19, 0) NULL,
	[promot_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promot_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[promo]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [nvarchar](255) NULL,
	[end_at] [datetime] NULL,
	[start_at] [datetime] NULL,
 CONSTRAINT [PK__promo__3213E83FB8A2B20E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK__role__3213E83FB1BE92DE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role_customer]    Script Date: 9/6/2020 7:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_customer](
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_m6q2ofkj1g5aobtb2p00ajpqg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[custumer] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_m6q2ofkj1g5aobtb2p00ajpqg]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_rlaghtegr0yx2c1q1s6nkqjlh] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_rlaghtegr0yx2c1q1s6nkqjlh]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK_5uw5nxqovigv7mf1gmbos1rl8] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK_5uw5nxqovigv7mf1gmbos1rl8]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK_jto6sam1lif6fkov7aiksuj5u] FOREIGN KEY([odder_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK_jto6sam1lif6fkov7aiksuj5u]
GO
ALTER TABLE [dbo].[product_promo]  WITH CHECK ADD  CONSTRAINT [FK_bddacpvr21pgeq1tghgv69q01] FOREIGN KEY([promot_id])
REFERENCES [dbo].[promo] ([id])
GO
ALTER TABLE [dbo].[product_promo] CHECK CONSTRAINT [FK_bddacpvr21pgeq1tghgv69q01]
GO
ALTER TABLE [dbo].[product_promo]  WITH CHECK ADD  CONSTRAINT [FK_ptm414jgefsws18u7bka5x56a] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_promo] CHECK CONSTRAINT [FK_ptm414jgefsws18u7bka5x56a]
GO
ALTER TABLE [dbo].[role_customer]  WITH CHECK ADD  CONSTRAINT [FK_5mnlqh1y5q7b0tafcfihnk3gr] FOREIGN KEY([user_id])
REFERENCES [dbo].[custumer] ([id])
GO
ALTER TABLE [dbo].[role_customer] CHECK CONSTRAINT [FK_5mnlqh1y5q7b0tafcfihnk3gr]
GO
ALTER TABLE [dbo].[role_customer]  WITH CHECK ADD  CONSTRAINT [FK_keub5ex4bo2rsk6m5rfox16jm] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[role_customer] CHECK CONSTRAINT [FK_keub5ex4bo2rsk6m5rfox16jm]
GO
