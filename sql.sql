USE [HAWContext]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](200) NULL,
	[admin_password] [nvarchar](200) NOT NULL,
	[admin_phone] [nvarchar](11) NULL,
	[admin_email] [nvarchar](200) NOT NULL,
	[admin_isEmployee] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[total_price] [float] NULL,
	[date_cart] [date] NULL,
	[orderState_id] [int] NULL,
	[note_buyer] [nvarchar](255) NULL,
	[session_id] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cartDetail](
	[cart_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[productColor_id] [int] NULL,
	[cart_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
	[category_parent] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](255) NULL,
	[color_img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[comment] [nvarchar](255) NULL,
	[time] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_receiver_note] [nvarchar](255) NULL,
	[order_total_price] [float] NULL,
	[order_state] [int] NULL,
	[date] [datetime] Null,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orderDetail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[productColor_id] [int] NULL,
	[oder_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[order_detail_note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_producer](
	[producer_id] [int] IDENTITY(1,1) NOT NULL,
	[producer_name] [nvarchar](255) NULL,
	[producer_address] [nvarchar](255) NULL,
	[state] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[producer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](255) NULL,
	[product_alias] [nvarchar](255) NULL,
	[product_description] [nvarchar](255) NULL,
	[product_content] [nvarchar](255) NULL,
	[product_img] [nvarchar](255) NULL,
	[product_sub_img] [nvarchar](255) NULL,
	[product_isHot] [bit] NULL,
	[product_isNew] [bit] NULL,
	[product_isSale] [bit] NULL,
	[product_CreatedAt] [datetime] NULL,
	[product_UpdatedAt] [datetime] NULL,
	[product_code] [nvarchar](255) NULL,
	[product_package] [nvarchar](255) NULL,
	[product_delivery] [nvarchar](255) NULL,
	[product_delivery_time] [datetime] NULL,
	[product_payment] [nvarchar](255) NULL,
	[product_payment_type] [nvarchar](255) NULL,
	[product_sub_info] [nvarchar](255) NULL,
	[state] [int] NULL,
	[title_seo] [nvarchar](255) NULL,
	[des_seo] [nvarchar](255) NULL,
	[friendly_url] [nvarchar](255) NULL,
	[keyword] [nvarchar](255) NULL,
	[product_material] [nvarchar](255) NULL,
	[product_shape] [nvarchar](255) NULL,
	[product_producer] [int] NULL,
	[category_id] [int] NULL,
	[TongSoSao] [int] Null,
	[TongSoDanhGia] [int] Null
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_productColor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[size] [nvarchar](255) NULL,
	[amount] [int] NOT NULL,
	[product_price] [float] NULL,
	[product_sale] [float] NULL,
	[product_discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](255) NULL,
	[user_email] [nvarchar](255) NULL,
	[user_phone] [nvarchar](11) NULL,
	[user_address] [nvarchar](500) NULL,
	[user_password] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[isActive] [bit] NOT NULL,
	[time] [date] NULL,
	[question_id] [int] NULL,
	[answer] [nvarchar](500) NULL,
	[remember_me_identify] [nvarchar](500) NULL,
	[remember_me_token] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([admin_id], [admin_name], [admin_password], [admin_phone], [admin_email], [admin_isEmployee]) VALUES (1, N'HoangAnh', N'123', N'123456789', N'hoanganhphan2106@gmail.com', 0)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_name], [admin_password], [admin_phone], [admin_email], [admin_isEmployee]) VALUES (2, N'test', N'123', N'11111', N'1234', 1)
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_cart] ON 

INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1, NULL, 0, NULL, NULL, NULL, N'ac1f7ddb-c75e-488d-902e-2ab876822fe8')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (2, NULL, 205000, NULL, NULL, NULL, N'ac1f7ddb-c75e-488d-902e-2ab876822fe8')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (3, NULL, 0, NULL, NULL, NULL, N'24badebb-3f3f-41d0-a8e0-1715994f6368')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (4, NULL, 260000, NULL, NULL, NULL, N'3e6378d0-69fc-412c-9a72-90b5e986f38a')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (5, NULL, 205000, NULL, NULL, NULL, N'b75397a0-7430-46bf-853c-e92d4baa8876')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (6, NULL, 50000, NULL, NULL, NULL, N'5a963ead-1fa2-423b-9385-6c0a722eaefe')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1006, NULL, 50000, NULL, NULL, NULL, N'bf953f1b-caa5-4107-9bc7-72855cf07b18')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1007, NULL, 150000, NULL, NULL, NULL, N'c73fc16d-4282-4d88-80f5-ef3102cd35b2')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1008, NULL, 50000, NULL, NULL, NULL, N'b5bc9d93-cd28-4020-8e2b-7fe07e68233e')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1009, NULL, 50000, NULL, NULL, NULL, N'd19e7fd5-a2c4-4829-9782-7443118e933a')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1010, NULL, 50000, NULL, NULL, NULL, N'b5450f2e-a01e-4afc-9004-3a998fc3b992')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1011, NULL, 0, NULL, NULL, NULL, N'e2e2e1d1-1ac3-4d82-9689-94761d4fd1d3')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1012, NULL, 105000, NULL, NULL, NULL, N'1245cf8d-d254-46c6-b191-854a682497df')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1013, NULL, 55000, NULL, NULL, NULL, N'e534a672-5311-42ba-ae23-cdb0e992caab')
INSERT [dbo].[tbl_cart] ([cart_id], [account_id], [total_price], [date_cart], [orderState_id], [note_buyer], [session_id]) VALUES (1014, NULL, 50000, NULL, NULL, NULL, N'310cc90d-f717-47f0-97bc-ba176ccfe27e')
SET IDENTITY_INSERT [dbo].[tbl_cart] OFF
SET IDENTITY_INSERT [dbo].[tbl_cartDetail] ON 

INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1, 1, NULL, 3, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (2, 2, NULL, 1, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (3, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (4, 1, NULL, 2, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (5, 2, NULL, 3, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (6, 1, NULL, 2, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (7, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (8, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (9, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (10, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (11, 1, NULL, 4, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (12, 1, NULL, 2, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (13, 1, NULL, 4, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (14, 2, 4, 2, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (15, 1, 4, 3, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (16, 1, 5, 3, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (17, 2, 5, 1, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (18, 1, 6, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1018, 1, 1006, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1019, 1, 1007, 3, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1020, 1, 1008, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1021, 1, 1009, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1022, 1, 1010, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1023, 1, NULL, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1024, 1, 1012, 1, 50000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1025, 2, 1012, 1, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1026, 2, 1013, 1, 55000)
INSERT [dbo].[tbl_cartDetail] ([cart_detail_id], [productColor_id], [cart_id], [quantity], [price]) VALUES (1027, 1, 1014, 1, 50000)
SET IDENTITY_INSERT [dbo].[tbl_cartDetail] OFF
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([category_id], [category_name], [category_parent]) VALUES (2, N'Cô gái', N'Cô gái')
INSERT [dbo].[tbl_category] ([category_id], [category_name], [category_parent]) VALUES (3, N'Địa danh', N'Địa danh')
INSERT [dbo].[tbl_category] ([category_id], [category_name], [category_parent]) VALUES (4, N'Động vật', N'Động vật')
INSERT [dbo].[tbl_category] ([category_id], [category_name], [category_parent]) VALUES (5, N'Hình học', N'Hình học')
INSERT [dbo].[tbl_category] ([category_id], [category_name], [category_parent]) VALUES (6, N'Hoa lá', N'Hoa lá')
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET IDENTITY_INSERT [dbo].[tbl_color] ON 

INSERT [dbo].[tbl_color] ([color_id], [color_name], [color_img]) VALUES (1, N'Dark green', N'1')
INSERT [dbo].[tbl_color] ([color_id], [color_name], [color_img]) VALUES (2, N'blue light', N'1')
SET IDENTITY_INSERT [dbo].[tbl_color] OFF
SET IDENTITY_INSERT [dbo].[tbl_contact] ON 

INSERT [dbo].[tbl_contact] ([id], [name], [email], [phone], [address], [comment], [time]) VALUES (1, N'HoangAnh', N'hoanganhphan2106@gmail.com', N'12345', N'Ha Noi', N'test', N'2/2/2')
SET IDENTITY_INSERT [dbo].[tbl_contact] OFF
SET IDENTITY_INSERT [dbo].[tbl_Order] ON 

INSERT [dbo].[tbl_Order] ([order_id], [user_id], [order_receiver_note], [order_total_price], [order_state],[date]) VALUES (7, 4, N'â', 50000, 1,CAST(N'2022-04-10 19:22:55.500' AS Date))
INSERT [dbo].[tbl_Order] ([order_id], [user_id], [order_receiver_note], [order_total_price], [order_state],[date]) VALUES (8, 5, N'a', 105000, 5,CAST(N'2022-04-10 19:22:55.500' AS Date))
INSERT [dbo].[tbl_Order] ([order_id], [user_id], [order_receiver_note], [order_total_price], [order_state],[date]) VALUES (9, 6, N'a', 105000, 4,CAST(N'2022-04-10 19:22:55.500' AS Date))
INSERT [dbo].[tbl_Order] ([order_id], [user_id], [order_receiver_note], [order_total_price], [order_state],[date]) VALUES (10, 9, N'a', 55000, 4,CAST(N'2022-04-10 19:22:55.500' AS Date))
INSERT [dbo].[tbl_Order] ([order_id], [user_id], [order_receiver_note], [order_total_price], [order_state],[date]) VALUES (11, 10, N'a', 50000, 5,CAST(N'2022-04-10 19:22:55.500' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Order] OFF
SET IDENTITY_INSERT [dbo].[tbl_orderDetail] ON 

INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (9, 1, 7, 1, 50000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (10, 1, 8, 1, 50000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (11, 2, 8, 1, 55000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (12, 1, 9, 1, 50000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (13, 2, 9, 1, 55000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (14, 2, 10, 1, 55000, NULL)
INSERT [dbo].[tbl_orderDetail] ([order_detail_id], [productColor_id], [oder_id], [quantity], [price], [order_detail_note]) VALUES (15, 1, 11, 1, 50000, NULL)
SET IDENTITY_INSERT [dbo].[tbl_orderDetail] OFF
SET IDENTITY_INSERT [dbo].[tbl_producer] ON 

INSERT [dbo].[tbl_producer] ([producer_id], [producer_name], [producer_address], [state]) VALUES (1, N'Italia', N'Italia', 1)
INSERT [dbo].[tbl_producer] ([producer_id], [producer_name], [producer_address], [state]) VALUES (2, N'Pháp', N'Pháp', 1)
INSERT [dbo].[tbl_producer] ([producer_id], [producer_name], [producer_address], [state]) VALUES (3, N'Đức', N'Đức', 1)
INSERT [dbo].[tbl_producer] ([producer_id], [producer_name], [producer_address], [state]) VALUES (4, N'Việt Nam', N'Việt Nam', 1)
SET IDENTITY_INSERT [dbo].[tbl_producer] OFF
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (5, N'Bộ 2 Tranh Cô Gái E Ấp Bên Hoa Cỏ', N'Cô Gái E Ấp Bên Hoa Cỏ', N'sang trọng, nhẹ nhàng và hiện đại không bay màu, dễ lau chùi kết hợp với đinh 3 chân, rất dễ dàng cho việc treo trên tường mà không cần khoan.', N'Tranh HAW đang là xu hướng dành cho các căn nhà hiện đại, căn hộ chung cư.', N'/images/cogai2.jpg', N'1', 1, 1, 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'C11', N'1', N'1', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'1', N'1', N'1', 1, N'Bộ 2 Tranh Cô Gái E Ấp Bên Hoa Cỏ', N'DANH MỤC: CÔ GÁI, HOA LÁ, TRANG TRÍ NHÀ HIỆN ĐẠI, TRANH TRANG TRÍ PHÒNG KHÁCH HIỆN ĐẠI, TRANH TRANG TRÍ PHÒNG LÀM VIỆC, TRANH TRANG TRÍ PHÒNG NGỦ, TRANH TRANG TRÍ SPA - NAIL', N'1', N'DANH MỤC: CÔ GÁI, HOA LÁ, TRANG TRÍ NHÀ HIỆN ĐẠI, TRANH TRANG TRÍ PHÒNG KHÁCH HIỆN ĐẠI, TRANH TRANG TRÍ PHÒNG LÀM VIỆC, TRANH TRANG TRÍ PHÒNG NGỦ, TRANH TRANG TRÍ SPA - NAIL', N'Lụa', N'Chữ nhật', 1, 2)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (6, N'Bộ 2 Cô Gái Và Chú Chim Buồn', N'Bộ 2 Cô Gái Và Chú Chim Buồn', N'Tất cả các bức tranh tại HAW luôn ở độ phân giải cao nhất, tỉ mỉ trong từng chi tiết, phù hợp treo ở phòng khách, phòng ngủ, cầu thang, phòng bếp,….', N'Tất cả các bức tranh tại HAW luôn ở độ phân giải cao nhất, tỉ mỉ trong từng chi tiết, phù hợp treo ở phòng khách, phòng ngủ, cầu thang, phòng bếp,….', N'/images/cogai1.jpg', NULL, 1, 1, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'C22', N'13-06-2019', N'a', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'1', N'COD', N'Bộ 2 Cô Gái Và Chú Chim Buồn', 1, N'Bộ 2 Cô Gái Và Chú Chim Buồn', N'Bộ 2 Cô Gái Và Chú Chim Buồn', NULL, N'Bộ 2 Cô Gái Và Chú Chim Buồn', N'Gỗ', N'chữ nhật', 2, 2)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (7, N'Tranh Lụa', N'Tranh Lụa', N'Tranh Lụa', N'Tranh Lụa', N'/images/2.jpg', NULL, NULL, NULL, NULL, CAST(N'2019-11-11T00:00:00.000' AS DateTime), CAST(N'2019-11-11T00:00:00.000' AS DateTime), N'3234', N'11/11/2019', NULL, CAST(N'2019-11-11T00:00:00.000' AS DateTime), N'1', N'1', N'Tranh Lụa', 1, N'Tranh Lụa', N'Tranh Lụa', NULL, N'Tranh Lụa', N'Lụa', N'Vuông', 1, 4)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (9, N'Bộ 11 Tranh Tây Âu Cổ Điển', N'Bộ 11 Tranh Tây Âu Cổ Điển', N'Bộ 11 Tranh Tây Âu Cổ Điển', N'Bộ 11 Tranh Tây Âu Cổ Điển', N'/images/diadanh1.jpg', N'1', NULL, NULL, NULL, CAST(N'2019-02-02T00:00:00.000' AS DateTime), CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'D11', N'2/2/2019', N'1', CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'1', N'1', N'2/2/2019', 1, N'2/2/2019', N'2/2/2019', NULL, N'2/2/2019', N'Gỗ', N'chữ nhật', 2, 3)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (10, N'Bộ 2 Tranh Thành Phố Amsterdam', N'Bộ 2 Tranh Thành Phố Amsterdam', N'Bộ 2 Tranh Thành Phố Amsterdam', N'Bộ 2 Tranh Thành Phố Amsterdam', N'/images/diadanh2.jpg', N'1', NULL, NULL, NULL, CAST(N'2019-03-03T00:00:00.000' AS DateTime), CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'D22', N'3/3/2019', NULL, CAST(N'2019-03-03T00:00:00.000' AS DateTime), NULL, N'1', N'Bộ 2 Tranh Thành Phố Amsterdam', 1, N'Bộ 2 Tranh Thành Phố Amsterdam', N'Bộ 2 Tranh Thành Phố Amsterdam', NULL, N'Bộ 2 Tranh Thành Phố Amsterdam', N'Lụa', N'chữ nhật', 3, 3)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (11, N'Bộ 3 Tranh Bầu Trời Thế Giới', N'Bộ 3 Tranh Bầu Trời Thế Giới', N'Bộ 3 Tranh Bầu Trời Thế Giới', N'Bộ 3 Tranh Bầu Trời Thế Giới', N'/images/diadanh3.jpg', N'1', NULL, NULL, NULL, CAST(N'2019-02-02T00:00:00.000' AS DateTime), CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'D333', N'2/2/2019', NULL, CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'1', N'1', N'Bộ 3 Tranh Bầu Trời Thế Giới', 1, N'Bộ 3 Tranh Bầu Trời Thế Giới', N'Bộ 3 Tranh Bầu Trời Thế Giới', NULL, N'Bộ 3 Tranh Bầu Trời Thế Giới', N'Bạc', N'Vuông', 1, 3)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (12, N'Bộ 2 Tranh Hình Trừu Tượng', N'Bộ 2 Tranh Hình Trừu Tượng', N'Bộ 2 Tranh Hình Trừu Tượng', N'Bộ 2 Tranh Hình Trừu Tượng', N'/images/hinhhoc1.jpg', N'Phong Cách Hiện Đại Tối Giản', NULL, NULL, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'H11', N'1/1/2019 12:00:00 AM', NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL, N'Bộ 2 Tranh Hình Trừu Tượng', 1, N'Bộ 2 Tranh Hình Trừu Tượng', N'Bộ 2 Tranh Hình Trừu Tượng', NULL, N'Bộ 2 Tranh Hình Trừu Tượng', N'Gỗ', N'chữ nhật', 4, 5)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (13, N'Bộ 3 Tranh Hình Học Tam Giác', N'Bộ 3 Tranh Hình Học Tam Giác', N'Bộ 3 Tranh Hình Học Tam Giác', N'Bộ 3 Tranh Hình Học Tam Giác', N'/images/hinhhoc2.jpg', N'Tranh HAW đang là xu hướng dành cho các căn nhà hiện đại, căn hộ chung cư.', NULL, NULL, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'H22', N'1/1/2019 12:00:00 AM', NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL, N'Bộ 3 Tranh Hình Học Tam Giác', 1, N'Bộ 3 Tranh Hình Học Tam Giác', N'Bộ 3 Tranh Hình Học Tam Giác', NULL, N'Bộ 3 Tranh Hình Học Tam Giác', N'Lụa', N'chữ nhật', 4, 5)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (14, N'Bộ 3 Tranh Hươu Và Hình Học', N'Bộ 3 Tranh Hươu Và Hình Học', N'Bộ 3 Tranh Hươu Và Hình Học', N'Bộ 3 Tranh Hươu Và Hình Học', N'/images/hinhhoc3.jpg', N'Bộ 3 Tranh Hươu Và Hình Học trang trí nhà đẹp với thiết kế hiện đại, chất lượng cao', NULL, NULL, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'H33', N'1/1/2019 12:00:00 AM', NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL, N'Bộ 3 Tranh Hươu Và Hình Học trang trí nhà đẹp với thiết kế hiện đại, chất lượng cao', 1, N'Bộ 3 Tranh Hươu Và Hình Học', N'Bộ 3 Tranh Hươu Và Hình Học', NULL, N'Bộ 3 Tranh Hươu Và Hình Học', N'Lụa', N'chữ nhật', 4, 5)
INSERT [dbo].[tbl_product] ([product_id], [product_name], [product_alias], [product_description], [product_content], [product_img], [product_sub_img], [product_isHot], [product_isNew], [product_isSale], [product_CreatedAt], [product_UpdatedAt], [product_code], [product_package], [product_delivery], [product_delivery_time], [product_payment], [product_payment_type], [product_sub_info], [state], [title_seo], [des_seo], [friendly_url], [keyword], [product_material], [product_shape], [product_producer], [category_id]) VALUES (15, N'Bộ 5 Tranh Hình Học Tối Giản', N'Bộ 5 Tranh Hình Học Tối Giản', N'Bộ 5 Tranh Hình Học Tối Giản', N'Bộ 5 Tranh Hình Học Tối Giản', N'/images/hinhhoc4.jpg', N'Bộ 5 Tranh Hình Học Tối Giản', NULL, NULL, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'H44', N'1/1/2019 12:00:00 AM', NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL, N'Bộ 5 Tranh Hình Học Tối Giản', 1, N'Bộ 5 Tranh Hình Học Tối Giản', N'Bộ 5 Tranh Hình Học Tối Giản', NULL, N'Bộ 5 Tranh Hình Học Tối Giản', N'Gỗ', N'Vuông', 4, 5)
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_productColor] ON 

INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (1, 1, 5, N'30x50', 6, 50000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (2, 2, 5, N'30x60', 2, 55000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (3, 2, 5, N'30x70', 3, 60000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (4, 1, 6, N'30x50', 10, 30000, 25000, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (5, 2, 9, N'30x60', 5, 60000, 50000, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (6, 1, 10, N'30x60', 2, 60000, 40000, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (7, 1, 11, N'30x70', 6, 120000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (8, 1, 12, N'30x60', 4, 200000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (9, 1, 13, N'30x50', 6, 100000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (10, 2, 14, N'30x70', 7, 20000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (11, 1, 15, N'30x70', 7, 111000, NULL, NULL)
INSERT [dbo].[tbl_productColor] ([id], [color_id], [product_id], [size], [amount], [product_price], [product_sale], [product_discount]) VALUES (12, 1, 15, N'30x60', 7, 120000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_productColor] OFF
SET IDENTITY_INSERT [dbo].[tbl_question] ON 

INSERT [dbo].[tbl_question] ([question_id], [question]) VALUES (1, N'a')
SET IDENTITY_INSERT [dbo].[tbl_question] OFF
SET IDENTITY_INSERT [dbo].[tbl_state] ON 

INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (1, N'Mới')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (3, N'Đang lấy hàng từ kho')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (4, N'Đang giao hàng')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (5, N'Đã giao hàng')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (6, N'Hủy Đơn hàng')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (7, N'Khách đổi trả')
SET IDENTITY_INSERT [dbo].[tbl_state] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_phone], [user_address], [user_password], [CreatedAt], [isActive], [time], [question_id], [answer], [remember_me_identify], [remember_me_token]) VALUES (4, N'HoangAnh', N'HoangAnh@gmail.com', N'124124', N'Ha Noi', N'123', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2001-01-01' AS Date), 1, N'1', N'1', NULL)
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_phone], [user_address], [user_password], [CreatedAt], [isActive], [time], [question_id], [answer], [remember_me_identify], [remember_me_token]) VALUES (5, N'Test CNN', N'CNN@gmail.com', N'0980000021', N'HN', N'123', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_phone], [user_address], [user_password], [CreatedAt], [isActive], [time], [question_id], [answer], [remember_me_identify], [remember_me_token]) VALUES (6, N'CNN', N'CNN@gmail.com', N'0903942034', N'HN', N'123', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_phone], [user_address], [user_password], [CreatedAt], [isActive], [time], [question_id], [answer], [remember_me_identify], [remember_me_token]) VALUES (9, N'CNN1', N'ăffawf', N'2937', N'hn', N'123', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_phone], [user_address], [user_password], [CreatedAt], [isActive], [time], [question_id], [answer], [remember_me_identify], [remember_me_token]) VALUES (10, N'234234', NULL, NULL, NULL, N'123', NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT ((1)) FOR [admin_isEmployee]
GO
ALTER TABLE [dbo].[tbl_product] ADD  DEFAULT ((0)) FOR [product_isHot]
GO
ALTER TABLE [dbo].[tbl_product] ADD  DEFAULT ((0)) FOR [product_isNew]
GO
ALTER TABLE [dbo].[tbl_product] ADD  DEFAULT ((0)) FOR [product_isSale]
GO
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tbl_cart]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[tbl_user] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_cartDetail]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[tbl_cart] ([cart_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_cartDetail]  WITH CHECK ADD FOREIGN KEY([productColor_id])
REFERENCES [dbo].[tbl_productColor] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD FOREIGN KEY([order_state])
REFERENCES [dbo].[tbl_state] ([state_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tbl_user] ([user_id])
GO
ALTER TABLE [dbo].[tbl_orderDetail]  WITH CHECK ADD FOREIGN KEY([oder_id])
REFERENCES [dbo].[tbl_Order] ([order_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_orderDetail]  WITH CHECK ADD FOREIGN KEY([productColor_id])
REFERENCES [dbo].[tbl_productColor] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_producer]  WITH CHECK ADD FOREIGN KEY([state])
REFERENCES [dbo].[tbl_state] ([state_id])
GO
ALTER TABLE [dbo].[tbl_product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_category] ([category_id])
GO
ALTER TABLE [dbo].[tbl_product]  WITH CHECK ADD FOREIGN KEY([product_producer])
REFERENCES [dbo].[tbl_producer] ([producer_id])
GO
ALTER TABLE [dbo].[tbl_product]  WITH CHECK ADD FOREIGN KEY([state])
REFERENCES [dbo].[tbl_state] ([state_id])
GO
ALTER TABLE [dbo].[tbl_productColor]  WITH CHECK ADD FOREIGN KEY([color_id])
REFERENCES [dbo].[tbl_color] ([color_id])
GO
ALTER TABLE [dbo].[tbl_productColor]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_product] ([product_id])
GO
ALTER TABLE [dbo].[tbl_user]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[tbl_question] ([question_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
