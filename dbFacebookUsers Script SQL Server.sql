/*Script Tạo cơ sỡ dữ liệu FacebookUsers*/
/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [FacebookUsers]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGT] [int] NOT NULL,
	[TenGT] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhNhat]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhNhat](
	[MaSN] [int] NOT NULL,
	[DangSN] [nvarchar](255) NULL,
	[ThangSN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[MaCity] [int] NOT NULL,
	[TenCity] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiTinhCam]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiTinhCam](
	[MaTTTC] [int] NOT NULL,
	[TenTTTC] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTTTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Age] [float] NULL,
	[BirthDay] [datetime] NULL,
	[Hometown] [nvarchar](255) NULL,
	[NowLiving] [nvarchar](255) NULL,
	[SoBanBe] [int] NULL,
	[TrangThaiTinhCam] [nvarchar](255) NULL,
	[Followers] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GioiTinh] ([MaGT], [TenGT]) VALUES (0, N'Nam')
INSERT [dbo].[GioiTinh] ([MaGT], [TenGT]) VALUES (1, N'Nữ')
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (1, N'yyyy-01-dd', 1)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (2, N'yyyy-02-dd', 2)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (3, N'yyyy-03-dd', 3)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (4, N'yyyy-04-dd', 4)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (5, N'yyyy-05-dd', 5)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (6, N'yyyy-06-dd', 6)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (7, N'yyyy-07-dd', 7)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (8, N'yyyy-08-dd', 8)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (9, N'yyyy-09-dd', 9)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (10, N'yyyy-10-dd', 10)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (11, N'yyyy-11-dd', 11)
INSERT [dbo].[SinhNhat] ([MaSN], [DangSN], [ThangSN]) VALUES (12, N'yyyy-12-dd', 12)
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (1, N'Hà Nội')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (2, N'Hà Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (4, N'Cao Bằng')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (6, N'Tây Nguyên')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (8, N'Tuyên Quang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (10, N'Lào Cai')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (11, N'Điện Biên')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (12, N'Lai Châu')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (14, N'Sơn La')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (15, N'Yên Bái')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (17, N'Hoà Bình')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (19, N'Thái Nguyên')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (20, N'Lạng Sơn')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (22, N'Quảng Ninh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (24, N'Bắc Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (25, N'Phú Thọ')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (26, N'Vĩnh Phúc')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (27, N'Bắc Ninh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (30, N'Hải Dương')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (31, N'Hải Phòng')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (33, N'Hưng Yên')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (34, N'Thái Bình')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (35, N'Hà Nam')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (36, N'Nam Định')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (38, N'Thanh Hoá')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (40, N'Nghệ An')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (42, N'Hà Tĩnh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (44, N'Quảng Bình')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (45, N'Quảng Trị')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (46, N'Thừa Thiên Huế')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (48, N'Đà Nẵng')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (49, N'Quảng Nam')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (51, N'Quảng Ngãi')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (52, N'Bình Định')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (54, N'Phú Yên')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (56, N'Khánh Hoà')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (58, N'Ninh Thuận')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (60, N'Bình Thuận')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (62, N'Kon Tum')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (64, N'Gia Lai')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (66, N'Đắk Lắk')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (67, N'Đắk Nông')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (68, N'Lâm Đồng')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (70, N'Bình Phước')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (72, N'Tây Ninh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (74, N'Bình Dương')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (75, N'Đồng Nai')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (77, N'Vũng Tàu')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (79, N'Hồ Chí Minh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (80, N'Long An')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (82, N'Tiền Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (83, N'Bến Tre')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (84, N'Trà Vinh')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (86, N'Vĩnh Long')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (87, N'Đồng Tháp')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (89, N'An Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (91, N'Kiên Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (92, N'Cần Thơ')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (93, N'Hậu Giang')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (94, N'Sóc Trăng')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (95, N'Bạc Liêu')
INSERT [dbo].[ThanhPho] ([MaCity], [TenCity]) VALUES (96, N'Cà Mau')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (1, N'Độc thân')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (2, N'Đang hẹn hò')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (3, N'Đã đính hôn')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (4, N'Đã kết hôn')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (5, N'Có mối quan hệ phức tạp')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (6, N'Đã ly thân')
INSERT [dbo].[TrangThaiTinhCam] ([MaTTTC], [TenTTTC]) VALUES (7, N'Đã ly hôn')
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (1, N'Nguyễn Minh Ý', N'Nam', 21, CAST(N'1997-04-15T00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Hồ Chí Minh', 831, N'Đang hẹn hò', 40)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (2, N'Lê Nữ Tố Khuê', N'Nữ', 21, CAST(N'1997-11-01T00:00:00.000' AS DateTime), N'Khánh Hoà', N'Hồ Chí Minh', 476, N'Độc thân', 80)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (3, N'Nguyễn Quang Huy', N'Nam', 21, CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Hồ Chí Minh', 577, N'Có mối quan hệ phức tạp', 87)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (4, N'Nguyễn Minh Đạo', N'Nam', 51, CAST(N'1967-04-05T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Hồ Chí Minh', 1788, N'Đã kết hôn', 219)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (5, N'Hoàng Văn Trường', N'Nam', 24, CAST(N'1994-07-26T00:00:00.000' AS DateTime), N'Đồng Nai', N'Lâm Đồng', 1241, N'Đang hẹn hò', 123)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (6, N'Phạm Trung Hải', N'Nam', 24, CAST(N'1994-10-02T00:00:00.000' AS DateTime), N'Đồng Nai', N'Bình Dương', 4521, N'Độc thân', 634)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (7, N'Phạm Thị Lệ Thuỷ', N'Nữ', 45, CAST(N'1973-10-01T00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Khánh Hoà', 341, N'Đã kết hôn', 21)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (8, N'Lê Văn Dũng', N'Nam', 51, CAST(N'1967-03-15T00:00:00.000' AS DateTime), N'Phú Yên', N'Khánh Hoà', 124, N'Đã kết hôn', 54)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (9, N'Phạm Quốc Hải', N'Nam', 27, CAST(N'1991-06-17T00:00:00.000' AS DateTime), N'Quảng Nam', N'Đà Nẵng', 316, N'Đã đính hôn', 19)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (10, N'Lê Kiều Duyên', N'Nữ', 19, CAST(N'1999-06-20T00:00:00.000' AS DateTime), N'Hoà Bình', N'Đà Nẵng', 4532, N'Độc thân', 15663)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (11, N'Lê Thục Oanh', N'Nữ', 17, CAST(N'2001-05-07T00:00:00.000' AS DateTime), N'Hà Nội', N'Hà Nội', 1254, N'Độc thân', 567)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (12, N'Lê Duy Quí', N'Nam', 20, CAST(N'1998-05-08T00:00:00.000' AS DateTime), N'Vũng Tàu', N'Nghệ An', 4521, N'Độc thân', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (13, N'Lê Linh Ca', N'Nữ', 13, CAST(N'2005-11-04T00:00:00.000' AS DateTime), N'Bình Dương', N'Vĩnh Long', 312, N'Độc thân', 56)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (14, N'Nguyễn Đức Trung', N'Nam', 20, CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Hải Phòng', N'Hồ Chí Minh', 543, N'Độc thân', 53)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (15, N'Lê Khánh Hoà', N'Nữ', 20, CAST(N'1998-08-21T00:00:00.000' AS DateTime), N'Khánh Hoà', N'Hồ Chí Minh', 1543, N'Độc thân', 356)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (16, N'Phạm Khánh Trang', N'Nữ', 38, CAST(N'1980-07-21T00:00:00.000' AS DateTime), N'Lâm Đồng', N'Hà Nội', 1242, N'Độc thân', 153)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (17, N'Nguyễn Dương Khả Tú', N'Nữ', 20, CAST(N'1998-08-06T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Hồ Chí Minh', 4792, N'Đang hẹn hò', 27685)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (18, N'Trần Quang Bình', N'Nam', 21, CAST(N'1997-04-03T00:00:00.000' AS DateTime), N'Đồng Nai', N'Hồ Chí Minh', 1257, N'Đang hẹn hò', 310)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (19, N'Nguyễn Phúc Tâm', N'Nam', 25, CAST(N'1993-08-23T00:00:00.000' AS DateTime), N'Quảng Nam', N'Đà Nẵng', 4882, N'Đang hẹn hò', 1814)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (20, N'Vũ Thị Lệ', N'Nữ', 21, CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Hồ Chí Minh', 297, N'Độc thân', 46)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (21, N'Trần Nhật Huỳnh Ngân', N'Nữ', 26, CAST(N'1992-05-15T00:00:00.000' AS DateTime), N'Bình Thuận', N'Hồ Chí Minh', 3412, N'Độc thân', 1040)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (22, N'Đinh Tâm', N'Nam', 28, CAST(N'1990-10-04T00:00:00.000' AS DateTime), N'Phú Yên', N'Cần Thơ', 3504, N'Đang hẹn hò', 1242)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (23, N'Trần Phương Linh', N'Nữ', 24, CAST(N'1994-06-10T00:00:00.000' AS DateTime), N'Khánh Hoà', N'Bình Định', 506, N'Độc thân', 132)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (24, N'Lê Thị Nhung', N'Nữ', 45, CAST(N'1973-03-07T00:00:00.000' AS DateTime), N'Nam Định', N'Hà Tĩnh', 1243, N'Đã ly hôn', 545)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (25, N'Đào Bá Hỷ', N'Nam', 36, CAST(N'1982-04-12T00:00:00.000' AS DateTime), N'Hà Nội', N'Hồ Chí Minh', 214, N'Đã kết hôn', 24)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (26, N'Nguyễn Thị Kim Hà', N'Nữ', 46, CAST(N'1972-01-06T00:00:00.000' AS DateTime), N'Tây Ninh', N'Hồ Chí Minh', 231, N'Đã ly thân', 67)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (27, N'Nguyễn Minh Nhật', N'Nữ', 20, CAST(N'1998-09-07T00:00:00.000' AS DateTime), N'Vĩnh Long', N'Đắk Lắk', 4255, N'Độc thân', 21426)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (28, N'Dương Thái', N'Nam', 15, CAST(N'2003-07-21T00:00:00.000' AS DateTime), N'Vĩnh Long', N'Bình Phước', 125, N'Độc thân', 65)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (29, N'Đàm Trọng Khánh', N'Nam', 21, CAST(N'1997-03-18T00:00:00.000' AS DateTime), N'Bình Dương', N'Hà Nội', 2352, N'Đang hẹn hò', 12)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (30, N'Dương Triệu Vũ', N'Nam', 17, CAST(N'2001-01-27T00:00:00.000' AS DateTime), N'Kiên Giang', N'Tiền Giang', 112, N'Đang hẹn hò', 23)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (31, N'Phạm Băng Băng', N'Nữ', 18, CAST(N'2000-04-05T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Bình Dương', 4323, N'Có mối quan hệ phức tạp', 1233)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (32, N'Dương Thị Nga', N'Nữ', 20, CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'Vĩnh Long', N'Hà Nội', 1353, N'Đang hẹn hò', 1241)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (33, N'Nguyễn Thị Ngọc Tuyền', N'Nữ', 21, CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'Quảng Ninh', N'Đồng Nai', 1415, N'Đã đính hôn', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (34, N'Đỗ Đại Khôi Trang', N'Nữ', 18, CAST(N'2000-06-07T00:00:00.000' AS DateTime), N'Kiên Giang', N'Hồ Chí Minh', 542, N'Đang hẹn hò', 234)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (35, N'Phan Ái Vy', N'Nữ', 16, CAST(N'2002-06-09T00:00:00.000' AS DateTime), N'Hà Nội', N'Hồ Chí Minh', 247, N'Đang hẹn hò', 12)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (36, N'Trần Ngọc Lan Khuê', N'Nữ', 25, CAST(N'1993-03-11T00:00:00.000' AS DateTime), N'Gia Lai', N'Kiên Giang', 4363, N'Đã đính hôn', 43235)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (37, N'Đào Bá Khôi Nguyên', N'Nam', 18, CAST(N'2000-06-20T00:00:00.000' AS DateTime), N'Cần Thơ', N'Hà Nội', 734, N'Độc thân', 314)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (38, N'Phạm Nữ Linh Chi', N'Nữ', 21, CAST(N'1997-08-03T00:00:00.000' AS DateTime), N'Đắk Nông', N'Bình Dương', 3633, N'Có mối quan hệ phức tạp', 211)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (39, N'Đào Thị Hồng Hào', N'Nữ', 18, CAST(N'2000-06-09T00:00:00.000' AS DateTime), N'Lâm Đồng', N'Hồ Chí Minh', 4657, N'Đang hẹn hò', 5131)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (40, N'Lâm Phước Nhi', N'Nam', 20, CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'Đắk Lắk', N'Lâm Đồng', 3523, N'Có mối quan hệ phức tạp', 21244)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (41, N'Huỳnh Hà Hữu Hải', N'Nam', 18, CAST(N'2000-04-06T00:00:00.000' AS DateTime), N'Bình Phước', N'Hà Nội', 122, N'Độc thân', 43)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (42, N'Ninh Dương Lan Ngọc', N'Nữ', 27, CAST(N'1991-11-01T00:00:00.000' AS DateTime), N'Gia Lai', N'Hồ Chí Minh', 3413, N'Đang Hẹn Hò', 653)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (43, N'Dương Triệu Vũ', N'Nam', 18, CAST(N'2000-02-07T00:00:00.000' AS DateTime), N'Hà Nội', N'Cần Thơ', 1238, N'Có mối quan hệ phức tạp', 432)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (44, N'Hồ Ngọc Hà', N'Nữ', 32, CAST(N'1985-08-15T00:00:00.000' AS DateTime), N'Bến Tre', N'Gia Lai', 4121, N'Đã ly hôn', 235)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (45, N'Bùi Nữ Kiều Oanh', N'Nữ', 18, CAST(N'2000-03-12T00:00:00.000' AS DateTime), N'Hà Giang', N'Lâm Đồng', 2141, N'Có mối quan hệ phức tạp', 1122)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (46, N'Mai Phương Thuý', N'Nữ', 25, CAST(N'1993-09-09T00:00:00.000' AS DateTime), N'Sóc Trăng', N'Hà Nội', 1341, N'Độc thân', 643)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (47, N'Phạm Hương', N'Nữ', 28, CAST(N'1991-04-09T00:00:00.000' AS DateTime), N'Hải Phòng', N'Đà Nẵng', 832, N'Đã kết hôn', 121)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (48, N'Ngô Kiến Huy', N'Nam', 29, CAST(N'1989-08-29T00:00:00.000' AS DateTime), N'Thái Bình', N'Trà Vinh', 4653, N'Đã kết hôn', 342)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (49, N'Nguyễn Thanh Tùng', N'Nam', 25, CAST(N'1993-08-08T00:00:00.000' AS DateTime), N'Thái Bình', N'Hồ Chí Minh', 421, N'Độc thân', 123)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (50, N'Lê Tú Khôi', N'Nam', 36, CAST(N'1982-06-22T00:00:00.000' AS DateTime), N'Thừa Thiên Huế', N'Thừa Thiên Huế', 1233, N'Đã kết hôn', 12412)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (51, N'Nguyễn Thị Lệ Nam Em', N'Nữ', 28, CAST(N'1990-07-17T00:00:00.000' AS DateTime), N'Đồng Tháp', N'Vũng Tàu', 790, N'Đã kết hôn', 251)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (52, N'Đặng Thu Thảo', N'Nữ', 26, CAST(N'1992-05-02T00:00:00.000' AS DateTime), N'Quảng Nam', N'Hà Nội', 531, N'Đang hẹn hò', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (53, N'Nguyễn Ngọc Trân', N'Nữ', 34, CAST(N'1984-12-09T00:00:00.000' AS DateTime), N'Lạng Sơn', N'Hồ Chí Minh', 442, N'Độc thân', 123)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (54, N'Nguyễn Mỹ Thư', N'Nữ', 29, CAST(N'1989-11-15T00:00:00.000' AS DateTime), N'Hải Phòng', N'Gia Lai', 3412, N'Đang Hẹn Hò', 13531)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (55, N'Nguyễn Đức Thịnh', N'Nam', 21, CAST(N'1997-08-24T00:00:00.000' AS DateTime), N'Đắk Nông', N'Đồng Nai', 2342, N'Đang hẹn hò', 2523)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (56, N'Nguyễn Quốc Khánh', N'Nam', 21, CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Kon Tum', N'Hồ Chí Minh', 1451, N'Đang hẹn hò', 24)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (57, N'Nguyễn Duy Poon', N'Nam', 20, CAST(N'1998-05-29T00:00:00.000' AS DateTime), N'Hải Phòng', N'Hải Phòng', 2351, N'Có mối quan hệ phức tạp', 543)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (58, N'Nguyễn Ngọc Tuấn', N'Nam', 21, CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'Quảng Bình', N'Kon Tum', 754, N'Có mối quan hệ phức tạp', 252)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (59, N'Nguyễn Đang Quang', N'Nam', 53, CAST(N'1965-08-23T00:00:00.000' AS DateTime), N'Ninh Thuận', N'Hồ Chí Minh', 1431, N'Đã kết hôn', 8923)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (60, N'Nguyễn Phương', N'Nam', 39, CAST(N'1979-05-11T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Ninh Thuận', 1241, N'Đã kết hôn', 476)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (61, N'Nguyễn Xuân Phúc', N'Nam', 20, CAST(N'1998-05-08T00:00:00.000' AS DateTime), N'Hải Phòng', N'Đắk Nông', 564, N'Có mối quan hệ phức tạp', 76)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (62, N'Nguyễn Thị Kim Ngân', N'Nữ', 28, CAST(N'1990-05-08T00:00:00.000' AS DateTime), N'Trà Vinh', N'Vũng Tàu', 2353, N'Đã ly thân', 5364)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (63, N'Chu Ngọc Anh', N'Nữ', 16, CAST(N'2002-03-20T00:00:00.000' AS DateTime), N'Tiền Giang', N'Bình Phước', 231, N'Độc thân', 103)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (64, N'Nguyễn Đức Đam', N'Nam', 29, CAST(N'1989-02-28T00:00:00.000' AS DateTime), N'Hà Nội', N'Hà Nội', 4886, N'Đã kết hôn', 123244)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (65, N'Nguyễn Văn Giàu', N'Nam', 58, CAST(N'1960-07-05T00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', 142, N'Đã kết hôn', 45)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (66, N'Nguyễn Minh Tham', N'Nam', 35, CAST(N'1983-03-12T00:00:00.000' AS DateTime), N'Bến Tre', N'Bến Tre', 1241, N'Đã ly thân', 764)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (67, N'Nguyễn Thị Thẩm', N'Nữ', 19, CAST(N'1999-06-21T00:00:00.000' AS DateTime), N'Đắk Nông', N'Yên Bái', 1241, N'Có mối quan hệ phức tạp', 213)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (68, N'Mai Tiến Dũng', N'Nam', 30, CAST(N'1988-07-08T00:00:00.000' AS DateTime), N'Nam Định', N'Bến Tre', 1241, N'Đã ly hôn', 564)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (69, N'Nguyễn Nguyên ', N'Nam', 19, CAST(N'1999-05-22T00:00:00.000' AS DateTime), N'Yên Bái', N'Lâm Đồng', 326, N'Có mối quan hệ phức tạp', 79)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (70, N'Nguyễn Đại Uý', N'Nam', 19, CAST(N'1999-04-08T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Hà Nội', 4427, N'Độc thân', 23754)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (71, N'Nguyễn Hạnh Phúc', N'Nam', 31, CAST(N'1987-06-05T00:00:00.000' AS DateTime), N'Đà Nẵng', N'Hồ Chí Minh', 3656, N'Đã kết hôn', 1241)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (72, N'Tòng Văn Phóng', N'Nam', 19, CAST(N'1999-04-04T00:00:00.000' AS DateTime), N'Đắk Lắk', N'Đắk Lắk', 1231, N'Đang hẹn hò', 1100)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (73, N'Trịnh Xuân Thanh', N'Nam', 32, CAST(N'1986-08-15T00:00:00.000' AS DateTime), N'Long An', N'Hà Nội', 124, N'Đang hẹn hò', 12)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (74, N'Nguyễn Hoài Nam', N'Nữ', 19, CAST(N'1999-06-07T00:00:00.000' AS DateTime), N'Lâm Đồng', N'Đắk Nông', 123, N'Có mối quan hệ phức tạp', 12)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (75, N'Hà Văn Thắm', N'Nữ', 32, CAST(N'1986-10-17T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Đà Nẵng', 1232, N'Đã ly thân', 235)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (76, N'Phan Thị Thanh Tình', N'Nữ', 40, CAST(N'1978-10-02T00:00:00.000' AS DateTime), N'Khánh Hoà', N'Khánh Hoà', 1244, N'Đã kết hôn', 1211)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (77, N'Nguyễn Nhàn Nhạ', N'Nam', 22, CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'Sóc Trăng', N'Hồ Chí Minh', 3524, N'Có mối quan hệ phức tạp', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (78, N'Trần Quang Bình', N'Nam', 21, CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'Kon Tum', N'Hà Nội', 523, N'Độc thân', 152)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (79, N'Trần Quang Lâm', N'Nam', 34, CAST(N'1984-04-03T00:00:00.000' AS DateTime), N'Lạng Sơn', N'Hà Nội', 3411, N'Đã kết hôn', 856)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (80, N'Trần Trung Trực', N'Nam', 35, CAST(N'1983-08-08T00:00:00.000' AS DateTime), N'Thừa Thiên Huế', N'Bến Tre', 754, N'Đã kết hôn', 243)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (81, N'Trần Đại Quang', N'Nam', 64, CAST(N'1954-02-13T00:00:00.000' AS DateTime), N'Hà Tĩnh', N'Hồ Chí Minh', 87, N'Đã kết hôn', 14)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (82, N'Vương Đình Huệ', N'Nữ', 57, CAST(N'1961-08-16T00:00:00.000' AS DateTime), N'Hà Nội', N'Vũng Tàu', 3344, N'Đã ly thân', 34517)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (83, N'Trần Trí Trang', N'Nam', 22, CAST(N'1996-02-14T00:00:00.000' AS DateTime), N'Quảng Ninh', N'Hà Nội', 654, N'Độc thân', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (84, N'Lê Minh Chương', N'Nam', 21, CAST(N'1997-07-06T00:00:00.000' AS DateTime), N'Quảng Trị', N'Hồ Chí Minh', 348, N'Độc thân', 6)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (85, N'Hoàng Đế', N'Nam', 24, CAST(N'1994-01-01T00:00:00.000' AS DateTime), N'Long An', N'Quảng Nam', 1245, N'Có mối quan hệ phức tạp', 142523)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (86, N'Huỳnh Huy Hoàng', N'Nam', 33, CAST(N'1985-08-05T00:00:00.000' AS DateTime), N'Cần Thơ', N'Cần Thơ', 3754, N'Độc thân', 1312)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (87, N'Huỳnh Ngọc Sĩ', N'Nam', 22, CAST(N'1996-07-09T00:00:00.000' AS DateTime), N'Bạc Liêu', N'Hồ Chí Minh', 122, N'Đã đính hôn', 6)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (88, N'Vũ Văn Vương', N'Nam', 24, CAST(N'1994-06-03T00:00:00.000' AS DateTime), N'Đà Nẵng', N'Sóc Trăng ', 643, N'Độc thân', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (89, N'Võ Trần Nhật Hà', N'Nữ', 22, CAST(N'1996-06-16T00:00:00.000' AS DateTime), N'Thanh Hoá', N'Cà Mau', 45, N'Có mối quan hệ phức tạp', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (90, N'Bùi Thanh', N'Nam', 43, CAST(N'1975-04-09T00:00:00.000' AS DateTime), N'Thanh Hoá', N'Cà Mau', 634, N'Đang hẹn hò', 31)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (91, N'Lý Mạc Sầu', N'Nam', 22, CAST(N'1996-08-19T00:00:00.000' AS DateTime), N'Bạc Liêu', N'Long An', 134, N'Độc thân', 7)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (92, N'Vương', N'Nữ', 23, CAST(N'1995-06-09T00:00:00.000' AS DateTime), N'Hậu Giang', N'Đồng Tháp', 1352, N'Đã đính hôn', 10)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (93, N'Trịnh Sản', N'Nam', 23, CAST(N'1996-04-08T00:00:00.000' AS DateTime), N'Cà Mau', N'Hồ Chí Minh', 154, N'Có mối quan hệ phức tạp', 5)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (94, N'Tô Lâm', N'Nam', 23, CAST(N'1996-02-01T00:00:00.000' AS DateTime), N'Vũng Tàu', N'Đắk Lắk', 25, N'Đang hẹn hò', 14)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (95, N'Đoàn Thị Ngà', N'Nữ', 39, CAST(N'1979-12-19T00:00:00.000' AS DateTime), N'Phú Thọ', N'Bến Tre', 124, N'Đã kết hôn', 124)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (96, N'Nông Đức Nạnh', N'Nam', 45, CAST(N'1963-09-30T00:00:00.000' AS DateTime), N'Hà Nội', N'Lai Châu', 124, N'Đã ly thân', 54)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (97, N'Ngô Bảo Châu', N'Nam', 24, CAST(N'1994-04-04T00:00:00.000' AS DateTime), N'Đồng Tháp', N'Gia Lai', 76, N'Độc thân', 3)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (98, N'Đinh La Thăng', N'Nam', 47, CAST(N'1971-05-07T00:00:00.000' AS DateTime), N'Thanh Hoá', N'Sơn La', 3413, N'Độc thân', 5743)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (99, N'Hồ Đặng Hữu Trọng', N'Nam', 23, CAST(N'1995-10-26T00:00:00.000' AS DateTime), N'Hồ Chí Minh', N'Hà Nội', 35, N'Độc thân', 14)
INSERT [dbo].[Users] ([UserID], [UserName], [Sex], [Age], [BirthDay], [Hometown], [NowLiving], [SoBanBe], [TrangThaiTinhCam], [Followers]) VALUES (100, N'Phí Phương Anh', N'Nữ', 25, CAST(N'1993-05-03T00:00:00.000' AS DateTime), N'Nam Định', N'Đà Nẵng', 524, N'Đã đính hôn', 121)
GO
/****** Object:  StoredProcedure [dbo].[uspGetEncryptedUser]    Script Date: 10/22/2017 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetEncryptedUser]
AS
SELECT	u.UserID,u.UserName,gt.MaGT AS Sex,
		u.Age,sn.MaSN AS Birthday,
		tp.MaCity AS Hometown,tp2.MaCity AS NowLiving,
		u.SoBanBe,tttc.MaTTTC AS TrangThaiTinhCam,u.Followers
FROM Users AS u
JOIN SinhNhat AS sn ON DATEPART(mm,u.BirthDay) = sn.ThangSN
JOIN GioiTinh AS gt ON u.Sex = gt.TenGT
JOIN ThanhPho AS tp ON u.Hometown = tp.TenCity
JOIN ThanhPho AS tp2 ON u.NowLiving = tp2.TenCity
JOIN TrangThaiTinhCam AS tttc ON u.TrangThaiTinhCam = tttc.TenTTTC
GO
