USE [master]
GO
/****** Object:  Database [BookShop]    Script Date: 01/07/2021 12:44:45 AM ******/
CREATE DATABASE [BookShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BookShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BookShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BookShop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BookShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookShop] SET  MULTI_USER 
GO
ALTER DATABASE [BookShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookShop] SET QUERY_STORE = OFF
GO
USE [BookShop]
GO
/****** Object:  Table [dbo].[tb_CTPN]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPN](
	[maCTPN] [nvarchar](50) NOT NULL,
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [bigint] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPN] PRIMARY KEY CLUSTERED 
(
	[maCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_CTPX]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPX](
	[maCTPX] [nvarchar](50) NOT NULL,
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPX] PRIMARY KEY CLUSTERED 
(
	[maCTPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_GianHang]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GianHang](
	[maGianHang] [nvarchar](50) NOT NULL,
	[tenGianHang] [ntext] NOT NULL,
	[moTa] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_GianHang] PRIMARY KEY CLUSTERED 
(
	[maGianHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NguoiDung]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NXB]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NXB](
	[maNXB] [nvarchar](50) NOT NULL,
	[tenNXB] [ntext] NOT NULL,
	[diaChi] [ntext] NOT NULL,
	[dienThoai] [ntext] NOT NULL,
	[email] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_NXB] PRIMARY KEY CLUSTERED 
(
	[maNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuNhap]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuNhap](
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuXuat]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuXuat](
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[tenKH] [ntext] NOT NULL,
	[ngayXuat] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Sach]    Script Date: 01/07/2021 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Sach](
	[maSach] [nvarchar](50) NOT NULL,
	[tieuDe] [nvarchar](50) NOT NULL,
	[tacGia] [nvarchar](50) NOT NULL,
	[namXuatBan] [int] NOT NULL,
	[giaBia] [int] NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[maGianHang] [nvarchar](50) NOT NULL,
	[anh] [nvarchar](200) NOT NULL,
	[moTa] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_Sach] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN1', N'PN1', N'TDDV', 5, 15000, 75000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN20', N'PN10', N'NMTH', 40, 10000, 400000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN21', N'PN1', N'NMTH', 3, 10000, 30000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN22', N'PN11', N'TCC2', 4, 20000, 80000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN23', N'PN11', N'NMTH', 5, 5000, 25000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN24', N'PN12', N'TCC2', 6, 12000, 72000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN25', N'PN12', N'NMTH', 7, 14000, 98000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN26', N'PN13', N'TCC2', 8, 9000, 72000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN27', N'PN13', N'NMTH', 9, 20000, 180000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN28', N'PN14', N'TCC2', 10, 10000, 100000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN29', N'PN14', N'NMTH', 11, 1000, 11000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN30', N'PN15', N'TCC1', 12, 12000, 144000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX1', N'PX1', N'TCC1', 5, 300000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX10', N'PX4', N'TDDV', 30, 600000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX11', N'PX5', N'NMTH', 1, 25000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX2', N'PX1', N'TCC2', 5, 200000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX3', N'PX1', N'NMTH', 5000, 125000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX4', N'PX2', N'NMTH', 5, 125000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX5', N'PX3', N'TCC2', 5, 425000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX6', N'PX3', N'TCC1', 3, 255000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX7', N'PX4', N'NMTH', 10, 250000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX8', N'PX4', N'TCC1', 20, 1700000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX9', N'PX4', N'TCC2', 1, 85000)
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'BANCHAY', N'Sách bán chạy', N'Sách bán chạy')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'DAIHOC', N'Sách đại học', N'Sách đại học')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'TINHOC', N'Sách tin học', N'Sách tin học')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'ngoc', N'ngoc')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'taikhoan', N'matkhau')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'thuan', N'thuan')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'trang', N'trang')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'BACHKHOA', N'NXB Bách Khoa', N'Hoàng Mai', N'0988754852', N'nxbbachkhoa@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'GIAODUC', N'NXB Giáo dục', N'Hà Nội', N'0999999999', N'giaoduc@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'KIMDONG', N'NXB Kim Đồng', N'Hai Bà Trưng', N'01685245157', N'nxbkimdong@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'TUOITRE', N'NXB Tuổi Trẻ', N'Hà Nội', N'01649346164', N'nxbtuoitre@gmail.com')
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN1', N'KIMDONG', CAST(N'2020-03-04' AS Date), 300000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN10', N'GIAODUC', CAST(N'2020-04-15' AS Date), 250000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN11', N'GIAODUC', CAST(N'2020-05-16' AS Date), 200000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN12', N'GIAODUC', CAST(N'2020-06-16' AS Date), 422000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN13', N'GIAODUC', CAST(N'2020-07-16' AS Date), 100000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN14', N'GIAODUC', CAST(N'2020-08-16' AS Date), 460000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN15', N'GIAODUC', CAST(N'2020-10-17' AS Date), 980000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX1', N'Nguyễn Văn H', CAST(N'2020-01-12' AS Date), 12550000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX2', N'Phạm Xuân D', CAST(N'2020-04-15' AS Date), 1250000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX3', N'Nguyễn Thị V', CAST(N'2020-07-15' AS Date), 6800000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX4', N'Nguyễn Văn H', CAST(N'2020-12-16' AS Date), 10350000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX5', N'fbhng', CAST(N'2020-12-16' AS Date), 2500000)
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'CN', N'Thám tử lừng danh Conan', N'Gosho Aoyama', 2000, 20000, N'KIMDONG', 1000, N'BANCHAY', N'83_3.jpg', N'Conan. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'CONAN', N'ABC', N'ABC', 2000, 20000, N'BACHKHOA', 200, N'BANCHAY', N'than-dong-dat-viet.jpg', N'<p>Đ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tả</p><p>Đ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tả</p><p>Đ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tả</p><p>&nbsp;</p><p><img alt="anh-4" src="/Anh/images/4.jpg" style="border-style:solid; border-width:2px; float:left; height:112px; width:160px" /></p><p>ĐaĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tảĐ&acirc;y l&agrave; m&ocirc; tả</p>')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'Doraemon', N'Doraemon', N'Fujiko F Fujio', 2006, 20000, N'KIMDONG', 1500, N'BANCHAY', N'tap-1-chuong-1-doremon-da-den-voi-nobita-nhu-the-nao-0015d612.png', N'<p>Đ&acirc;y l&agrave; h&agrave;ng b&aacute;n chạy</p>')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'NMTH', N'Nhập môn tin học', N'Nguyễn Văn A', 1996, 25000, N'BACHKHOA', 6894, N'DAIHOC', N'nhap-mon-tin-hoc.jpg', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'TCC1', N'Toán Cao Cấp 1', N'Nguyễn Văn H', 1996, 85000, N'GIAODUC', 49979, N'DAIHOC', N'toan-cao-cap-1.png', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'TCC2', N'Toán Cao Cấp 2', N'Nguyễn Văn G', 1996, 85000, N'GIAODUC', 49997, N'DAIHOC', N'toan-cao-cap-2.jpg', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'TCC3', N'Toán cao cấp 3', N'Nguyễn Văn X', 2000, 20000, N'BACHKHOA', 10000, N'DAIHOC', N'toan-cao-cap-3.jpg', N'Toán cao cấp 3. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'TDDV', N'Thần đồng đất việt', N'Nguyễn Thị B', 2015, 20000, N'KIMDONG', 19865, N'BANCHAY', N'than-dong-dat-viet.jpg', N'Thần Đồng đất việt. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang], [anh], [moTa]) VALUES (N'XSTK', N'Xác suất thống kê', N'Nguyễn Văn D', 2000, 70000, N'GIAODUC', 10000, N'DAIHOC', N'xac-suat-thong-ke.jpg', N'Xác suất thống kê.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat, ducimus.
')
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap] FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[tb_PhieuNhap] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap]
GO
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[tb_Sach] ([maSach])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_Sach]
GO
ALTER TABLE [dbo].[tb_PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhieuNhap_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_PhieuNhap] CHECK CONSTRAINT [FK_tb_PhieuNhap_tb_NXB]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_GianHang] FOREIGN KEY([maGianHang])
REFERENCES [dbo].[tb_GianHang] ([maGianHang])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_GianHang]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_NXB]
GO
USE [master]
GO
ALTER DATABASE [BookShop] SET  READ_WRITE 
GO
