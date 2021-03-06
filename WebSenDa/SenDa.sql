USE [SenDa]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[IDDonHang] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 3) NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[IDDonHang] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[IDKhachHang] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[Hinh] [varchar](max) NULL,
	[Hinh1] [varchar](max) NULL,
	[Hinh2] [varchar](max) NULL,
	[NgayDanhGia] [date] NOT NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[IDDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DiaChi_1] PRIMARY KEY CLUSTERED 
(
	[IDDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[IDDonHang] [int] IDENTITY(1,1) NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[PhuongThucThanhToan] [int] NOT NULL,
	[NgayDat] [date] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[IDDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiTaiKhoan] [int] NOT NULL,
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DiemTichLuy] [int] NULL,
	[AnhDaiDien] [varchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[IDSanPham] [int] NOT NULL,
	[GiaBan] [decimal](18, 3) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[IDKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[GiaTriKhuyenMai] [int] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiChauCay]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiChauCay](
	[IDLoaiChauCay] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiChauCay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiChauCay] PRIMARY KEY CLUSTERED 
(
	[IDLoaiChauCay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGiaThe]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiaThe](
	[IDLoaiGiaThe] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGiaThe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiGiaThe] PRIMARY KEY CLUSTERED 
(
	[IDLoaiGiaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IDLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSenDa]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSenDa](
	[IDLoaiSenDa] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSenDa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSenDa] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSenDa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[IDLoaiTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTaiKhoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDLoaiTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiTaiKhoan] [int] NOT NULL,
	[IDQuyen] [int] NOT NULL,
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[AnhDaiDien] [varchar](max) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapKho]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapKho](
	[IDSanPham] [int] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[GiaNhap] [decimal](18, 3) NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_NhapKho] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC,
	[NgayNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: Tue 11 1 2022 3:43:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiSanPham] [int] NOT NULL,
	[IDLoaiSenDa] [int] NULL,
	[IDLoaiChauCay] [int] NULL,
	[IDLoaiGiaThe] [int] NULL,
	[IDKhuyenMai] [int] NULL,
	[TenSanPham] [nvarchar](60) NOT NULL,
	[Hinh] [varchar](max) NULL,
	[Hinh1] [varchar](max) NULL,
	[Hinh2] [varchar](max) NULL,
	[Hinh3] [varchar](max) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1, 1, 1, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1, 2, 1, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1, 6, 1, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1, 10, 1, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (2, 4, 1, CAST(19.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (2, 8, 1, CAST(19.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (2, 12, 2, CAST(19.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (3, 3, 1, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (3, 10, 2, CAST(17.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (4, 3, 2, CAST(38.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (4, 4, 1, CAST(38.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (4, 7, 1, CAST(38.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (4, 9, 1, CAST(38.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (4, 12, 2, CAST(38.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (5, 3, 3, CAST(35.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (5, 7, 1, CAST(35.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (6, 24, 2, CAST(29.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (7, 2, 5, CAST(24.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (8, 1, 1, CAST(35.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (8, 2, 1, CAST(35.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (8, 26, 1, CAST(35.100 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1007, 3, 1, CAST(21.600 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1007, 8, 1, CAST(21.600 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1007, 10, 1, CAST(21.600 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1008, 6, 1, CAST(32.300 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1009, 3, 1, CAST(30.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1014, 4, 1, CAST(33.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1016, 1, 1, CAST(23.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1016, 3, 1, CAST(23.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1016, 26, 1, CAST(23.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1017, 8, 1, CAST(20.700 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1018, 1, 3, CAST(23.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1018, 7, 3, CAST(23.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1019, 3, 1, CAST(30.400 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1020, 7, 1, CAST(30.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1020, 24, 1, CAST(30.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1021, 1, 10, CAST(26.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1021, 3, 10, CAST(32.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1021, 4, 10, CAST(33.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1021, 5, 10, CAST(18.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 6, 10, CAST(34.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 7, 10, CAST(30.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 8, 10, CAST(23.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 9, 10, CAST(23.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 10, 10, CAST(24.000 AS Decimal(18, 3)))
INSERT [dbo].[ChiTietDonHang] ([IDDonHang], [IDSanPham], [SoLuong], [DonGia]) VALUES (1023, 12, 10, CAST(31.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (1, 8, N'Cây rất đẹp nha mn. Sẽ ủng hộ shop dài dài', N'~/Content/img/217040598_210673544296104_6257389476807170346_n.jpg', N'~/Content/img/217040598_210673544296104_6257389476807170346_n.jpg', N'~/Content/img/217040598_210673544296104_6257389476807170346_n.jpg', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (6, 1, N'Tôi Rất Hài Lòng Về Sản Phẩm!!!', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', CAST(N'2022-01-06' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (6, 3, N'Tôi Rất Hài Lòng Về Sản Phẩm!!!', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', CAST(N'2022-01-05' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (6, 7, N'Tôi Rất Hài Lòng Về Sản Phẩm!!!', N'~/Content/img/sp02.jpg', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', CAST(N'2022-01-06' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (6, 24, N'Cây quá đẹp', N'~/Content/img/sp01.jpg', N'~/Content/img/sp02.jpg', N'~/Content/img/sp03.jpg', CAST(N'2022-01-06' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (6, 26, N'Tôi Rất Hài Lòng Về Sản Phẩm!!!', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', CAST(N'2022-01-06' AS Date))
INSERT [dbo].[DanhGia] ([IDKhachHang], [IDSanPham], [NoiDung], [Hinh], [Hinh1], [Hinh2], [NgayDanhGia]) VALUES (1007, 3, N'Sản phẩm quá tốt so với giá', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', N'~/Content/img/instagram-3814051_960_720-removebg-preview.png', CAST(N'2022-01-11' AS Date))
GO
SET IDENTITY_INSERT [dbo].[DiaChi] ON 

INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (1, 1, N'100Q Hùng Vương, Phường 9, Quận 5, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (2, 1, N'368 Bà Hạt phường 9, Quận 10, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (3, 5, N'172 Nguyễn Chi Phương, Phường 9, Quận 5, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (1004, 6, N'312 đường 19, Bình Tân, Bình Trị Đông A, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (1005, 6, N'016, Q.10, P.2, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (3006, 1007, N'016543, Q.10, P.20, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (3007, 1007, N'312 đường 19, Bình Tân, Bình Trị Đông, TP.HCM')
INSERT [dbo].[DiaChi] ([IDDiaChi], [IDKhachHang], [DiaChi]) VALUES (3008, 6, N'1130 đường 20, Q.10, P.2, TP.HCM')
SET IDENTITY_INSERT [dbo].[DiaChi] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1, 1, N'368 Bà Hạt phường 9, Quận 10', 3, 1, CAST(N'2021-11-22' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (2, 1, N'100Q Hùng Vương, Phường 9, Quận 5, TP.HCM', 4, 2, CAST(N'2021-11-22' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (3, 1, N'100Q Hùng Vương, Phường 9, Quận 5, TP.HCM', 3, 2, CAST(N'2021-11-24' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (4, 1, N'100Q Hùng Vương, Phường 9, Quận 5, TP.HCM', 2, 1, CAST(N'2021-11-24' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (5, 1, N'368 Bà Hạt phường 9, Quận 10, TP.HCM', 2, 1, CAST(N'2021-11-25' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (6, 1, N'100Q Hùng Vương, Phường 9, Quận 5, TP.HCM', 3, 2, CAST(N'2021-11-25' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (7, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 0, 1, CAST(N'2021-12-19' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (8, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 1, 1, CAST(N'2021-12-19' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1007, 1007, N'016, Q.10, P.2, TP.HCM', 0, 1, CAST(N'2021-12-23' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1008, 1007, N'016543, Q.10, P.20, TP.HCM', 0, 1, CAST(N'2021-12-29' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1009, 1007, N'016543, Q.10, P.20, TP.HCM', 3, 1, CAST(N'2021-12-29' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1014, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 2, 1, CAST(N'2021-12-30' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1016, 6, N'312 đường 19, Bình Tân, Bình Trị Đông A, TP.HCM', 3, 1, CAST(N'2021-12-30' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1017, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 4, 1, CAST(N'2021-12-30' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1018, 6, N'312 đường 19, Bình Tân, Bình Trị Đông A, TP.HCM', 0, 1, CAST(N'2022-01-03' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1019, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 2, 1, CAST(N'2022-01-03' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1020, 6, N'123 đường 19, Bình Tân, Bình Trị Đông, TP.HCM', 3, 1, CAST(N'2022-01-05' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1021, 6, N'123 du?ng 19, Bình Tân, Bình Tr? Ðông, TP.HCM', 3, 1, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[DonHang] ([IDDonHang], [IDKhachHang], [DiaChi], [TrangThai], [PhuongThucThanhToan], [NgayDat]) VALUES (1023, 1007, N'016, Q.10, P.2, TP.HCM', 3, 2, CAST(N'2021-02-25' AS Date))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IDKhachHang], [IDLoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [TenKhachHang], [SoDienThoai], [CMND], [Email], [DiemTichLuy], [AnhDaiDien]) VALUES (1, 3, N'LongCongÐuôi', N'123', N'Bùi Hoàng Long', N'0378687344', N'123123123', N'hoanglong29032000@gmail.com', 30, N'~/Content/img/239983755_513212333409423_3072406451765634563_n.png')
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDLoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [TenKhachHang], [SoDienThoai], [CMND], [Email], [DiemTichLuy], [AnhDaiDien]) VALUES (4, 3, N'Some one', N'123', N'Nguyễn Văn Toàn', N'0184759922', N'111111111', N'someone@gmail.com', 15, N'~/Content/img/239983755_513212333409423_3072406451765634563_n.png')
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDLoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [TenKhachHang], [SoDienThoai], [CMND], [Email], [DiemTichLuy], [AnhDaiDien]) VALUES (5, 3, N'Inugami', N'123', N'Cậu Vàng Inu', N'0376381933', N'165892383', N'Inugami@gmail.com', 35, N'~/Content/img/239983755_513212333409423_3072406451765634563_n.png')
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDLoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [TenKhachHang], [SoDienThoai], [CMND], [Email], [DiemTichLuy], [AnhDaiDien]) VALUES (6, 3, N'TriTrinh207', N'123', N'Trí Trịnh', N'0123456789', N'123456789', N'tri@gmail.com', 20, N'~/Content/img/dd476c34aba06cae3f729832d3e6dd12.jpg')
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDLoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [TenKhachHang], [SoDienThoai], [CMND], [Email], [DiemTichLuy], [AnhDaiDien]) VALUES (1007, 3, N'TriTrinh', N'123456', N'Minh Trí', N'0123456789', N'789456123', N'minhtrizs2000@gmail.com', 10, N'~/Content/img/bljn1huescz61.jpg')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (1, CAST(26.000 AS Decimal(18, 3)), 95)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (2, CAST(24.000 AS Decimal(18, 3)), 104)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (3, CAST(32.000 AS Decimal(18, 3)), 92)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (4, CAST(33.000 AS Decimal(18, 3)), 98)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (5, CAST(18.000 AS Decimal(18, 3)), 100)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (6, CAST(34.000 AS Decimal(18, 3)), 98)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (7, CAST(30.000 AS Decimal(18, 3)), 95)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (8, CAST(23.000 AS Decimal(18, 3)), 99)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (9, CAST(23.000 AS Decimal(18, 3)), 99)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (10, CAST(24.000 AS Decimal(18, 3)), 96)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (12, CAST(31.000 AS Decimal(18, 3)), 98)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (24, CAST(29.000 AS Decimal(18, 3)), 107)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (25, CAST(33.000 AS Decimal(18, 3)), 110)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (26, CAST(39.000 AS Decimal(18, 3)), 108)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (27, CAST(41.000 AS Decimal(18, 3)), 110)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (28, CAST(37.000 AS Decimal(18, 3)), 110)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (29, CAST(52.000 AS Decimal(18, 3)), 500)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (30, CAST(28.000 AS Decimal(18, 3)), 23)
INSERT [dbo].[Kho] ([IDSanPham], [GiaBan], [SoLuongTon]) VALUES (31, CAST(10.000 AS Decimal(18, 3)), 20)
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (1, 0)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (2, 5)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (3, 10)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (4, 20)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (5, 30)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (6, 40)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (7, 50)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (8, 60)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (9, 70)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (10, 80)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [GiaTriKhuyenMai]) VALUES (11, 90)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiChauCay] ON 

INSERT [dbo].[LoaiChauCay] ([IDLoaiChauCay], [TenLoaiChauCay]) VALUES (1, N'Đất nung')
INSERT [dbo].[LoaiChauCay] ([IDLoaiChauCay], [TenLoaiChauCay]) VALUES (2, N'Nhựa')
SET IDENTITY_INSERT [dbo].[LoaiChauCay] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGiaThe] ON 

INSERT [dbo].[LoaiGiaThe] ([IDLoaiGiaThe], [TenLoaiGiaThe]) VALUES (1, N'Đất trồng')
INSERT [dbo].[LoaiGiaThe] ([IDLoaiGiaThe], [TenLoaiGiaThe]) VALUES (2, N'Phân bón')
INSERT [dbo].[LoaiGiaThe] ([IDLoaiGiaThe], [TenLoaiGiaThe]) VALUES (3, N'Đá-Xỉ than')
SET IDENTITY_INSERT [dbo].[LoaiGiaThe] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'Sen đá')
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (2, N'Chậu trồng cây')
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (3, N'Giá thể')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSenDa] ON 

INSERT [dbo].[LoaiSenDa] ([IDLoaiSenDa], [TenLoaiSenDa]) VALUES (1, N'Liên đài')
INSERT [dbo].[LoaiSenDa] ([IDLoaiSenDa], [TenLoaiSenDa]) VALUES (2, N'Thân cao')
INSERT [dbo].[LoaiSenDa] ([IDLoaiSenDa], [TenLoaiSenDa]) VALUES (3, N'Haworthia')
INSERT [dbo].[LoaiSenDa] ([IDLoaiSenDa], [TenLoaiSenDa]) VALUES (4, N'Sedum')
SET IDENTITY_INSERT [dbo].[LoaiSenDa] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([IDLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (1, N'Quản lý')
INSERT [dbo].[LoaiTaiKhoan] ([IDLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (2, N'Nhân viên')
INSERT [dbo].[LoaiTaiKhoan] ([IDLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (3, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (1, 1, 1, N'oanh', N'ruby2305', N'Kiều Oanh', N'0828105541', N'312445678', N'oanhle.883041@gmail.com', N'https://picsum.photos/id/1/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (2, 2, 2, N'long', N'hoanglong0712', N'Hoàng Long', N'0838245678', N'312434567', N'soobin@gmail.com', N'https://picsum.photos/id/2/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (3, 2, 3, N'jolie', N'jolie2305', N'Phương Oanh', N'0823456789', N'312345678', N'jolie.123@gmail.com', N'https://picsum.photos/id/3/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (4, 1, 1, N'Admin', N'123', N'Admin', N'123456789', N'123456789', N'ad1@gmail.com', N'https://picsum.photos/id/4/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (1004, 2, 2, N'NVKho', N'123', N'NV Kho', N'123456789', N'123456789', N'ad2@gmail.com', N'https://picsum.photos/id/1004/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (1005, 2, 3, N'NVSale', N'123', N'NV Bán Hàng', N'123456789', N'123456789', N'ad3@gmail.com', N'https://picsum.photos/id/1005/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (1006, 2, 4, N'NVNull', N'123', N'NV Không HĐ', N'123456789', N'1234567819', N'ad4@gmail.com', N'https://picsum.photos/id/1006/200/300')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDLoaiTaiKhoan], [IDQuyen], [TenTaiKhoan], [MatKhau], [TenNhanVien], [SoDienThoai], [CMND], [Email], [AnhDaiDien]) VALUES (1007, 2, 4, N'NVSale2', N'123', N'NV Bán Hàng 2', N'0907123456', N'123456789', N'ad5@gmail.com', N'https://picsum.photos/id/1008/200/300')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (1, CAST(N'2021-01-01' AS Date), CAST(16.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (1, CAST(N'2021-03-01' AS Date), CAST(16.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (1, CAST(N'2021-04-01' AS Date), CAST(16.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (1, CAST(N'2021-05-01' AS Date), CAST(16.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (1, CAST(N'2021-06-01' AS Date), CAST(16.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (2, CAST(N'2021-01-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (2, CAST(N'2021-03-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (2, CAST(N'2021-04-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (2, CAST(N'2021-05-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (2, CAST(N'2021-06-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-01-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-03-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-04-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-05-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-06-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (3, CAST(N'2021-11-29' AS Date), CAST(30.000 AS Decimal(18, 3)), 10)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (4, CAST(N'2021-01-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (4, CAST(N'2021-03-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (4, CAST(N'2021-04-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (4, CAST(N'2021-05-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (4, CAST(N'2021-06-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (5, CAST(N'2021-01-01' AS Date), CAST(8.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (5, CAST(N'2021-03-01' AS Date), CAST(8.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (5, CAST(N'2021-04-01' AS Date), CAST(8.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (5, CAST(N'2021-05-01' AS Date), CAST(8.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (5, CAST(N'2021-06-01' AS Date), CAST(8.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (6, CAST(N'2021-01-01' AS Date), CAST(24.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (6, CAST(N'2021-03-01' AS Date), CAST(24.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (6, CAST(N'2021-04-01' AS Date), CAST(24.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (6, CAST(N'2021-05-01' AS Date), CAST(24.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (6, CAST(N'2021-06-01' AS Date), CAST(24.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (7, CAST(N'2021-01-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (7, CAST(N'2021-03-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (7, CAST(N'2021-04-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (7, CAST(N'2021-05-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (7, CAST(N'2021-06-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (8, CAST(N'2021-01-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (8, CAST(N'2021-03-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (8, CAST(N'2021-04-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (8, CAST(N'2021-05-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (8, CAST(N'2021-06-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (9, CAST(N'2021-01-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (9, CAST(N'2021-03-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (9, CAST(N'2021-04-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (9, CAST(N'2021-05-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (9, CAST(N'2021-06-01' AS Date), CAST(13.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (10, CAST(N'2021-01-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (10, CAST(N'2021-03-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (10, CAST(N'2021-04-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (10, CAST(N'2021-05-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (10, CAST(N'2021-06-01' AS Date), CAST(14.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (12, CAST(N'2021-02-01' AS Date), CAST(21.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (12, CAST(N'2021-03-01' AS Date), CAST(21.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (12, CAST(N'2021-04-01' AS Date), CAST(21.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (12, CAST(N'2021-05-01' AS Date), CAST(21.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (12, CAST(N'2021-06-01' AS Date), CAST(21.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (24, CAST(N'2021-02-01' AS Date), CAST(19.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (24, CAST(N'2021-03-01' AS Date), CAST(19.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (24, CAST(N'2021-04-01' AS Date), CAST(19.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (24, CAST(N'2021-05-01' AS Date), CAST(19.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (24, CAST(N'2021-06-01' AS Date), CAST(19.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (25, CAST(N'2021-02-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (25, CAST(N'2021-03-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (25, CAST(N'2021-04-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (25, CAST(N'2021-05-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (25, CAST(N'2021-06-01' AS Date), CAST(23.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (26, CAST(N'2021-02-01' AS Date), CAST(29.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (26, CAST(N'2021-03-01' AS Date), CAST(29.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (26, CAST(N'2021-04-01' AS Date), CAST(29.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (26, CAST(N'2021-05-01' AS Date), CAST(29.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (26, CAST(N'2021-06-01' AS Date), CAST(29.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (27, CAST(N'2021-02-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (27, CAST(N'2021-03-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (27, CAST(N'2021-04-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (27, CAST(N'2021-05-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (27, CAST(N'2021-06-01' AS Date), CAST(20.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (28, CAST(N'2021-02-01' AS Date), CAST(17.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (28, CAST(N'2021-03-01' AS Date), CAST(17.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (28, CAST(N'2021-04-01' AS Date), CAST(17.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (28, CAST(N'2021-05-01' AS Date), CAST(17.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (28, CAST(N'2021-06-01' AS Date), CAST(17.000 AS Decimal(18, 3)), 20)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (29, CAST(N'2021-02-01' AS Date), CAST(22.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (29, CAST(N'2021-11-29' AS Date), CAST(100.000 AS Decimal(18, 3)), 500)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (30, CAST(N'2021-11-29' AS Date), CAST(18.000 AS Decimal(18, 3)), 23)
INSERT [dbo].[NhapKho] ([IDSanPham], [NgayNhap], [GiaNhap], [SoLuongNhap]) VALUES (31, CAST(N'2021-11-29' AS Date), CAST(5.000 AS Decimal(18, 3)), 20)
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Nhân viên kho')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (3, N'Nhân viên bán hàng')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (4, N'Không hoạt động')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (1, 1, 1, NULL, NULL, 4, N'Sen đá đế vương đỏ_Size trung', N'~/Content/img/devuongdo.jpg', N'~/Content/img/devuongdo1.jpg', N'~/Content/img/devuongdo2.jpg', N'~/Content/img/devuongdo3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (2, 1, 2, NULL, NULL, 1, N'Sen đá chuỗi ngọc đứng_Size bầu', N'~/Content/img/chuoingocdung.jpg', N'~/Content/img/chuoingocdung1.jpg', N'~/Content/img/chuoingocdung2.jpg', N'~/Content/img/chuoingocdung3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (3, 1, 3, NULL, NULL, 2, N'Sen đá dạ quang_Size bầu', N'~/Content/img/daquang.jpg', N'~/Content/img/daquang1.jpg', N'~/Content/img/daquang2.jpg', N'~/Content/img/daquang3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (4, 1, 4, NULL, NULL, 1, N'Sedum nho tím_Size bầu', N'~/Content/img/sedumnhotim.jpg', N'~/Content/img/sedumnhotim1.jpg', N'~/Content/img/sedumnhotim2.jpg', N'~/Content/img/sedumnhotim3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (5, 1, 1, NULL, NULL, 1, N'Sen đá nhật nguyệt_Size bầu', N'~/Content/img/nhatnguyet.jpg', N'~/Content/img/nhatnguyet1.jpg', N'~/Content/img/nhatnguyet2.jpg', N'~/Content/img/nhatnguyet3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (6, 2, NULL, 1, NULL, 2, N'Chậu đất nung hình trứng_Size 7x12cm', N'~/Content/img/chau-dat-nung-trung-hoa-tiet.jpg', N'~/Content/img/images(3).jpg', N'~/Content/img/images(4).jpg', N'~/Content/img/images(4).jpg', N'❤️Phù hợp trồng các loại sen đá siêu xinh
❤️Chất liệu đất nung')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (7, 2, NULL, 1, NULL, 1, N'Chậu đất nung hình trụ_Size 9x15cm', N'~/Content/img/images(6).jpg', N'~/Content/img/images(6).jpg', N'~/Content/img/images(7).jpg', N'~/Content/img/images(7).jpg', N'❤️Phù hợp trồng các loại sen đá siêu xinh
❤️Chất liệu đất nung')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (8, 2, NULL, 2, NULL, 3, N'Chậu nhựa nâu trồng sen đá_Size 10x17cm', N'~/Content/img/chaunau.jpg', N'~/Content/img/chaunau1.jpg', N'~/Content/img/chaunau2.jpg', N'~/Content/img/chaunau3.jpg', N'❤️Phù hợp trồng các loại sen đá siêu xinh
❤️Chất liệu nhựa')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (9, 3, NULL, NULL, 1, 2, N'Đất trồng sen đá SOIL MIX_500g', N'~/Content/img/ffdb85a979df9c80342a819715f46be9.jpg', N'~/Content/img/soilmix.jpg', N'~/Content/img/dattrong2.jpg', N'~/Content/img/dattrong3.jpg', N'❤️Đất tơi sốp
❤️Thoáng khí
❤️Hàm lượng dinh dưỡng cao')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (10, 3, NULL, NULL, 2, 3, N'Phân tan chậm vàng_200g', N'~/Content/img/tanchamvang.jpg', N'~/Content/img/tanchamvang1.jpg', N'~/Content/img/tanchamvang2.jpg', N'~/Content/img/tanchamvang3.jpg', N'❤️Phân tan chậm cung cấp hàm lượng dinh dưỡng cao cho cây 
❤️Rải quanh gốc từ 6-10 hạt tùy kích thước cây')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (12, 3, NULL, NULL, 3, 2, N'Xỉ than tổ ong_500g', N'~/Content/img/xithan.jpg', N'~/Content/img/xithan1.jpg', N'~/Content/img/xithan2.jpg', N'~/Content/img/xithan3.jpg', N'❤️Xỉ than giúp cải thiện hệ vi sinh trong giá thể
❤️Giúp đất tơi sốp, thoáng khí, thoát nước nhanh')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (24, 1, 3, NULL, NULL, 1, N'Sen đá kim cương_Size trung', N'~/Content/img/kimcuong.jpg', N'~/Content/img/kimcuong1.jpg', N'~/Content/img/kimcuong2.jpg', N'~/Content/img/kimcuong3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (25, 1, 1, NULL, NULL, 1, N'Sen đá dù hồng_Size bầu', N'~/Content/img/duhong.jpg', N'~/Content/img/duhong1.jpg', N'~/Content/img/duhong2.jpg', N'~/Content/img/duhong3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (26, 1, 2, NULL, NULL, 3, N'Sen đá dolar_Size trung', N'~/Content/img/dollartrang.jpg', N'~/Content/img/dollartrang1.jpg', N'~/Content/img/dollartrang2.jpg', N'~/Content/img/dollartrang3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (27, 3, NULL, NULL, 2, 2, N'Phân tan chậm tím_200g', N'~/Content/img/tanchamtim.jpg', N'~/Content/img/tanchamtim1.jpg', N'~/Content/img/tanchamtim2.jpg', N'~/Content/img/tanchamtim3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (28, 1, 4, NULL, NULL, 2, N'Sedum cỏ trắng_Size bầu', N'~/Content/img/sedumcotrang.jpg', N'~/Content/img/sedumcotrang1.jpg', N'~/Content/img/sedumcotrang2.jpg', N'~/Content/img/sedumcotrang3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (29, 1, 4, NULL, NULL, 3, N'Sedum hoa hồng_Size bầu', N'~/Content/img/sedumhoahong.jpg', N'~/Content/img/sedumhoahong1.jpg', N'~/Content/img/sedumhoahong2.jpg', N'~/Content/img/sedumhoahong3.jpg', N'📮 Cam kết cây đẹp như ảnh.
🖼 Lỗi 1 đổi 1 
🌵 Cây xuất xứ Đà Lạt, đã thuần khí hậu, tự nhiên, không kích thuốc, siêu khoẻ đẹp.

Khi mới mua sen về bạn hãy làm theo các bước sau đây:
1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm( trừ 1 số loại như sedum,aeonium, thài lài,sam... cây thân cỏ thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ,mát mẻ,thoáng gió tầm 3 ngày cho khô vết cắt.

2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây
   • Chậu: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được 😁
   • Giá thể (đất trồng): bạn có thể trộn theo công thức: 2 xỉ than, 1 phân bò,1 trấu hun hoặc 2 pumice, 1 peatmoss,1 trùn quế, 0,5 perlite, 
hoặc 1 mùn dừa, 1 perlite, 1 purmie.
Ngoài ra các b có thể dùng các loại đất trồng mua sẵn hoặc mix theo công thức chuẩn. 
Bạn nên mua thì tốt hơn vì thành phần trộn khá phức tạp.

3. Sau khi trồng cây vào chậu thì các b nên chỉnh sao cho cây cân đối vừa với chậu, các b có thể rải mặt bằng sỏi, aka, kanuma, nham thạch để chậu cây sạch và đẹp hơn. Không nên để lá cây bị vùi xuống đất và không nén đất cho chặt sau khi trồng
👉 Sau đây mình sẽ hướng dẫn bạn chăm sóc cây sau khi trồng:
   • Cây mới trồng bạn nên để sau 3 ngày hãy tưới nước trừ 1 số loại như sedum, sam, thài lài...có thể tưới luôn, bạn để ý đất trồng khi nào giá thể khô hết thì hãy tưới lại. 
   • Khi tưới thì nhớ tưới ướt hết phần giá thể đừng chỉ tưới bề mặt và không để nước đọng ở cây.
   • khi cây mới trồng không nên để nắng trực tiếp, bạn nên để ở chỗ có ánh sáng nhẹ 1 tuần khi cây bén rễ trở lại tưới nước r hãy đưa ra chỗ nhiều nắng hơn. 
   • Các bạn nên đưa từ từ để cây thích nghi vs nắng tốt hơn tránh cháy nắng.

Cây cần rất nhiều ánh sáng mặt trời, thoáng gió, mát mẻ nhưng không chịu đc nắng gắt 🌞
Nước tưới 4-5 ngày 1 lần tuỳ độ ẩm đất💧
cây không ưa nước nhiều, ngày mưa phùn độ ẩm cao có thể cả tuần không tưới, tưới lúc chiều mát, không tưới lúc trưa hay sáng
Tưới gốc không đc để nước đọng ở lá sẽ thối, nếu để trời mưa thì thổi hết nước đọng ở lá
Cây chỉ nên ngắm không nên sờ sịt nhiều 🌊
Cây đi đường k có sáng nên màu sắc sẽ chuyển xanh, để cây lên màu các bạn để cây cằn tưới ít, tầm 1 tuần tưới đẫm nước r lại nhừng tưới, cho ra chỗ mát mẻ và nhiều sáng mặt trời')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (30, 3, NULL, NULL, 3, 2, N'Đá masato_500g', N'~/Content/img/masato.jpg', N'~/Content/img/masato1.jpg', N'~/Content/img/masato2.jpg', N'~/Content/img/masato3.jpg', N'❤️Đá masato giúp cải thiện hệ vi sinh trong giá thể
❤️Giúp đất tơi sốp, thoáng khí, thoát nước nhanh')
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDLoaiSenDa], [IDLoaiChauCay], [IDLoaiGiaThe], [IDKhuyenMai], [TenSanPham], [Hinh], [Hinh1], [Hinh2], [Hinh3], [MoTa]) VALUES (31, 3, NULL, NULL, 3, 1, N'Đá masato_100g', N'~/Content/img/masato.jpg', N'~/Content/img/masato.jpg', N'~/Content/img/masato.jpg', N'~/Content/img/masato.jpg', N'❤️Đá masato giúp cải thiện hệ vi sinh trong giá thể
❤️Giúp đất tơi sốp, thoáng khí, thoát nước nhanh')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[DonHang] ([IDDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhachHang]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK_DiaChi_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiTaiKhoan] FOREIGN KEY([IDLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([IDLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_LoaiTaiKhoan]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_SanPham]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiTaiKhoan] FOREIGN KEY([IDLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([IDLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiTaiKhoan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[Quyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Quyen]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [FK_NhapKho_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [FK_NhapKho_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_KhuyenMai] FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([IDKhuyenMai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_KhuyenMai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiChauCay] FOREIGN KEY([IDLoaiChauCay])
REFERENCES [dbo].[LoaiChauCay] ([IDLoaiChauCay])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiChauCay]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiGiaThe] FOREIGN KEY([IDLoaiGiaThe])
REFERENCES [dbo].[LoaiGiaThe] ([IDLoaiGiaThe])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiGiaThe]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([IDLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([IDLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSenDa] FOREIGN KEY([IDLoaiSenDa])
REFERENCES [dbo].[LoaiSenDa] ([IDLoaiSenDa])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSenDa]
GO
