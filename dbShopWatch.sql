USE [master]
GO
/****** Object:  Database [Shop_watch]    Script Date: 11/12/2019 2:16:53 PM ******/
CREATE DATABASE [Shop_watch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop_watch', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.TRUNGNGUYEN\MSSQL\DATA\Shop_watch.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shop_watch_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.TRUNGNGUYEN\MSSQL\DATA\Shop_watch_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop_watch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop_watch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop_watch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop_watch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop_watch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop_watch] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop_watch] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop_watch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop_watch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop_watch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop_watch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop_watch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop_watch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop_watch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop_watch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop_watch] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop_watch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop_watch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop_watch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop_watch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop_watch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop_watch] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop_watch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop_watch] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shop_watch] SET  MULTI_USER 
GO
ALTER DATABASE [Shop_watch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop_watch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop_watch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop_watch] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Shop_watch]
GO
/****** Object:  Table [dbo].[Binh_luan]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Binh_luan](
	[Id_binh_luan] [int] IDENTITY(1,1) NOT NULL,
	[Id_san_pham] [int] NULL,
	[Id_tai_khoan_kh] [int] NULL,
	[Noi_dung] [ntext] NULL,
	[Ngay_tao] [datetime] NULL,
	[Id_tai_khoan_Ad] [int] NULL,
	[Tra_loi_binh_luan] [ntext] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_binh_luan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Don_hang]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Don_hang](
	[Id_don_hang] [int] IDENTITY(1,1) NOT NULL,
	[Id_san_pham] [int] NULL,
	[Id_tai_khoan_Kh] [int] NULL,
	[Thanh_tien] [decimal](18, 0) NULL,
	[Trang_thai] [tinyint] NULL,
	[So_luong] [int] NULL,
	[Ngay_tao] [datetime] NULL,
	[Id_nguoi_cap_nhat] [int] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[Chu_thich] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_don_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San_pham]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_pham](
	[Id_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[Ten_san_pham] [nvarchar](255) NOT NULL,
	[Hinh_anh] [nvarchar](255) NULL,
	[Loai_san_pham] [tinyint] NULL,
	[Gia_goc] [int] NOT NULL,
	[Gia_sale] [int] NULL,
	[So_luong] [int] NULL,
	[Nguoi_cap_nhat] [varchar](255) NULL,
	[Ngay_Cap_nhat] [datetime] NULL,
	[Mo_ta_ngan] [ntext] NULL,
	[Mo_ta_dai] [ntext] NULL,
	[Chu_thich] [ntext] NULL,
	[Trang_thai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_khoan_Ad]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_khoan_Ad](
	[Id_Tai_khoan_ad] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](225) NOT NULL,
	[Gioi_tinh] [tinyint] NOT NULL,
	[Ngay_sinh] [date] NULL,
	[Dia_chi] [ntext] NULL,
	[Email] [nvarchar](255) NOT NULL,
	[So_dien_thoai] [int] NOT NULL,
	[Hinh_anh] [nvarchar](255) NULL,
	[Nguoi_cap_nhat] [varchar](255) NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[Chu_thich] [ntext] NULL,
	[Trang_thai] [tinyint] NULL,
	[Id_chuc_vu] [tinyint] NULL,
	[Mat_khau] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tai_khoan_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_khoan_Kh]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_khoan_Kh](
	[Id_Tai_khoan_kh] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](225) NOT NULL,
	[Gioi_tinh] [tinyint] NOT NULL,
	[Ngay_sinh] [date] NULL,
	[Dia_chi] [ntext] NULL,
	[Email] [nvarchar](255) NOT NULL,
	[So_dien_thoai] [int] NOT NULL,
	[Hinh_anh] [nvarchar](255) NULL,
	[Nguoi_cap_nhat] [varchar](255) NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[Trang_thai] [tinyint] NULL,
	[Mat_khau] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tai_khoan_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tin_tuc]    Script Date: 11/12/2019 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tin_tuc](
	[Id_Tintuc] [int] IDENTITY(1,1) NOT NULL,
	[Ten_tin_tuc] [nvarchar](255) NOT NULL,
	[Hinh_anh] [nvarchar](255) NULL,
	[Nguoi_cap_nhat] [nvarchar](255) NULL,
	[Ngay_Cap_nhat] [datetime] NULL,
	[Chu_thich] [ntext] NULL,
	[Trang_thai] [tinyint] NULL,
	[Noi_dung] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Binh_luan] ON 

INSERT [dbo].[Binh_luan] ([Id_binh_luan], [Id_san_pham], [Id_tai_khoan_kh], [Noi_dung], [Ngay_tao], [Id_tai_khoan_Ad], [Tra_loi_binh_luan], [Ngay_cap_nhat]) VALUES (1, 9, 4, N'Đồng hồ đẹp, phù hợp với giá tiền. Sẽ ủng hộ shop dài dài ^^', CAST(N'2019-11-02T21:08:12.000' AS DateTime), 3, N'Cám ơn đánh giá từ bạn', CAST(N'2019-11-02T23:30:51.810' AS DateTime))
INSERT [dbo].[Binh_luan] ([Id_binh_luan], [Id_san_pham], [Id_tai_khoan_kh], [Noi_dung], [Ngay_tao], [Id_tai_khoan_Ad], [Tra_loi_binh_luan], [Ngay_cap_nhat]) VALUES (2, 9, 6, N'Đẹp lắm ae ạ, thường rất ít mua đồ online, nhưng không thể tin được chất lượng đồng hồ rất tốt', CAST(N'2019-11-02T21:12:27.000' AS DateTime), 3, N'Cảm ơn đánh giá của bạn', CAST(N'2019-11-05T14:17:22.420' AS DateTime))
INSERT [dbo].[Binh_luan] ([Id_binh_luan], [Id_san_pham], [Id_tai_khoan_kh], [Noi_dung], [Ngay_tao], [Id_tai_khoan_Ad], [Tra_loi_binh_luan], [Ngay_cap_nhat]) VALUES (3, 17, 7, N'Hàng giao rất nhanh, sản phẩm đẹp', CAST(N'2019-11-03T22:51:55.000' AS DateTime), 3, N'Cảm ơn đánh giá của bạn', CAST(N'2019-11-08T15:39:11.610' AS DateTime))
INSERT [dbo].[Binh_luan] ([Id_binh_luan], [Id_san_pham], [Id_tai_khoan_kh], [Noi_dung], [Ngay_tao], [Id_tai_khoan_Ad], [Tra_loi_binh_luan], [Ngay_cap_nhat]) VALUES (4, 9, 4, N'Sản phẩm này rất đẹp
', CAST(N'2019-11-04T11:51:00.000' AS DateTime), 3, N'Cảm ơn đã đánh giá', CAST(N'2019-11-07T16:01:10.630' AS DateTime))
INSERT [dbo].[Binh_luan] ([Id_binh_luan], [Id_san_pham], [Id_tai_khoan_kh], [Noi_dung], [Ngay_tao], [Id_tai_khoan_Ad], [Tra_loi_binh_luan], [Ngay_cap_nhat]) VALUES (5, 28, 4, N'fhsdkhfsajs', CAST(N'2019-11-05T15:24:08.000' AS DateTime), 3, N'Cảm ơn đánh giá của bạn', CAST(N'2019-11-11T00:05:48.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[Binh_luan] OFF
SET IDENTITY_INSERT [dbo].[Don_hang] ON 

INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (14, 9, 4, CAST(3400000 AS Decimal(18, 0)), 3, 2, CAST(N'2019-11-07T16:17:12.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (15, 19, 4, CAST(2730000 AS Decimal(18, 0)), 4, 1, CAST(N'2019-11-07T22:16:59.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (16, 9, 4, CAST(1700000 AS Decimal(18, 0)), 2, 1, CAST(N'2019-11-07T22:17:03.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (17, 25, 4, CAST(4380000 AS Decimal(18, 0)), 3, 1, CAST(N'2019-11-07T22:17:06.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (18, 27, 4, CAST(3190000 AS Decimal(18, 0)), 2, 1, CAST(N'2019-11-07T22:17:11.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (19, 17, 4, CAST(3190000 AS Decimal(18, 0)), 2, 1, CAST(N'2019-11-08T09:29:20.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (20, 28, 4, CAST(8000000 AS Decimal(18, 0)), 2, 2, CAST(N'2019-11-08T09:29:47.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (21, 17, 4, CAST(9570000 AS Decimal(18, 0)), 2, 3, CAST(N'2019-11-08T14:01:04.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (22, 25, 6, CAST(43800000 AS Decimal(18, 0)), 2, 10, CAST(N'2019-11-08T14:09:51.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (23, 17, 6, CAST(6380000 AS Decimal(18, 0)), 1, 2, CAST(N'2019-11-08T14:17:01.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (24, 18, 4, CAST(9570000 AS Decimal(18, 0)), 1, 3, CAST(N'2019-11-11T18:47:51.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (25, 27, 4, CAST(3190000 AS Decimal(18, 0)), 1, 1, CAST(N'2019-11-11T18:49:56.367' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (26, 21, 4, CAST(10000000 AS Decimal(18, 0)), 1, 1, CAST(N'2019-11-11T18:50:01.547' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (27, 1022, 5, CAST(7800000 AS Decimal(18, 0)), 2, 2, CAST(N'2019-11-12T10:45:35.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Don_hang] ([Id_don_hang], [Id_san_pham], [Id_tai_khoan_Kh], [Thanh_tien], [Trang_thai], [So_luong], [Ngay_tao], [Id_nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich]) VALUES (28, 19, 5, CAST(2730000 AS Decimal(18, 0)), 1, 1, CAST(N'2019-11-12T10:54:48.267' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Don_hang] OFF
SET IDENTITY_INSERT [dbo].[San_pham] ON 

INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (9, N'Casio G-SHOCK DW-5600E-1VDF', N'/HinhAnh/files/GA-110SL-4A-247x300.png', 1, 1904000, 1700000, 1, N'Trung', CAST(N'2019-10-24T14:35:02.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Khả năng chống nước ở độ s&acirc;u 200 m&eacute;t v&agrave; hiển thị đ&egrave;n EL cực t&iacute;m thuận lợi được g&oacute;i gọn trong một thiết kế chắc chắn, mạnh mẽ v&agrave; thời trang.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n cực t&iacute;m ph&aacute;t quang điện tử<br style="box-sizing: border-box;" />
										Ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										B&aacute;o bằng flash<br style="box-sizing: border-box;" />
										Nh&aacute;y s&aacute;ng c&ugrave;ng với tiếng c&ograve;i k&ecirc;u để b&aacute;o giờ, cho t&iacute;n hiệu thời gian h&agrave;ng g</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 00&rsquo;00&Prime;00~59&rsquo;59&Prime;99 (cho 60 ph&uacute;t đầu ti&ecirc;n)<br style="box-sizing: border-box;" />
										1:00&rsquo;00~23:59&rsquo;59 (sau 60 ph&uacute;t)<br style="box-sizing: border-box;" />
										Đơn vị đo: 1/100 gi&acirc;y (cho 60 ph&uacute;t đầu ti&ecirc;n)<br style="box-sizing: border-box;" />
										1 gi&acirc;y (sau 60 ph&uacute;t)<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ đếm ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 gi&acirc;y đến 24 giờ (khoảng tăng 1 gi&acirc;y, khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										B&aacute;o giờ đa chức năng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2039)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 2 năm với pin CR2016</li>
								</ul>
							</article>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 48,9&times;42,8&times;13,4mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 53g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/ky-thuat-so/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Kỹ thuật số</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/199606/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">199606</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/3229/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">3229</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (17, N'Casio G-SHOCK GA-120-1A', N'/HinhAnh/files/GA-110MB-1A-247x300.png', 1, 3549000, 3190000, 1, NULL, CAST(N'2019-11-02T15:19:00.000' AS DateTime), N'<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
	<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em; font-family: Roboto, sans-serif;">
	&nbsp;</h4>
<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-size: 12.8px;">
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<br style="box-sizing: border-box; color: rgb(25, 25, 25); font-size: 12.8px;" />
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201108/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201108</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5229/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5229</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (18, N'Casio G-SHOCK GA-120-1A', N'/HinhAnh/files/ga-100cf-1a-247x300.png', 1, 3549000, 3190000, 1, NULL, CAST(N'2019-11-02T16:01:42.047' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Họa tiết c&aacute;c m&ocirc;n thể thao đua m&ocirc;-t&ocirc; của c&aacute;c mẫu kết hợp kim-số n&agrave;y chắc chắn sẽ đưa những mẫu n&agrave;y gia nhập l&agrave;ng thời trang.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Phụ kiện của mặt đồng hồ được tạo h&igrave;nh m&ocirc; phỏng phanh đĩa xe m&ocirc;-t&ocirc; v&agrave; c&aacute;c mối nối của kim đồng hồ được tạo h&igrave;nh c&aacute;c b&aacute;nh răng.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống từ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED<br style="box-sizing: border-box;" />
										C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi Giờ địa phương/Giờ thế giới</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/1000 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 99:59&rsquo;59.999&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị / giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần)), 1 mặt số (tốc độ)<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 3 năm với pin CR1220</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 55&times;51,2&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 73g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201108/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201108</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5229/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5229</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (19, N'Casio G-SHOCK GA-100-1A4', N'/HinhAnh/files/GA-110MB-1A-247x300.png', 1, 3032000, 2730000, 1, NULL, CAST(N'2019-11-02T16:06:18.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Giới thiệu bộ sưu tập c&aacute;c mẫu G-SHOCK mới, với mặt đồng hồ c&oacute; đường k&iacute;nh 35mm v&agrave; vỏ lớn, đem đến vẻ mạnh mẽ v&agrave; quyền năng.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					V&ograve;ng mặt số v&agrave; c&aacute;c vạch giờ nổi tạo độ s&acirc;u ba chiều, đem đến cho mặt đồng hồ nhiều đặc t&iacute;nh.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Thiết kế mặt đồng hồ ba mặt số phổ biến của G-SHOCK kết hợp một mặt số kim ở giữa với c&aacute;c mặt số kỹ thuật số ở hai b&ecirc;n.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Những chiếc đồng hồ n&agrave;y được thiết kế v&agrave; chế tạo đem đến khả năng chống va đập v&agrave; chống nước cũng như chống từ tuyệt vời.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					C&aacute;c n&uacute;t lớn c&ugrave;ng với bề mặt chống trượt kẻ ca-r&ocirc;, cho thao t&aacute;c nhanh ch&oacute;ng v&agrave; chắc chắn.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Đồng hồ bấm giờ 1/1000 gi&acirc;y, chỉ b&aacute;o tốc độ, Giờ thế giới, 5 chế độ b&aacute;o v&agrave; rất nhiều t&iacute;nh năng kh&aacute;c đem đến cho những mẫu n&agrave;y chức năng v&agrave; hiệu quả hoạt động m&agrave; kh&ocirc;ng chiếc đồng hồ n&agrave;o c&oacute; được.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống từ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED<br style="box-sizing: border-box;" />
										C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi Giờ địa phương/Giờ thế giới</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/1000 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 99:59&rsquo;59.999&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị / giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9)<br style="box-sizing: border-box;" />
										Chỉ b&aacute;o Mach (tốc độ vượt qu&aacute; 1225 đơn vị / giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần)), 1 mặt số (tốc độ)<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tu&ocirc;̉i thọ pin xấp xỉ: 2 năm với pin CR1220</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 55&times;51,2&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 70g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201002/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201002</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5081/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5081</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (20, N'Casio G-SHOCK GA-710GB-1A', N'/HinhAnh/files/ga-710gb-1a-247x300.png', 1, 4771000, 4290000, 1, NULL, CAST(N'2019-11-02T16:08:36.053' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Từ G-SHOCK, thương hiệu đồng hồ kh&ocirc;ng ngừng đặt ra c&aacute;c ti&ecirc;u chuẩn mới về độ bền đồng hồ hiển thị giờ hiện h&agrave;nh v&agrave; cho ra mắt mẫu m&aacute;y mới c&oacute; m&agrave;u sắc sặc sỡ.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Mẫu m&aacute;y cơ bản GA-700 sử dụng c&ocirc;ng nghệ đ&uacute;c nhựa ch&iacute;nh h&atilde;ng để c&oacute; thể tạo ra kim đồng hồ, mặt số v&agrave; vạch giờ bằng nhựa &aacute;nh kim. D&ograve;ng sản phẩm n&agrave;y mang đến h&igrave;nh ảnh của phụ kiện hoặc đồ thời trang m&agrave; c&aacute;c th&agrave;nh vi&ecirc;n của nh&oacute;m nhạc hip hop thường đeo.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Mẫu m&aacute;y m&agrave;u v&agrave;ng đen được phủ b&oacute;ng to&agrave;n bộ tạo ra vẻ ngo&agrave;i vừa ngầu vừa năng động.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&bull; Chiếu s&aacute;ng cực mạnh</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&bull; Đồng hồ bấm giờ c&oacute; cảnh b&aacute;o Thời gian đ&iacute;ch</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&bull; T&iacute;nh năng chuyển kim</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&bull; Kim loại (th&eacute;p kh&ocirc;ng gỉ) được sử dụng cho n&uacute;t bấm ph&iacute;a trước lớn</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&egrave;n LED (Chiếu s&aacute;ng cực mạnh)<br style="box-sizing: border-box;" />
						Thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ thế giới<br style="box-sizing: border-box;" />
						31 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi Giờ địa phương/Giờ thế giới</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
						Khả năng đo: 11:59 CH&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
						Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t &ndash; thứ hai<br style="box-sizing: border-box;" />
						Kh&aacute;c: cảnh b&aacute;o thời gian đ&iacute;ch, bắt đầu định giờ trực tiếp từ chế độ hiển thị giờ hiện h&agrave;nh</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
						Đơn vị đo: 1/10 gi&acirc;y<br style="box-sizing: border-box;" />
						Khoảng đếm ngược: 60 ph&uacute;t<br style="box-sizing: border-box;" />
						Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 đến 60 ph&uacute;t (khoảng tăng 1 ph&uacute;t)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;nh năng chuyển kim (Kim dịch chuyển qua một b&ecirc;n để kh&ocirc;ng che kết quả hiển thị tr&ecirc;n m&agrave;n h&igrave;nh kỹ thuật số).</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Định dạng giờ 12/24</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Bật/tắt &acirc;m nhấn n&uacute;t</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
						Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
						Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Tuổi thọ pin xấp xỉ: 5 năm với pin CR2016</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 57,5&times;53,4&times;18,4mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 72g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201702/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201702</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5522/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5522</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/anh-kim/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">&Aacute;nh kim</a>,&nbsp;<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (21, N'Casio G-SHOCK GST-B100-1A', N'/HinhAnh/files/gst-b100-1a-247x300.png', 1, 11116000, 10000000, 1, NULL, CAST(N'2019-11-02T16:12:37.677' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Từ G-SHOCK, chiếc đồng hồ lu&ocirc;n cố gắng đạt được độ bền đẹp, c&aacute;c mẫu đầu ti&ecirc;n của d&ograve;ng sản phẩm G-STEEL mang đến hiệu suất ghi thời gian theo định dạng đồng hồ kim.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Mặc d&ugrave; tất cả mặt đồng hồ của c&aacute;c mẫu n&agrave;y đều l&agrave; đồng hồ kim, nhưng ch&uacute;ng vẫn g&acirc;y ấn tượng với khả năng chống va chạm tương đương với mẫu G-SHOCK.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Mặt đồng hồ ở vị tr&iacute; 9 giờ c&oacute; đĩa xoay đa chức năng được chế tạo để m&ocirc; phỏng c&aacute;c c&aacute;nh quạt d&agrave;y của động cơ phản lực. Khi c&aacute;c c&aacute;nh n&agrave;y xoay, m&agrave;u đỏ đằng sau đĩa sẽ hiện ra v&agrave; sự thay đổi về m&agrave;u sắc n&agrave;y được sử dụng để th&ocirc;ng b&aacute;o mức pin cũng như c&agrave;i đặt bật/tắt b&aacute;o thức. C&aacute;c c&aacute;nh n&agrave;y cũng xoay ở chế độ Hiển thị giờ hiện h&agrave;nh v&agrave; Đồng hồ bấm giờ để biểu thị thời gian đ&atilde; tr&ocirc;i qua.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Cấu tr&uacute;c bảo vệ lớp mới bao phủ c&aacute;c bộ phận đệm bằng nhựa b&ecirc;n trong vỏ, đồng thời mang đến thiết kế thanh lịch hơn v&agrave; cảm gi&aacute;c vừa vặn hơn khi đeo tr&ecirc;n cổ tay. C&ocirc;ng nghệ gh&eacute;p mật độ cao c&oacute; khả năng tạo ra m&ocirc;-đun nhỏ gọn hơn v&agrave; thanh mảnh hơn. Điều n&agrave;y cũng g&oacute;p phần tạo n&ecirc;n cảm gi&aacute;c vừa vặn hơn khi đeo.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Những chiếc đồng hồ n&agrave;y được trang bị Bluetooth&reg; cho ph&eacute;p thiết bị kết nối với điện thoại th&ocirc;ng minh khi bấm n&uacute;t. Đồng hồ c&ograve;n c&oacute; khả năng tải th&ocirc;ng tin về thời gian từ m&aacute;y chủ thời gian tr&ecirc;n internet. Nhờ đ&oacute;, bạn c&oacute; thể xem giờ hiện h&agrave;nh ch&iacute;nh x&aacute;c d&ugrave; ở bất kỳ đ&acirc;u tr&ecirc;n thế giới.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					C&aacute;c chức năng kh&aacute;c bao gồm Tough Solar kết hợp với c&ocirc;ng nghệ tiết kiệm năng lượng gốc của CASIO để cung cấp năng lượng ổn định, cho ph&eacute;p đ&egrave;n LED c&oacute; độ s&aacute;ng cao v&agrave; hiển thị Giờ thế giới hai v&ograve;ng quay.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Trong khi GST-B100D c&oacute; d&acirc;y đeo bằng th&eacute;p kh&ocirc;ng gỉ đơn giản th&igrave; GST-B100 c&oacute; vỏ chắc chắn v&agrave; d&acirc;y đeo bằng uretan.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Chức năng Kết nối điện thoại th&ocirc;ng minh<br style="box-sizing: border-box;" />
						(khoảng 300 th&agrave;nh phố Giờ thế giới, b&aacute;o thức, bấm giờ, hiệu chỉnh vị tr&iacute; kim, chuyển đổi giờ địa phương, phone finder)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Chỉ b&aacute;o mức pin</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Cấu tr&uacute;c bảo vệ lớp mới</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tough Solar</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Giờ thế giới hai v&ograve;ng quay (Chỉ b&aacute;o đồng thời thời gian hiện tại ở hai địa đi&ecirc;̉m.)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Đ&egrave;n LED c&oacute; độ s&aacute;ng cao</li>
				</ul>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa / Th&eacute;p kh&ocirc;ng gỉ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Neobrite</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								N&uacute;m vặn kh&oacute;a bằng v&iacute;t</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Chạy bằng năng lượng mặt trời</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đ&egrave;n LED (Chiếu s&aacute;ng cực mạnh)<br style="box-sizing: border-box;" />
									Ph&aacute;t s&aacute;ng sau</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth&reg;)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Chế độ giờ k&eacute;p (Chuyển đổi giờ địa phương)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đồng hồ bấm giờ 1 gi&acirc;y<br style="box-sizing: border-box;" />
									Khả năng đo: 11:59 CH&rsquo;59<br style="box-sizing: border-box;" />
									Chế độ đo: ngắt giờ</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
									Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
									Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
									Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									B&aacute;o thức h&agrave;ng ng&agrave;y</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Chỉ b&aacute;o mức pin</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Tiết kiệm năng lượng (c&aacute;c kim dừng để tiết kiệm năng lượng khi để đồng hồ trong b&oacute;ng tối)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Hiển thị ng&agrave;y</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Ng&agrave;y th&aacute;ng</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
									Đồng hồ kim: 3 kim (giờ, ph&uacute;t (kim di chuyển 10 gi&acirc;y một lần), gi&acirc;y),<br style="box-sizing: border-box;" />
									3 mặt số (giờ v&agrave; ph&uacute;t đồng hồ k&eacute;p, m&agrave;n h&igrave;nh đồng hồ k&eacute;p biểu thị 24h, ng&agrave;y)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng (kh&ocirc;ng c&oacute; chức năng Mobile Link)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Thời gian hoạt động xấp xỉ của pin:<br style="box-sizing: border-box;" />
									5 th&aacute;ng đối với pin sạc lại được (thời gian hoạt động nếu sử dụng b&igrave;nh thường m&agrave; kh&ocirc;ng tiếp x&uacute;c với &aacute;nh s&aacute;ng sau khi sạc)<br style="box-sizing: border-box;" />
									24 th&aacute;ng đối với pin sạc lại được (thời gian hoạt động khi được giữ trong b&oacute;ng tối ho&agrave;n to&agrave;n với chức năng tiết kiệm năng lượng được bật sau khi sạc đầy)</li>
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 58,1&times;53,8&times;14,1mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 101g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/tuong-tu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Tương tự</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-chinh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG CH&Iacute;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-chinh/chay-bang-nang-luong-mat-troi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chạy bằng năng lượng mặt trời</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-kep/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ k&eacute;p</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/mobile-link-ket-noi-khong-day-su-dung-bluetoothr/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth(R))</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a>,&nbsp;<a href="https://www.g-shock.com.vn/vo/neobrite/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Neobrite</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201709/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201709</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5513/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5513</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/g-steel/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-STEEL</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (22, N'Casio G-SHOCK GA-1000-1B', N'/HinhAnh/files/ga-140bmc-1a-247x300.png', 1, 7779000, 7000000, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:16:29.000' AS DateTime), N'<div class="price-wrapper" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	(Bạn đ&atilde; tiết kiệm được:&nbsp;<span class="woocommerce-Price-amount amount" style="box-sizing: border-box; white-space: nowrap; color: rgb(17, 17, 17); font-weight: bold;">779.000</span>)</div>
<div class="product-short-description" style="box-sizing: border-box; background-color: rgb(245, 245, 245); border: 1px solid rgb(235, 235, 235); padding: 10px 10px 0px; margin-bottom: 10px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
		Thuộc d&ograve;ng GRAVITYMASTER phi c&ocirc;ng với &ldquo;Cảm biến đ&ocirc;i&rdquo; la b&agrave;n v&agrave; nhiệt kế gi&uacute;p bạn dễ d&agrave;ng x&aacute;c định phương hướng v&agrave; nhiệt độ b&ecirc;n ngo&agrave;i. 2 kim dạ quang gi&uacute;p bạn dễ d&agrave;ng xem giờ trong đ&ecirc;m kết hợp với biểu tượng m&aacute;y bay tr&ecirc;n mặt đồng hồ ấn tượng v&agrave; phong c&aacute;ch rất ph&ugrave; hợp cho những ai y&ecirc;u th&iacute;ch bầu trời.</p>
</div>
<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">CẢM BIẾN Đ&Ocirc;I</span></p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					M&acirc;̃u mới này là m&acirc;̃u đ&acirc;̀u ti&ecirc;n trong dòng đồng hồ GRAVITYMASTER được trang bị khả năng la bàn s&ocirc;́, tạo ra m&ocirc;̣t loại đ&ocirc;̀ng h&ocirc;̀ hoàn toàn phù hợp với nhu c&acirc;̀u của nh&acirc;n vi&ecirc;n hàng kh&ocirc;ng hi&ecirc;̣n đại cả v&ecirc;̀ chức năng l&acirc;̃n hình thức. Nh&acirc;́n nút 9 giờ ở ch&ecirc;́ đ&ocirc;̣ b&acirc;́t kỳ sẽ ngay l&acirc;̣p tức chuy&ecirc;̉n sang Ch&ecirc;́ đ&ocirc;̣ la bàn s&ocirc;́ và nh&acirc;́n nút 8 giờ sẽ trở lại ch&ecirc;́ đ&ocirc;̣ trước Ch&ecirc;́ đ&ocirc;̣ la bàn s&ocirc;́. Bạn có th&ecirc;̉ lấy các chỉ s&ocirc;́ v&ecirc;̀ hướng li&ecirc;n tục trong 20 gi&acirc;y, trong thời gian đó kim gi&acirc;y chỉ v&ecirc;̀ hướng bắc, chỉ báo hướng đúng hi&ecirc;̉n thị ở màn hình phía tr&ecirc;n và giá trị góc hướng hi&ecirc;̉n thị ở màn hình phía dưới. B&ocirc;̣ nhớ phương vị cho phép bạn tạm thời lưu trữ và hi&ecirc;̉n thị chỉ s&ocirc;́ v&ecirc;̀ hướng đ&ecirc;̉ có th&ecirc;̉ sử dụng làm giá trị tham chi&ecirc;́u khi l&acirc;́y chỉ s&ocirc;́ la bàn s&ocirc;́ ti&ecirc;́p theo. Các tính năng khác bao g&ocirc;̀m đo nhi&ecirc;̣t đ&ocirc;̣, s&ocirc;́ cỡ lớn và kim dày giúp bạn d&ecirc;̃ đọc. Lớp phủ tr&ecirc;n đ&acirc;̀u kim gi&acirc;y và vạch phút phản ứng với &aacute;nh sáng đèn cực tím của đ&ocirc;̀ng h&ocirc;̀ giúp bạn d&ecirc;̃ đọc trong bóng t&ocirc;́i.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<i style="box-sizing: border-box;">* H&igrave;nh thức chiếu s&aacute;ng của Đ&egrave;n Neon phụ thuộc v&agrave;o mẫu đồng hồ.</i></p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa / Th&eacute;p kh&ocirc;ng gỉ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Neobrite</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng / Mặt k&iacute;nh h&igrave;nh cầu</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&egrave;n Neon (Đ&egrave;n LED cực t&iacute;m)<br style="box-sizing: border-box;" />
						C&ocirc;ng tắc đ&egrave;n tự đ&ocirc;̣ng, thời lượng chi&ecirc;́u s&aacute;ng c&oacute; th&ecirc;̉ lựa chọn, ph&aacute;t s&aacute;ng sau</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						La b&agrave;n số (NORTH)<br style="box-sizing: border-box;" />
						Chỉ b&aacute;o kim hướng bắc (Đo li&ecirc;n tục trong 20 gi&acirc;y)<br style="box-sizing: border-box;" />
						Đo v&agrave; hiển thị hướng dưới dạng một trong 16 điểm<br style="box-sizing: border-box;" />
						Khoảng đo: 0 đến 359&deg;<br style="box-sizing: border-box;" />
						Đơn vị đo: 1&deg;<br style="box-sizing: border-box;" />
						Hiệu chỉnh hai chiều<br style="box-sizing: border-box;" />
						Điều chỉnh độ lệch từ<br style="box-sizing: border-box;" />
						B&ocirc;̣ nhớ phương vị</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Nhiệt kế<br style="box-sizing: border-box;" />
						Khoảng hiển thị: &ndash;10 đến 60&deg;C (14 đến 140&deg;F)<br style="box-sizing: border-box;" />
						Đơn vị hiển thị: 0,1&deg;C (0,2&deg;F)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ thế giới<br style="box-sizing: border-box;" />
						31 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
						Khả năng đo: 23:59&rsquo;59,99&rdquo;<br style="box-sizing: border-box;" />
						Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ đếm ngược<br style="box-sizing: border-box;" />
						Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
						Khoảng đếm ngược: 60 ph&uacute;t<br style="box-sizing: border-box;" />
						Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 đến 60 ph&uacute;t (khoảng tăng 1 ph&uacute;t)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Định dạng giờ 12/24</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						B&aacute;o pin yếu</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Bật/tắt &acirc;m nhấn n&uacute;t</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
						Đồng hồ kim: 3 kim (giờ, ph&uacute;t (kim di chuyển 10 gi&acirc;y một lần), gi&acirc;y)<br style="box-sizing: border-box;" />
						Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Tu&ocirc;̉i thọ pin xấp xỉ: 2 năm với pin SR927W X 2</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 50,8&times;52,1&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 88g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/do-nhiet-do/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đo nhiệt độ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/la-ban/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">La b&agrave;n</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a>,&nbsp;<a href="https://www.g-shock.com.vn/vo/neobrite/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Neobrite</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201302/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201302</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5302/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5302</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/gravitymaster/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(196, 85, 0); text-decoration-line: none; outline-width: 0px;">GRAVITYMASTER</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (23, N'Casio G-SHOCK GAS-100G-1A', N'/HinhAnh/files/ae-1200whd-1av-247x300.png', 1, 4865000, 4380000, 1, NULL, CAST(N'2019-11-02T16:18:19.437' AS DateTime), N'<h1 class="product-title entry-title" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizespeed; line-height: 1.3; font-family: Roboto, sans-serif;">
	&nbsp;</h1>
<div class="product-short-description" style="box-sizing: border-box; background-color: rgb(245, 245, 245); border: 1px solid rgb(235, 235, 235); padding: 10px 10px 0px; margin-bottom: 10px; color: rgb(25, 25, 25); font-size: 12.8px;">
	<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
		GAS-100G-1A với thiết kế Gold Black sang trọng được trang bị c&ocirc;ng nghệ pin năng lượng &aacute;nh s&aacute;ng Tough Solar đẳng cấp của CASIO.</p>
</div>
<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
	<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
<h1 class="product-title entry-title" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizespeed; line-height: 1.3; font-family: Roboto, sans-serif;">
	&nbsp;</h1>
<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-size: 12.8px;">
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<br style="box-sizing: border-box; color: rgb(25, 25, 25); font-size: 12.8px;" />
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					H&igrave;nh ảnh sản phẩm</h3>
				<div class="gallery galleryid-5048 gallery-columns-1 gallery-size-large" id="gallery-2" style="box-sizing: border-box; width: auto; display: flex; flex-flow: row wrap; padding: 0px; margin-left: -15px; margin-right: -15px;">
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-1024x683.jpg 1024w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-300x200.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-768x512.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-197x131.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-510x340.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A.jpg 1200w" height="680" sizes="(max-width: 1020px) 100vw, 1020px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-1024x683.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-1024x683.jpg 1024w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-300x200.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-768x512.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-197x131.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-510x340.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A.jpg 1200w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="1020" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2.jpg 764w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-150x150.jpg 150w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-300x300.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-197x197.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-510x510.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-100x100.jpg 100w" height="764" sizes="(max-width: 764px) 100vw, 764px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2.jpg 764w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-150x150.jpg 150w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-300x300.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-197x197.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-510x510.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/GAS-100G-1A-2-100x100.jpg 100w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="764" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5.jpg 655w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-300x221.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-197x145.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-510x375.jpg 510w" height="482" sizes="(max-width: 655px) 100vw, 655px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5.jpg 655w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-300x221.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-197x145.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-5-510x375.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="655" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4.jpg 900w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-300x222.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-768x569.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-197x146.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-510x378.jpg 510w" height="667" sizes="(max-width: 900px) 100vw, 900px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4.jpg 900w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-300x222.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-768x569.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-197x146.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-4-510x378.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="900" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon portrait" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3.jpg 656w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-235x300.jpg 235w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-188x240.jpg 188w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-510x651.jpg 510w" height="837" sizes="(max-width: 656px) 100vw, 656px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3.jpg 656w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-235x300.jpg 235w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-188x240.jpg 188w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-3-510x651.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="656" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2.jpg 781w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-300x201.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-768x515.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-197x132.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-510x342.jpg 510w" height="524" sizes="(max-width: 781px) 100vw, 781px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2.jpg 781w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-300x201.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-768x515.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-197x132.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-2-510x342.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="781" /></a></div>
					</figure>
					<figure class="gallery-item" style="box-sizing: border-box; margin: 0px; position: relative; padding: 0px 15px 30px; width: 1124.16px; max-width: 100%; flex-basis: 100%;">
						<div class="gallery-icon landscape" style="box-sizing: border-box;">
							<a href="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a.jpg" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;"><img alt="" class="attachment-large size-large lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a.jpg 900w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-300x194.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-768x496.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-197x127.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-510x329.jpg 510w" height="581" sizes="(max-width: 900px) 100vw, 900px" src="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a.jpg 900w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-300x194.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-768x496.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-197x127.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2017/08/gas-100g-1a-510x329.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" width="900" /></a></div>
					</figure>
				</div>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Từ G-SHOCK, thương hiệu đồng hồ kh&ocirc;ng ngừng đặt ra c&aacute;c ti&ecirc;u chuẩn mới về độ bền đồng hồ hiển thị giờ hiện h&agrave;nh, đ&atilde; cho ra mắt mẫu đồng hồ mới dựa tr&ecirc;n mẫu vỏ lớn Tough Solar GAS-100.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					C&aacute;c biến thể từ một thiết kế m&agrave;u đen cơ bản được tạo ra với ba đường gờ kh&aacute;c nhau. GAS-100 c&oacute; đường gờ bằng th&eacute;p kh&ocirc;ng gỉ mang lại thiết kế ti&ecirc;u chuẩn ph&ugrave; hợp với nhiều phong c&aacute;ch thời trang, trong khi GAS-100G c&oacute; đường gờ bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; bề mặt mạ ion v&agrave;ng để mang lại vẻ đẹp nổi bật. GAS-100B c&oacute; đường gờ bằng nh&ocirc;m đen để mang đến thiết kế s&agrave;nh điệu.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&aacute; tr&igrave;nh đ&uacute;c khu&ocirc;n độc đ&aacute;o của CASIO được sử dụng để chế tạo c&aacute;c vạch giờ tr&aacute;ng phủ kết tinh, kết hợp với đường gờ bằng kim loại để tạo n&ecirc;n kiểu d&aacute;ng sang trọng.</p>
				<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tough Solar</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						T&iacute;nh năng chuyển kim</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Đ&egrave;n Chiếu s&aacute;ng cực mạnh (k&eacute;p) chiếu s&aacute;ng mặt đồng hồ v&agrave; m&agrave;n h&igrave;nh số</li>
				</ul>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa / Th&eacute;p kh&ocirc;ng gỉ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Hai đ&egrave;n LED<br style="box-sizing: border-box;" />
						Đ&egrave;n LED cho mặt đồng hồ (Đ&egrave;n LED tự động ho&agrave;n to&agrave;n, Chiếu s&aacute;ng cực mạnh, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau)<br style="box-sizing: border-box;" />
						Đ&egrave;n LED cực t&iacute;m cho m&agrave;n h&igrave;nh số (Đ&egrave;n LED tự động ho&agrave;n to&agrave;n, Chiếu s&aacute;ng cực mạnh, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Chạy bằng năng lượng mặt trời</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ thế giới<br style="box-sizing: border-box;" />
						31 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
						Khả năng đo: 59&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
						Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t &ndash; thứ hai</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
						Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
						Khoảng đếm ngược: 100 ph&uacute;t<br style="box-sizing: border-box;" />
						Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 gi&acirc;y đến 100 ph&uacute;t (khoảng tăng 1 gi&acirc;y, khoảng tăng 1 ph&uacute;t)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;nh năng chuyển kim (Kim dịch chuyển qua một b&ecirc;n để kh&ocirc;ng che kết quả hiển thị tr&ecirc;n m&agrave;n h&igrave;nh kỹ thuật số).</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Chỉ b&aacute;o mức pin</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Tiết kiệm năng lượng (m&agrave;n h&igrave;nh trống để tiết kiệm năng lượng khi để đồng hồ trong b&oacute;ng tối)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Định dạng giờ 12/24</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Bật/tắt &acirc;m nhấn n&uacute;t</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
						Đồng hồ kim: 2 kim (giờ, ph&uacute;t)<br style="box-sizing: border-box;" />
						Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Thời gian hoạt động xấp xỉ của pin:<br style="box-sizing: border-box;" />
						8 th&aacute;ng đối với pin sạc lại được (thời gian hoạt động nếu sử dụng b&igrave;nh thường m&agrave; kh&ocirc;ng tiếp x&uacute;c với &aacute;nh s&aacute;ng sau khi sạc)<br style="box-sizing: border-box;" />
						19 th&aacute;ng đối với pin sạc lại được (thời gian hoạt động khi được giữ trong b&oacute;ng tối ho&agrave;n to&agrave;n với chức năng tiết kiệm năng lượng được bật sau khi sạc đầy)</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 55,1&times;52,5&times;16,7mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 76g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201708/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201708</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5445/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5445</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/anh-kim/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">&Aacute;nh kim</a>,&nbsp;<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-chinh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG CH&Iacute;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-chinh/chay-bang-nang-luong-mat-troi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chạy bằng năng lượng mặt trời</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (24, N'Casio G-SHOCK GA-1000-1B', N'/HinhAnh/files/prt-b50-2-247x300.png', 1, 7779000, 7000000, 1, NULL, CAST(N'2019-11-02T16:20:40.403' AS DateTime), N'<div class="product-short-description" style="box-sizing: border-box; background-color: rgb(245, 245, 245); border: 1px solid rgb(235, 235, 235); padding: 10px 10px 0px; margin-bottom: 10px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
		Thuộc d&ograve;ng GRAVITYMASTER phi c&ocirc;ng với &ldquo;Cảm biến đ&ocirc;i&rdquo; la b&agrave;n v&agrave; nhiệt kế gi&uacute;p bạn dễ d&agrave;ng x&aacute;c định phương hướng v&agrave; nhiệt độ b&ecirc;n ngo&agrave;i. 2 kim dạ quang gi&uacute;p bạn dễ d&agrave;ng xem giờ trong đ&ecirc;m kết hợp với biểu tượng m&aacute;y bay tr&ecirc;n mặt đồng hồ ấn tượng v&agrave; phong c&aacute;ch rất ph&ugrave; hợp cho những ai y&ecirc;u th&iacute;ch bầu trời.</p>
</div>
<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">CẢM BIẾN Đ&Ocirc;I</span></p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					M&acirc;̃u mới này là m&acirc;̃u đ&acirc;̀u ti&ecirc;n trong dòng đồng hồ GRAVITYMASTER được trang bị khả năng la bàn s&ocirc;́, tạo ra m&ocirc;̣t loại đ&ocirc;̀ng h&ocirc;̀ hoàn toàn phù hợp với nhu c&acirc;̀u của nh&acirc;n vi&ecirc;n hàng kh&ocirc;ng hi&ecirc;̣n đại cả v&ecirc;̀ chức năng l&acirc;̃n hình thức. Nh&acirc;́n nút 9 giờ ở ch&ecirc;́ đ&ocirc;̣ b&acirc;́t kỳ sẽ ngay l&acirc;̣p tức chuy&ecirc;̉n sang Ch&ecirc;́ đ&ocirc;̣ la bàn s&ocirc;́ và nh&acirc;́n nút 8 giờ sẽ trở lại ch&ecirc;́ đ&ocirc;̣ trước Ch&ecirc;́ đ&ocirc;̣ la bàn s&ocirc;́. Bạn có th&ecirc;̉ lấy các chỉ s&ocirc;́ v&ecirc;̀ hướng li&ecirc;n tục trong 20 gi&acirc;y, trong thời gian đó kim gi&acirc;y chỉ v&ecirc;̀ hướng bắc, chỉ báo hướng đúng hi&ecirc;̉n thị ở màn hình phía tr&ecirc;n và giá trị góc hướng hi&ecirc;̉n thị ở màn hình phía dưới. B&ocirc;̣ nhớ phương vị cho phép bạn tạm thời lưu trữ và hi&ecirc;̉n thị chỉ s&ocirc;́ v&ecirc;̀ hướng đ&ecirc;̉ có th&ecirc;̉ sử dụng làm giá trị tham chi&ecirc;́u khi l&acirc;́y chỉ s&ocirc;́ la bàn s&ocirc;́ ti&ecirc;́p theo. Các tính năng khác bao g&ocirc;̀m đo nhi&ecirc;̣t đ&ocirc;̣, s&ocirc;́ cỡ lớn và kim dày giúp bạn d&ecirc;̃ đọc. Lớp phủ tr&ecirc;n đ&acirc;̀u kim gi&acirc;y và vạch phút phản ứng với &aacute;nh sáng đèn cực tím của đ&ocirc;̀ng h&ocirc;̀ giúp bạn d&ecirc;̃ đọc trong bóng t&ocirc;́i.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<i style="box-sizing: border-box;">* H&igrave;nh thức chiếu s&aacute;ng của Đ&egrave;n Neon phụ thuộc v&agrave;o mẫu đồng hồ.</i></p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa / Th&eacute;p kh&ocirc;ng gỉ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Neobrite</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng / Mặt k&iacute;nh h&igrave;nh cầu</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&egrave;n Neon (Đ&egrave;n LED cực t&iacute;m)<br style="box-sizing: border-box;" />
						C&ocirc;ng tắc đ&egrave;n tự đ&ocirc;̣ng, thời lượng chi&ecirc;́u s&aacute;ng c&oacute; th&ecirc;̉ lựa chọn, ph&aacute;t s&aacute;ng sau</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						La b&agrave;n số (NORTH)<br style="box-sizing: border-box;" />
						Chỉ b&aacute;o kim hướng bắc (Đo li&ecirc;n tục trong 20 gi&acirc;y)<br style="box-sizing: border-box;" />
						Đo v&agrave; hiển thị hướng dưới dạng một trong 16 điểm<br style="box-sizing: border-box;" />
						Khoảng đo: 0 đến 359&deg;<br style="box-sizing: border-box;" />
						Đơn vị đo: 1&deg;<br style="box-sizing: border-box;" />
						Hiệu chỉnh hai chiều<br style="box-sizing: border-box;" />
						Điều chỉnh độ lệch từ<br style="box-sizing: border-box;" />
						B&ocirc;̣ nhớ phương vị</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Nhiệt kế<br style="box-sizing: border-box;" />
						Khoảng hiển thị: &ndash;10 đến 60&deg;C (14 đến 140&deg;F)<br style="box-sizing: border-box;" />
						Đơn vị hiển thị: 0,1&deg;C (0,2&deg;F)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ thế giới<br style="box-sizing: border-box;" />
						31 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
						Khả năng đo: 23:59&rsquo;59,99&rdquo;<br style="box-sizing: border-box;" />
						Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ đếm ngược<br style="box-sizing: border-box;" />
						Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
						Khoảng đếm ngược: 60 ph&uacute;t<br style="box-sizing: border-box;" />
						Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 đến 60 ph&uacute;t (khoảng tăng 1 ph&uacute;t)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Định dạng giờ 12/24</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						B&aacute;o pin yếu</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Bật/tắt &acirc;m nhấn n&uacute;t</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
						Đồng hồ kim: 3 kim (giờ, ph&uacute;t (kim di chuyển 10 gi&acirc;y một lần), gi&acirc;y)<br style="box-sizing: border-box;" />
						Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Tu&ocirc;̉i thọ pin xấp xỉ: 2 năm với pin SR927W X 2</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 50,8&times;52,1&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 88g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/do-nhiet-do/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đo nhiệt độ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/la-ban/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">La b&agrave;n</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a>,&nbsp;<a href="https://www.g-shock.com.vn/vo/neobrite/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Neobrite</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201302/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201302</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5302/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5302</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/gravitymaster/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">GRAVITYMASTER</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (25, N'Casio G-SHOCK GAS-100G-1A', N'/HinhAnh/files/GA-400CS-7A-247x300.png', 1, 4865000, 4380000, 1, NULL, CAST(N'2019-11-02T16:22:36.180' AS DateTime), N'<div class="product-short-description" style="box-sizing: border-box; background-color: rgb(245, 245, 245); border: 1px solid rgb(235, 235, 235); padding: 10px 10px 0px; margin-bottom: 10px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
		AS-100G-1A với thiết kế Gold Black sang trọng được trang bị c&ocirc;ng nghệ pin năng lượng &aacute;nh s&aacute;ng Tough Solar đẳng cấp của CASIO.</p>
</div>
<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; MinhAS-100G-1A với thiết kế Gold Black sang trọng được trang bị c&ocirc;ng nghệ pin năng lượng &aacute;nh s&aacute;ng Tough Solar đẳng cấp của CASIO.
		<div id="product_misc" style="box-sizing: border-box; font-size: 12.8px;">
			<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
				<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
			<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
				<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
					1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
				<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
					Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
				<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
					Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
				<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
					S&aacute;ch hướng dẫn sử dụng.</li>
				<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
					<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
			</ul>
		</div>
		<span style="font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span>
		<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; font-size: 12.8px;">
			<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
				<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
			<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
				<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
		</ul>
	</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Đồng hồ vỏ lớn, kết hợp kim-số GA-110 c&oacute; một d&aacute;ng vẻ mới với c&aacute;c chi tiết kim loại được bổ sung, đem đến cảm gi&aacute;c c&ocirc;ng nghiệp cho mặt đồng hồ. Thiết kế mới n&agrave;y sử dụng kim loại s&aacute;ng l&agrave;m vạch giờ v&agrave; mặt số, b&ecirc;n cạnh kim giờ v&agrave; kim ph&uacute;t.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống từ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED<br style="box-sizing: border-box;" />
										C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi th&agrave;nh phố Giờ chuẩn/Giờ thế giới</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/1000 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 99:59&rsquo;59,999&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị / giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ đếm ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần)), 1 mặt số (tốc độ)<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 2 năm với pin CR1220</li>
								</ul>
							</article>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 55&times;51,2&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 72g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5146/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5146</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201101/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201101</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (26, N'Casio G-SHOCK GA-100CG-2A', N'/HinhAnh/files/eqb-1000tr-2a-247x300.png', 1, 4160000, 4000000, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:24:00.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Từ G-SHOCK, thương hiệu đồng hồ kh&ocirc;ng ngừng đặt ra c&aacute;c ti&ecirc;u chuẩn mới về độ bền của đồng hồ hiển thị giờ hiện h&agrave;nh v&agrave; cho ra đời Cracked Pattern l&agrave; sự kết hợp giữa mặt đồng hồ lớn điển h&igrave;nh v&agrave; tinh thần mạnh mẽ của G-SHOCK. Nhờ &aacute;p dụng c&ocirc;ng nghệ mới, vỏ v&agrave; d&acirc;y đeo được thiết kế với bề mặt nh&aacute;m. Lớp phủ được mạ b&ecirc;n tr&ecirc;n vỏ nhựa, sau đ&oacute; được đưa v&agrave;o m&aacute;y cắt laser để tạo n&ecirc;n bề mặt c&oacute; c&aacute;c r&atilde;nh nhỏ v&agrave; vết l&otilde;m nhỏ.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Mẫu cơ bản c&oacute; vỏ lớn v&agrave; mạnh mẽ GA-100. Phần ph&acirc;n t&aacute;ch giữa c&aacute;c m&agrave;n h&igrave;nh kỹ thuật số cũng được thiết kế với vết nứt rạn.</p>
				<ul>
					<li style="box-sizing: border-box; margin-bottom: 0.6em;">
						Đồng hồ bấm giờ 1/1000 gi&acirc;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em;">
						Đo tốc độ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em;">
						Chống từ</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống từ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED<br style="box-sizing: border-box;" />
										C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi Giờ địa phương/Giờ thế giới</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/1000 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 99:59&rsquo;59.999&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị / giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9)<br style="box-sizing: border-box;" />
										Chỉ b&aacute;o Mach (tốc độ vượt qu&aacute; 1225 đơn vị / giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần)), 1 mặt số (tốc độ)<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tu&ocirc;̉i thọ pin xấp xỉ: 2 năm với pin CR1220</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 55&times;51,2&times;16,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 72g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201612/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201612</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5081/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5081</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/xanh-lam-lam-nhe/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Xanh lam, Lam nhẹ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/cac-mau-mau-dac-biet/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">C&Aacute;C MẪU M&Agrave;U ĐẶC BIỆT</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/g-shock/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SHOCK</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (27, N'Casio BABY-G BA-110-7A3', N'/HinhAnh/files/ba-110-7a3-247x300.png', 2, 3549000, 3190000, 1, NULL, CAST(N'2019-11-02T16:33:47.333' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<article id="classic" style="box-sizing: border-box;">
					Những mẫu mới n&agrave;y g&oacute;i gọn c&aacute;c thiết kế của d&ograve;ng G-SHOCK GA-110 được ưa chuộng v&agrave;o mẫu Baby-G nhỏ gọn để c&oacute; được hiệu quả h&igrave;nh ảnh ấn tượng về c&aacute;c thiết kế nhỏ xinh, ph&ugrave; hợp với cổ tay ph&aacute;i nữ.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Mặt đồng hồ chia lớp đa chiều được trang tr&iacute; bằng m&agrave;u kim loại th&uacute; vị gi&uacute;p những chiếc đồng hồ n&agrave;y cũng như c&aacute;c phụ kiện đẹp hơn nhiều.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					BA-110 l&agrave; thiết kế s&agrave;nh điệu d&agrave;nh cho người lớn, được chế tạo bằng c&aacute;ch phủ m&agrave;u trắng cơ bản v&agrave; sử dụng m&agrave;u kim loại cho vạch giờ.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Tất cả những chiếc đồng hồ n&agrave;y được thiết kế v&agrave; chế tạo sao cho lu&ocirc;n nổi bật khi được đeo.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					&nbsp;</article>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 23:59&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Bật/tắt &acirc;m nhấn n&uacute;t</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 2 năm với pin SR726W &times; 2</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 46,3&times;43,4&times;15,8mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 45g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201310/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201310</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5338/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5338</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/trang-trong-suot/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Trắng, trong suốt</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ba-110/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&Ograve;NG BA-110</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (28, N'Casio BABY-G BA-110PP-1A', N'/HinhAnh/files/ba-110pp-1a-247x300.png', 2, 4230000, 4000000, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:34:51.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Giới thiệu c&aacute;c m&agrave;u mới cho D&ograve;ng Punching Pattern BA-110 được ưa chuộng. C&aacute;c mẫu m&aacute;y n&agrave;y c&oacute; m&agrave;u sắc thể thao giống như m&agrave;u được sử dụng cho gi&agrave;y thể thao hợp thời trang v&agrave; c&aacute;c đồ thể thao kh&aacute;c. M&agrave;u đen v&agrave; xanh neon, m&agrave;u xanh neon v&agrave; xanh lam nhạt, m&agrave;u trắng v&agrave; hồng cam tạo n&ecirc;n d&ograve;ng sản phẩm s&agrave;nh điệu v&agrave; phong c&aacute;ch.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					D&acirc;y đeo được đục lỗ để tạo n&ecirc;n h&igrave;nh ảnh tương tự như tấm lưới d&ugrave;ng trong mũ lưỡi trai, t&uacute;i x&aacute;ch, &aacute;o thun v&agrave; c&aacute;c đồ thời trang thể thao kh&aacute;c. Thiết kế n&agrave;y cũng cho ph&eacute;p kh&ocirc;ng kh&iacute; lưu th&ocirc;ng để l&agrave;m m&aacute;t cổ tay trong khi chơi thể thao.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Nhờ sự kết hợp ho&agrave;n hảo giữa thiết kế đẹp mắt v&agrave; chức năng tốt, c&aacute;c mẫu m&aacute;y n&agrave;y vừa l&agrave; phụ kiện thời trang, vừa l&agrave; đồ thể thao c&oacute; gi&aacute; trị.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Neobrite</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 23:59&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Bật/tắt &acirc;m nhấn n&uacute;t</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 2 năm với pin SR726W &times; 2</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 46,3&times;43,4&times;15,8mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 43g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201702/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201702</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5338/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5338</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a>,&nbsp;<a href="https://www.g-shock.com.vn/mau-sac/xanh-lam-lam-nhe/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Xanh lam, Lam nhẹ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ba-110/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&Ograve;NG BA-110</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a>,&nbsp;<a href="https://www.g-shock.com.vn/vo/neobrite/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Neobrite</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (29, N'Casio BABY-G BGA-130-4B', N'/HinhAnh/files/bga-130-4b-247x300.png', 2, 3102000, 3000000, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:42:25.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Đ&acirc;y l&agrave; bộ sưu tập mới tụ hội một số mẫu Baby-G c&oacute; vẻ ngo&agrave;i s&agrave;nh điệu nhất.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					C&aacute;c số được thiết kế tạo hiệu ứng đa chiều khiến ch&uacute;ng tr&ocirc;ng như thể c&oacute; nhiều lớp chồng l&ecirc;n nhau. C&aacute;c h&igrave;nh tr&aacute;i tim c&agrave;ng khiến thiết kế tổng thể trở n&ecirc;n đ&aacute;ng y&ecirc;u hơn.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Nhấn một n&uacute;t v&agrave; đ&egrave;n cực t&iacute;m bật s&aacute;ng, t&ocirc; điểm cho mặt v&agrave; kim đồng hồ với một mảng m&agrave;u l&ocirc;i cuốn. Chữ số, mặt số v&agrave; kim của c&aacute;c mẫu BGA-130/131 mới được phủ mực huỳnh quang đặc biệt, sẽ ph&aacute;t s&aacute;ng khi đ&egrave;n LED cực t&iacute;m của đồng hồ bật. Tất cả những điều n&agrave;y cộng với Giờ thế giới v&agrave; khả năng chống nước ở độ s&acirc;u 100 m&eacute;t khiến những chiếc đồng hồ n&agrave;y vừa c&oacute; t&iacute;nh năng cao lại vừa đ&aacute;ng y&ecirc;u.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					* H&igrave;nh thức chiếu s&aacute;ng của Đ&egrave;n Neon phụ thuộc v&agrave;o mẫu đồng hồ.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul style="box-sizing: border-box; list-style: disc; margin: 1.5em 0px 1.5em 3em; padding-right: 0px; padding-left: 0px;">
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n Neon (Đ&egrave;n LED cực t&iacute;m)<br style="box-sizing: border-box;" />
										Thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (27 th&agrave;nh phố + giờ trung b&igrave;nh phối hợp tại Greenwich), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 59&rsquo;59<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 60 ph&uacute;t<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 đến 60 ph&uacute;t (khoảng tăng 1 ph&uacute;t)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại, tiếng b&iacute;p b&aacute;o tiến tr&igrave;nh</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2039)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tu&ocirc;̉i thọ pin xấp xỉ: 2 năm với pin SR726W &times; 2</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 43,4&times;43,1&times;15mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 44g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201106/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201106</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5194/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5194</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/hong/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Hồng</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/den-neon/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đ&Egrave;N NEON</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (30, N'Casio BABY-G BGA-152-7B2', N'/HinhAnh/files/bga-152-7b2-247x300.png', 2, 3102000, 0, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:43:31.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					C&aacute;c chữ số La M&atilde; gi&uacute;p dễ đọc v&agrave; đem lại phong c&aacute;ch ch&iacute;n chắn<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Những chiếc đồng hồ n&agrave;y được thiết kế với mặt đồng hồ lớn, dễ đọc với kiểu c&aacute;ch l&ocirc;i cuốn v&agrave; &yacute; nghĩa. Viền của thiết kế n&agrave;y được đặc trưng bởi c&aacute;c chi tiết v&agrave; điểm nhấn kim loại, l&agrave;m tăng vẻ mạnh mẽ của Baby-G. Vạch giờ bằng chữ số La M&atilde; ho&agrave;n thiện thiết kế tổng thể hướng tới đối tượng l&agrave; người trưởng th&agrave;nh.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa / Th&eacute;p kh&ocirc;ng gỉ</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED<br style="box-sizing: border-box;" />
										Thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn, ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (27 th&agrave;nh phố + giờ trung b&igrave;nh phối hợp tại Greenwich), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 59&rsquo;59,99&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ đếm ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 60 ph&uacute;t<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 đến 60 ph&uacute;t (khoảng tăng 1 ph&uacute;t)<br style="box-sizing: border-box;" />
										Kh&aacute;c: Tự động lặp lại, tiếng b&iacute;p b&aacute;o tiến tr&igrave;nh</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2039)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 3 năm với pin CR1220</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 47,5&times;42,8&times;12,8mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 43g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201205/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201205</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5257/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5257</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/hong/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Hồng</a>,&nbsp;<a href="https://www.g-shock.com.vn/mau-sac/trang-trong-suot/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Trắng, trong suốt</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-kim-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ KIM-SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (31, N'Casio BABY-G BA-110-7A1', N'/HinhAnh/files/ba-110-7a1-247x300(1).png', 2, 3549000, 3190000, 1, NULL, CAST(N'2019-11-02T16:45:09.367' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Giới thiệu D&ograve;ng Baby-G mới, thu nhỏ D&ograve;ng G-SHOCK GA-110 phổ biến th&agrave;nh h&igrave;nh d&aacute;ng nhỏ gọn với những thiết kế s&agrave;nh điệu ho&agrave;n to&agrave;n mới cho d&ograve;ng Baby-G. Những mẫu n&agrave;y hiện c&oacute; m&agrave;u đen, trắng, trong mờ v&agrave; bạc. Mặt của những mẫu n&agrave;y được xếp lớp tạo ra vẻ ngo&agrave;i đa chiều cộng th&ecirc;m c&aacute;c chi tiết kim loại mang lại vẻ thanh lịch gi&uacute;p đồng hồ tăng gấp đ&ocirc;i gi&aacute; trị với vai tr&ograve; l&agrave; phụ kiện thời trang. Kết quả l&agrave; một bộ sưu tập c&aacute;c thiết kế với ấn tượng trực quan mạnh mẽ trong một k&iacute;ch thước ph&ugrave; hợp với cổ tay phụ nữ.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n LED</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), hiển thị m&atilde; th&agrave;nh phố, bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 23:59&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
										Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Bật/tắt &acirc;m nhấn n&uacute;t</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường<br style="box-sizing: border-box;" />
										Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
										Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 2 năm với pin SR726W &times; 2</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 46,3&times;43,4&times;15,8mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 45g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201308/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201308</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5338/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5338</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/hong/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Hồng</a>,&nbsp;<a href="https://www.g-shock.com.vn/mau-sac/trang-trong-suot/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Trắng, trong suốt</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ba-110/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&Ograve;NG BA-110</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (32, N'Casio BABY-G BGD-570-7', N'/HinhAnh/files/bgd-570-7-247x300.png', 2, 2773000, 0, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:54:56.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					D&ograve;ng đồng hồ thường ng&agrave;y BABY-G mặt tr&ograve;n mới d&agrave;nh cho phụ nữ năng động ng&agrave;y nay lấy cảm hứng từ thiết kế của G-SHOCK.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					C&aacute;c mẫu trong d&ograve;ng sản phẩm n&agrave;y c&oacute; ba lựa chọn m&agrave;u đơn sắc cơ bản: đen, hồng v&agrave;/hoặc trắng. Logo v&agrave; t&ecirc;n chức năng đều c&oacute; t&ocirc;ng m&agrave;u đơn sắc v&agrave; lớp phủ kh&ocirc;ng b&oacute;ng đẹp mắt.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					M&agrave;u sắc v&agrave; thiết kế giản dị của c&aacute;c mẫu BABY-G mới n&agrave;y ph&ugrave; hợp với mọi phong c&aacute;ch thời trang phổ th&ocirc;ng.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Khả năng chống nước ở độ s&acirc;u 200 m&eacute;t</span></li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / v&agrave;nh bezel: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước ở độ s&acirc;u 200 mét</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<article id="classic" style="box-sizing: border-box;">
								<ul>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&egrave;n cực t&iacute;m ph&aacute;t quang điện tử<br style="box-sizing: border-box;" />
										Thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ thế giới<br style="box-sizing: border-box;" />
										29 m&uacute;i giờ (48 th&agrave;nh phố), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
										Khả năng đo: 59&rsquo;59.99&rdquo;<br style="box-sizing: border-box;" />
										Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t &ndash; thứ hai</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
										Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
										Khoảng đếm ngược: 24 giờ<br style="box-sizing: border-box;" />
										Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										5 chế độ b&aacute;o giờ h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Định dạng giờ 12/24</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Bật/tắt &acirc;m nhấn n&uacute;t</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Giờ hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, s&aacute;ng/chiều, ng&agrave;y, thứ</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
									<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
										Tuổi thọ pin xấp xỉ: 3 năm với pin CR1616</li>
								</ul>
							</article>
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 44,9&times;43&times;12,9mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 45g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/ky-thuat-so/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Kỹ thuật số</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-the-gioi/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ thế giới</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc-o-do-sau-200-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước ở độ s&acirc;u 200 mét</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201908/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201908</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/3290/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">3290</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/trang-trong-suot/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Trắng, trong suốt</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/dong-ho-so-tieu-chuan/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">ĐỒNG HỒ SỐ TI&Ecirc;U CHUẨN</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (33, N'Casio BABY-G BSA-B100AC-2A', N'/HinhAnh/files/bsa-b100ac-2a-247x300.png', 2, 4780000, 0, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-02T16:56:02.000' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Thẻ bảo h&agrave;nh ch&iacute;nh h&atilde;ng Casio&nbsp;<small style="box-sizing: border-box; font-size: 10.24px; display: inline-block;"><a href="https://www.g-shock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;" target="_blank">xem ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></small></li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="custom_hidden" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			S&aacute;ch hướng dẫn sử dụng.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				M&Ocirc; TẢ</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					C&aacute;c t&iacute;nh năng</h3>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Giới thiệu c&aacute;c m&agrave;u sắc thời trang thể thao mới cho d&ograve;ng sản phẩm đồng hồ thể thao G-SQUAD gi&uacute;p hỗ trợ việc tập luyện thể lực h&agrave;ng ng&agrave;y của bạn.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Những mẫu n&agrave;y c&oacute; c&aacute;c lựa chọn m&agrave;u sắc gồm xanh hải qu&acirc;n, xanh lục hoặc n&acirc;u đất tượng trưng cho hoạt động thực hiện tr&ecirc;n đại dương, n&uacute;i hoặc những địa điểm ngo&agrave;i trời kh&aacute;c. Lớp ho&agrave;n thiện kh&ocirc;ng b&oacute;ng khiến m&agrave;u sắc c&oacute; vẻ tối v&agrave; sang trọng hơn, l&agrave;m diện mạo tổng thể của đồng hồ trở n&ecirc;n tự nhi&ecirc;n. Vạch giờ c&oacute; lớp phủ &aacute;nh kim tạo th&ecirc;m điểm nhấn s&aacute;ng b&oacute;ng cho thiết kế đơn sắc đơn giản.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Về mặt chức năng, những mẫu n&agrave;y c&oacute; trang bị Đ&egrave;n LED k&eacute;p tự động chiếu s&aacute;ng mặt đồng hồ để bạn c&oacute; thể dễ d&agrave;ng đọc th&ocirc;ng tin tr&ecirc;n đồng hồ trong b&oacute;ng tối. C&aacute;c chức năng hỗ trợ sức khỏe v&agrave; tập luyện h&agrave;ng ng&agrave;y bao gồm cảm biến gia tốc 3 trục đếm số bước của bạn, đồng hồ bấm giờ cho ph&eacute;p bạn tạo l&ecirc;n đến 20 bộ đồng hồ bấm giờ, mỗi bộ gồm năm đồng hồ bấm giờ, bộ nhớ l&ecirc;n tới 200 bản ghi v&ograve;ng chạy, t&iacute;nh năng nhắc nhở số bước sẽ đưa ra cảnh b&aacute;o khi số bước trong một khoảng thời gian cụ thể của bạn qu&aacute; thấp, v.v. Những mẫu mới n&agrave;y c&oacute; chức năng Bluetooth&reg; n&ecirc;n c&oacute; thể kết nối với ứng dụng BABY-G Connected tr&ecirc;n điện thoại th&ocirc;ng minh để quản l&yacute; nhật k&yacute; hoạt động h&agrave;ng ng&agrave;y v&agrave; định cấu h&igrave;nh c&agrave;i đặt b&agrave;i tập dễ d&agrave;ng hơn. C&aacute;c thao t&aacute;c được hỗ trợ tr&ecirc;n điện thoại bao gồm t&iacute;nh to&aacute;n lượng calo, c&agrave;i đặt mục ti&ecirc;u số bước, tạo bộ đồng hồ bấm giờ cho tập luyện c&aacute;ch qu&atilde;ng, nhật k&yacute; số bước với năm mức cường độ tập luyện, lưu trữ dữ liệu đo bằng đồng hồ bấm giờ, xem dữ liệu lịch theo nh&oacute;m, v.v. Ứng dụng BABY-G Connected cũng cho ph&eacute;p tự động điều chỉnh thời gian v&agrave; c&aacute;c thao t&aacute;c hiển thị giờ hiện h&agrave;nh kh&aacute;c.<br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					Những mẫu BABY-G mới n&agrave;y ch&iacute;nh l&agrave; c&ocirc;ng cụ gi&uacute;p bạn đưa những th&oacute;i quen l&agrave;nh mạnh v&agrave;o cuộc sống h&agrave;ng ng&agrave;y của m&igrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">&bull; T&iacute;nh to&aacute;n lượng calo<br style="box-sizing: border-box;" />
					&bull; Tổ hợp hẹn giờ<br style="box-sizing: border-box;" />
					&bull; Nhật k&yacute; dữ liệu đồng hồ bấm giờ<br style="box-sizing: border-box;" />
					&bull; Tự động điều chỉnh thời gian (4 lần một ng&agrave;y)<br style="box-sizing: border-box;" />
					&bull; Giờ thế giới cho khoảng 300 th&agrave;nh phố<br style="box-sizing: border-box;" />
					&bull; Chuyển đổi giờ<br style="box-sizing: border-box;" />
					&bull; C&agrave;i đặt b&aacute;o thức<br style="box-sizing: border-box;" />
					&bull; Điều chỉnh vị tr&iacute; kim đồng hồ<br style="box-sizing: border-box;" />
					&bull; C&agrave;i đặt thời gian đơn giản</span></p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					&nbsp;</p>
				<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Kết nối điện thoại th&ocirc;ng minh</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Đếm bước bằng cảm biến gia tốc 3 trục</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ bấm giờ c&oacute; cảnh b&aacute;o Thời gian đ&iacute;ch (chuyển đổi hiển thị thời gian v&ograve;ng chạy/ngắt giờ, tối đa 10 Thời gian đ&iacute;ch, 200 bản ghi thời gian v&ograve;ng chạy)</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Hẹn giờ c&aacute;ch qu&atilde;ng với tối đa năm c&agrave;i đặt thời gian (Tự động lặp lại l&ecirc;n đến 20 lần, bỏ qua, tự khởi động, &acirc;m b&aacute;o)</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Nhắc nhở số bước</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">T&iacute;nh năng chuyển kim</span></li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						<span style="box-sizing: border-box; font-weight: bolder;">Đ&egrave;n LED k&eacute;p tự động với khả năng Chiếu s&aacute;ng cực mạnh c&oacute; chức năng chiếu s&aacute;ng m&agrave;n h&igrave;nh kỹ thuật số v&agrave; mặt đồng hồ</span></li>
				</ul>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<br style="box-sizing: border-box;" />
					<span style="box-sizing: border-box; font-weight: bolder;">G-SQUAD</span><br style="box-sizing: border-box;" />
					<br style="box-sizing: border-box;" />
					D&ograve;ng G-SHOCK &amp; BABY-G mới n&agrave;y l&agrave; chiếc đồng hồ ph&ugrave; hợp với một nh&oacute;m vận động vi&ecirc;n t&agrave;i hoa.</p>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / v&agrave;nh bezel: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Neobrite</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống va đập</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh kho&aacute;ng</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							<ul class="js-cont-wrap" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Hai đ&egrave;n LED<br style="box-sizing: border-box;" />
									Đ&egrave;n LED cho mặt đồng hồ (Đ&egrave;n LED tự động, Chiếu s&aacute;ng cực mạnh, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 gi&acirc;y hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau)<br style="box-sizing: border-box;" />
									Đ&egrave;n LED cực t&iacute;m cho m&agrave;n h&igrave;nh số (Đ&egrave;n LED tự động, Chiếu s&aacute;ng cực mạnh, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 gi&acirc;y hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth&reg;)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đếm bước bằng cảm biến gia tốc 3 trục: khoảng hiển thị từ 0 đến 999.999 bước<br style="box-sizing: border-box;" />
									Hiển thị tiến độ đạt mục ti&ecirc;u số bước (phạm vi c&agrave;i đặt mục ti&ecirc;u số bước: 1.000 đến 50.000, khoảng tăng 1.000 bước)<br style="box-sizing: border-box;" />
									Nhắc nhở số bước: Đưa ra th&ocirc;ng b&aacute;o khi số bước của bạn qu&aacute; thấp bằng m&agrave;n h&igrave;nh v&agrave; tiếng b&iacute;p<br style="box-sizing: border-box;" />
									Đồ thị số bước: Số bước mỗi giờ trong 11 giờ qua tr&ecirc;n biểu đồ 6 mức<br style="box-sizing: border-box;" />
									Chỉ b&aacute;o số bước<br style="box-sizing: border-box;" />
									Tiết kiệm pin: Cảm biến tự động chuyển sang trạng th&aacute;i nghỉ sau một thời gian kh&ocirc;ng hoạt động nhất định</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Chế độ giờ k&eacute;p (Chuyển đổi giờ chuẩn)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
									Khả năng đo:<br style="box-sizing: border-box;" />
									00&rsquo;00&rdquo;00~59&rsquo;59&rdquo;99 (cho 60 ph&uacute;t đầu ti&ecirc;n)<br style="box-sizing: border-box;" />
									1:00&rsquo;00~23:59&rsquo;59 (sau 60 ph&uacute;t)<br style="box-sizing: border-box;" />
									Đơn vị đo:<br style="box-sizing: border-box;" />
									1/100 gi&acirc;y (cho 60 ph&uacute;t đầu ti&ecirc;n)<br style="box-sizing: border-box;" />
									1 gi&acirc;y (sau 60 ph&uacute;t)<br style="box-sizing: border-box;" />
									Dữ liệu đ&atilde; ghi: Tối đa 200 bản ghi (th&aacute;ng, ng&agrave;y bắt đầu đo, thời gian v&ograve;ng chạy/ngắt giờ)<br style="box-sizing: border-box;" />
									Th&ocirc;ng b&aacute;o Thời gian đ&iacute;ch c&oacute; tối đa 10 c&agrave;i đặt</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược<br style="box-sizing: border-box;" />
									Hẹn giờ đo qu&atilde;ng thời gian (tối đa 5 c&agrave;i đặt)<br style="box-sizing: border-box;" />
									Đơn vị đo: 1 gi&acirc;y<br style="box-sizing: border-box;" />
									Khoảng nhập: 00&rsquo;00&rdquo; đến 60&rsquo;00&rdquo;&nbsp;(khoảng tăng 1 gi&acirc;y)<br style="box-sizing: border-box;" />
									Kh&aacute;c: Tự động lặp lại (số lần lặp lại c&oacute; thể c&agrave;i đặt từ 1 đến 20), Tự động bắt đầu</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									T&iacute;nh năng chuyển kim (Kim dịch chuyển qua một b&ecirc;n để kh&ocirc;ng che kết quả hiển thị tr&ecirc;n m&agrave;n h&igrave;nh kỹ thuật số)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									5 chế độ b&aacute;o thức h&agrave;ng ng&agrave;y</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Lịch ho&agrave;n to&agrave;n tự động (đến năm 2099)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Định dạng giờ 12/24</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Bật/tắt &acirc;m nhấn n&uacute;t</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Giờ hiện h&agrave;nh th&ocirc;ng thường:<br style="box-sizing: border-box;" />
									Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần))<br style="box-sizing: border-box;" />
									Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y một th&aacute;ng (kh&ocirc;ng c&oacute; chức năng Mobile Link)</li>
								<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
									Tuổi thọ pin xấp xỉ: 2 năm với pin CR2016</li>
							</ul>
						</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 49,6&times;41,4&times;12,6mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 35g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/digital-analog-combination/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Digital-Analog Combination</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/battat-am-nhan-nut/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bật/tắt &acirc;m nhấn n&uacute;t</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/bo-nho-vong-chay/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Bộ nhớ v&ograve;ng chạy</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-dem-nguoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ đếm ngược</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/gio-kep/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Giờ k&eacute;p</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/mobile-link-ket-noi-khong-day-su-dung-bluetoothr/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth(R))</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_vo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								VỎ</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/vo/chong-va-dap/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống va đập</a>,&nbsp;<a href="https://www.g-shock.com.vn/vo/neobrite/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Neobrite</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/kha-nang-chong-nuoc-o-do-sau-100-met/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Khả năng chống nước ở độ s&acirc;u 100 m&eacute;t</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhan-hieu" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Atilde;N HIỆU</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhan-hieu/baby-g/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">BABY-G</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201908/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201908</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/5556/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">5556</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/xanh-lam-lam-nhe/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Xanh lam, Lam nhẹ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_nhom" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NH&Oacute;M</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/nhom/g-squad/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">G-SQUAD</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				BẢO H&Agrave;NH</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ CASIO ch&iacute;nh h&atilde;ng thường được bảo h&agrave;nh 1 năm cho m&aacute;y v&agrave; 18 th&aacute;ng cho pin. Đặc biệt d&ograve;ng G-SHOCK v&agrave; BABY-G được bảo h&agrave;nh l&ecirc;n tới 5 năm</span>&nbsp;Mọi hư hỏng do hỏa hoạn, thi&ecirc;n tai hay sử dụng bất cẩn hoặc sử dụng sai hướng dẫn, bấm c&aacute;c n&uacute;t điều chỉnh khi đang ở dưới nước v&agrave; những tổn hại trầy xước của d&acirc;y, vỏ, mặt k&iacute;nh đều kh&ocirc;ng được bảo h&agrave;nh. Mọi hư hỏng do sửa chữa kh&ocirc;ng đ&uacute;ng c&aacute;ch từ những dịch vụ kh&aacute;c kh&ocirc;ng phải do TTBH ch&iacute;nh h&atilde;ng cũng kh&ocirc;ng được bảo h&agrave;nh.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Ngo&agrave;i ra bạn c&oacute; thể mang đồng hồ ra c&aacute;c đại l&yacute; đồng hồ Casio để nhận được sự tư vấn v&agrave; bảo h&agrave;nh tại trung t&acirc;m bảo h&agrave;nh của Casio.</p>
				<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
					Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ điều khoản bảo h&agrave;nh tại đ&acirc;y:&nbsp;<a href="https://www.gshock.com.vn/chinh-sach-bao-hanh/" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
INSERT [dbo].[San_pham] ([Id_san_pham], [Ten_san_pham], [Hinh_anh], [Loai_san_pham], [Gia_goc], [Gia_sale], [So_luong], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Mo_ta_ngan], [Mo_ta_dai], [Chu_thich], [Trang_thai]) VALUES (1022, N'Baby_g ga1', N'/HinhAnh/files/blx-570-6-247x300.png', 2, 4400000, 3900000, 1, N'nvtrungict@gmail.com', CAST(N'2019-11-12T10:44:45.077' AS DateTime), N'<div id="product_misc" style="box-sizing: border-box; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<h4 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 516.094px; margin-top: 1em; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Bộ sản phẩm ch&iacute;nh h&atilde;ng gồm:</span></h4>
	<ul class="infocomes" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			1 đồng hồ + 1 hộp giấy + 1 hộp thiếc (t&ugrave;y sản phẩm).</li>
		<li style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			Tem v&agrave;ng chống h&atilde;ng giả CASIO sau nắp lưng đồng hồ.</li>
		<li class="hide_edifice" style="box-sizing: border-box; margin-bottom: 0.6em; background: url(&quot;https://www.g-shock.com.vn/wp-content/uploads/2018/01/icon-check.png&quot;) left 2px no-repeat; display: block; overflow: hidden; padding: 0px 0px 0px 15px; line-height: 15.36px; margin-left: 1.3em;">
			<span style="box-sizing: border-box; font-weight: bolder;">Qu&agrave; tặng:</span>&nbsp;Thẻ&nbsp;<span style="box-sizing: border-box; color: rgb(255, 255, 255); font-weight: bold; background-color: rgb(197, 16, 47); padding: 1px 4px; border-radius: 2px;">MRG</span>&nbsp;thay pin miễn ph&iacute; trọn đời cho sản phẩm trị gi&aacute; 500.000đ</li>
	</ul>
</div>
<p>
	<span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">Gọi đặt mua:&nbsp;</span><a href="tel:0934136886" style="box-sizing: border-box; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 12.8px;"><span style="box-sizing: border-box; color: red; font-size: 19.2px; font-weight: bold;">093-413-6886</span></a><span style="color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">&nbsp;(Tư v&acirc;́n mi&ecirc;̃n phí)</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">H&agrave; Nội</span>: 473 Nguyễn Khang, quận Cầu Giấy, TP. H&agrave; Nội</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<span style="box-sizing: border-box; font-weight: bolder;">Hồ Ch&iacute; Minh</span>: 256 Chu Văn An, quận B&igrave;nh Thạnh, TP. Hồ Ch&iacute; Minh</li>
</ul>
', N'<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					Đặc điểm kỹ thuật</h3>
				<ul class="no-style-list" style="box-sizing: border-box; list-style: none; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<ul class="display-list" style="box-sizing: border-box; list-style: disc; padding-right: 0px; padding-left: 0px; margin: 0px !important;">
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Vật liệu vỏ / gờ: Nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								D&acirc;y đeo bằng nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Mặt k&iacute;nh nhựa</li>
							<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
								Chống nước</li>
						</ul>
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đ&egrave;n LED</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Đồng hồ bấm giờ 1/100 gi&acirc;y<br style="box-sizing: border-box;" />
						Khả năng đo: 59&rsquo;59,99&rdquo;<br style="box-sizing: border-box;" />
						Chế độ đo: Thời gian thực, ngắt giờ, thời gian về đ&iacute;ch thứ nhất-thứ hai</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						B&aacute;o giờ h&agrave;ng ng&agrave;y</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						T&iacute;n hiệu thời gian h&agrave;ng giờ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Lịch tự động (28 ng&agrave;y cho Th&aacute;ng 2)</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Định dạng giờ 12/24</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Thời gian hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, chiều, ng&agrave;y, thứ</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						Tuổi thọ pin xấp xỉ: 7 năm với pin CR2016</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 0px;">
						<div class="more-body" style="box-sizing: border-box;">
							&nbsp;</div>
					</li>
				</ul>
				<h3 class="product-heading" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 1094.16px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em;">
					K&iacute;ch thước vỏ / Tổng trọng lượng</h3>
				<ul class="outer" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em;">
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						K&iacute;ch thước vỏ : 38,2&times;35,2&times;8,5mm</li>
					<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
						Tổng trọng lượng : 21g</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="product-section" style="box-sizing: border-box; border-top: 1px solid rgb(236, 236, 236); color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<div class="row" style="box-sizing: border-box; width: auto; margin-left: -15px; margin-right: -15px; max-width: 1460px; display: flex; flex-flow: row wrap; padding-left: 0px; padding-right: 0px;">
		<div class="large-2 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 224.828px; max-width: 16.6667%; flex-basis: 16.6667%;">
			<h5 class="uppercase mt" style="box-sizing: border-box; color: rgb(68, 68, 68); width: 194.828px; margin-top: 30px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1em; line-height: 1.5em; letter-spacing: 0.05em; text-transform: uppercase;">
				TH&Ocirc;NG TIN BỔ SUNG</h5>
		</div>
		<div class="large-10 col pb-0 mb-0" style="box-sizing: border-box; position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; padding-top: 0px; padding-right: 15px; padding-bottom: 0px !important; padding-left: 15px; width: 1124.16px; max-width: 83.3333%; flex-basis: 83.3333%;">
			<div class="panel entry-content" style="box-sizing: border-box; padding-top: 1.5em; padding-bottom: 1.5em;">
				<table class="woocommerce-product-attributes shop_attributes" style="box-sizing: border-box; width: 1094px; margin-bottom: 1em; border-color: rgb(236, 236, 236); border-spacing: 0px;">
					<tbody style="box-sizing: border-box;">
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chong-nuoc" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỐNG NƯỚC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chong-nuoc/chong-nuoc/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chống nước</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_chuc-nang-khac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								CHỨC NĂNG KH&Aacute;C</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/chuc-nang-khac/chuc-nang-den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Chức năng đ&egrave;n</a>,&nbsp;<a href="https://www.g-shock.com.vn/chuc-nang-khac/dong-ho-bam-gio/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đồng hồ bấm giờ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_loai" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								LOẠI</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/loai/nam/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NAM</a>,&nbsp;<a href="https://www.g-shock.com.vn/loai/nu/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">NỮ</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_day-deo" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								D&Acirc;Y ĐEO</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/day-deo/day-deo-bang-nhua/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">D&acirc;y đeo bằng nhựa</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_gio-hien-hanh" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								GIỜ HIỆN H&Agrave;NH</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/gio-hien-hanh/ky-thuat-so/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Kỹ thuật số</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								M&Agrave;U SẮC</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/mau-sac/den/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">Đen</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_module" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								MODULE</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/module/593/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">593</a></p>
							</td>
						</tr>
						<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_ngay-ra-mat" style="box-sizing: border-box;">
							<th class="woocommerce-product-attributes-item__label" style="box-sizing: border-box; padding: 0.5em 0.5em 0.5em 0px; text-align: left; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.5em; font-size: 0.9em; letter-spacing: 0.05em; text-transform: uppercase;">
								NG&Agrave;Y RA MẮT</th>
							<td class="woocommerce-product-attributes-item__value" style="box-sizing: border-box; padding: 0.5em 0px 0.5em 0.5em; border-bottom-style: solid; border-bottom-color: rgb(236, 236, 236); line-height: 1.3; font-size: 0.9em; color: rgb(102, 102, 102);">
								<p style="box-sizing: border-box; margin: 0.5em 0px;">
									<a href="https://www.g-shock.com.vn/ngay-ra-mat/201106/" rel="tag" style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(0, 50, 150); text-decoration-line: none;">201106</a></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', NULL, 1)
SET IDENTITY_INSERT [dbo].[San_pham] OFF
SET IDENTITY_INSERT [dbo].[Tai_khoan_Ad] ON 

INSERT [dbo].[Tai_khoan_Ad] ([Id_Tai_khoan_ad], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich], [Trang_thai], [Id_chuc_vu], [Mat_khau]) VALUES (3, N'Nguyễn Văn Trung', 1, CAST(N'1999-11-01' AS Date), N'Hải Dương', N'nvtrungict@gmail.com', 961097065, N'/HinhAnh/files/780460.jpg', N'Trung', CAST(N'2019-10-31T11:10:17.000' AS DateTime), N'<p>
	Aaaaaaa</p>
', 1, 1, N'1234')
INSERT [dbo].[Tai_khoan_Ad] ([Id_Tai_khoan_ad], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Chu_thich], [Trang_thai], [Id_chuc_vu], [Mat_khau]) VALUES (4, N'Lê Bá Hiệp', 1, NULL, N'Hưng Yên', N'hiephiep@gmail.com', 987476574, N'/HinhAnh/files/99794.jpg', N'Hi?p', CAST(N'2019-10-31T14:43:36.000' AS DateTime), N'<p>
	aa</p>
', 1, 2, N'1234')
SET IDENTITY_INSERT [dbo].[Tai_khoan_Ad] OFF
SET IDENTITY_INSERT [dbo].[Tai_khoan_Kh] ON 

INSERT [dbo].[Tai_khoan_Kh] ([Id_Tai_khoan_kh], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Trang_thai], [Mat_khau]) VALUES (4, N'Nguyễn Thị Trà Ly', 2, CAST(N'1998-02-22' AS Date), N'Hải Phòng', N'nttlyict@gmail.com', 969889999, N'/HinhAnh/files/67895932_555039365034052_1185034283589304320_n.jpg', N'nttlyict@gmail.com', CAST(N'2019-11-12T10:27:46.340' AS DateTime), 1, N'1234')
INSERT [dbo].[Tai_khoan_Kh] ([Id_Tai_khoan_kh], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Trang_thai], [Mat_khau]) VALUES (5, N'Lê Bá Hiệp', 1, CAST(N'1999-09-21' AS Date), N'Hà Nội', N'lebahiep@gmail.com', 123456, N'/HinhAnh/files/68543598_555038435034145_4997137798277365760_n.png', N'123@gmail.com', CAST(N'2019-11-11T15:13:13.400' AS DateTime), 1, N'1234')
INSERT [dbo].[Tai_khoan_Kh] ([Id_Tai_khoan_kh], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Trang_thai], [Mat_khau]) VALUES (6, N'Lê Bá Hiệp', 1, CAST(N'1999-12-08' AS Date), N'Hải Dương', N'1234@gmail.com', 971022393, N'/HinhAnh/files/68652823_555197748351547_563517524759543808_n.png', NULL, CAST(N'2019-11-12T10:29:27.013' AS DateTime), 1, N'1234')
INSERT [dbo].[Tai_khoan_Kh] ([Id_Tai_khoan_kh], [Ho_ten], [Gioi_tinh], [Ngay_sinh], [Dia_chi], [Email], [So_dien_thoai], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_cap_nhat], [Trang_thai], [Mat_khau]) VALUES (7, N'Trung Nguyễn', 1, CAST(N'1997-12-03' AS Date), N'Hải Dương', N'trungNguyen@gmail.com', 13256489, N'/HinhAnh/files/n-67243791-p0.jpg', NULL, CAST(N'2019-11-12T10:29:45.507' AS DateTime), 1, N'1234')
SET IDENTITY_INSERT [dbo].[Tai_khoan_Kh] OFF
SET IDENTITY_INSERT [dbo].[Tin_tuc] ON 

INSERT [dbo].[Tin_tuc] ([Id_Tintuc], [Ten_tin_tuc], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Chu_thich], [Trang_thai], [Noi_dung]) VALUES (3, N'Ngất ngây với G-STEEL độ dây da cực đẹp', N'/HinhAnh/files/bgd-570xg-8-247x300.png', N'Trung', CAST(N'2019-11-07T00:30:50.247' AS DateTime), N'<p>
	&aacute;</p>
', 1, N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	Kh&aacute;c ho&agrave;n to&agrave;n với c&aacute;c d&ograve;ng G-SHOCK kh&aacute;c, G-STEEL mang một phong c&aacute;ch đẳng cấp v&agrave; hiện đại hơn hẳn. Đ&agrave;n &ocirc;ng chọn G-STEEL v&igrave; vẻ ngo&agrave;i nam t&iacute;nh v&agrave; t&iacute;nh đa dụng của n&oacute;, G-STEEL c&oacute; thể kết hợp ho&agrave;n hảo với trang phục đi l&agrave;m lẫn đi chơi, mạnh mẽ v&agrave; hiện đại với hệ m&aacute;y sử dụng pin năng lượng &aacute;nh s&aacute;ng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	Mặc d&ugrave; c&oacute; nhiều phi&ecirc;n bản G-STEEL d&acirc;y cao su lẫn d&acirc;y da th&ocirc; nhưng những chiếc d&acirc;y da được Custom lại về m&agrave;u sắc, loại da vẫn l&agrave; một thứ để thể hiện phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	Xin mời c&aacute;c bạn c&ugrave;ng chi&ecirc;m ngưỡng sản phẩm G-STEEL b&ecirc;n dưới: Một chiếc G-STEEL GST-B100X-1A được custom với d&acirc;y da m&agrave;u đỏ hợp mệnh với chủ nh&acirc;n mệnh Thổ. Sản phẩm được ho&agrave;n thiện thủ c&ocirc;ng tỉ mỉ từng đường kim mũi chỉ, kh&oacute;a được khắc hoa văn độc đ&aacute;o kết hợp với đồng hồ Full Back đặc trưng v&ocirc; c&ugrave;ng nổi bật.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-10064 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-510x1049.jpg 510w" height="1317" sizes="(max-width: 640px) 100vw, 640px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-1-510x1049.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="640" /><img alt="" class="aligncenter size-full wp-image-10063 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-510x1049.jpg 510w" height="1317" sizes="(max-width: 640px) 100vw, 640px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-3-510x1049.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="640" /><img alt="" class="aligncenter size-full wp-image-10062 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2.jpg 1241w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-200x300.jpg 200w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-768x1152.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-682x1024.jpg 682w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-160x240.jpg 160w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-510x765.jpg 510w" height="1862" sizes="(max-width: 1241px) 100vw, 1241px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2.jpg 1241w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-200x300.jpg 200w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-768x1152.jpg 768w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-682x1024.jpg 682w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-160x240.jpg 160w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-2-510x765.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="1241" /><img alt="" class="aligncenter size-full wp-image-10061 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-510x1049.jpg 510w" height="1317" sizes="(max-width: 640px) 100vw, 640px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4.jpg 640w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-146x300.jpg 146w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-498x1024.jpg 498w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-117x240.jpg 117w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/GST-B100X-1A-Day-da-do-4-510x1049.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="640" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: right;">
	Ảnh: MRG&nbsp;<span style="box-sizing: border-box; font-weight: bolder;">www.g-shock.com.vn</span><br style="box-sizing: border-box;" />
	Sản phẩm:&nbsp;<span style="box-sizing: border-box; font-weight: bolder;">G-STEEL GST-B100X-1A</span></p>
')
INSERT [dbo].[Tin_tuc] ([Id_Tintuc], [Ten_tin_tuc], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Chu_thich], [Trang_thai], [Noi_dung]) VALUES (4, N'G-SHOCK GBA-800 Series – Đồng hồ dành cho tín đồ chạy bộ', N'/HinhAnh/files/ga-140bmc-1a-247x300.png', N'Trung', CAST(N'2019-11-07T00:32:32.137' AS DateTime), NULL, 1, N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: bolder;">Được t&iacute;ch hợp nhiều chức năng hỗ trợ tập luyện, c&oacute; thể kết nối với smartphone, gi&aacute; cả phải chăng, đ&oacute; ch&iacute;nh l&agrave; những ưu điểm kh&ocirc;ng thể bỏ qua của mẫu G-Shock GBA-800 &ndash; chiếc đồng hồ thể thao đang hot hiện nay.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9760 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-300x200.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-197x131.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-510x340.jpg 510w" height="400" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-300x200.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-197x131.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-510x340.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	GBA-800 sở hữu bề ngo&agrave;i bảnh bao của GA-800 nhưng được t&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh nhằm hỗ trợ việc luyện tập, chăm s&oacute;c sức khỏe như đồ thị số bước với 5 mức cường độ tập luyện, hiển thị lượng calo đ&atilde; đốt, chức năng ghi dữ liệu đo bằng đồng hồ bấm giờ&hellip;</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9761 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-300x169.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-197x111.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-510x287.jpg 510w" height="338" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-300x169.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-197x111.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-2-510x287.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Những t&iacute;nh năng n&agrave;y được t&iacute;ch hợp th&ocirc;ng qua việc li&ecirc;n kết với ứng dụng điện thoại th&ocirc;ng minh &ndash; G-Shock Connected bằng Bluetooth. Bạn c&oacute; thể theo d&otilde;i số bước bằng gia tốc kế 3 trục (đồ thị số bước, đồ họa về tiến độ thực hiện số bước đ&atilde; đặt l&agrave;m mục ti&ecirc;u). Bạn cũng c&oacute; thể c&agrave;i đặt cho nhật k&yacute; số bước với 5 cường độ tập luyện, t&iacute;nh lượng calo sẽ ti&ecirc;u hao&hellip;</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9762 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-300x231.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-197x152.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-510x393.jpg 510w" height="462" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-300x231.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-197x152.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-3-510x393.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Ngo&agrave;i ra, GBA-800 cũng cho ph&eacute;p tạo đến 20 bộ hẹn giờ, mỗi bộ gồm 5 hẹn giờ, bộ nhớ l&ecirc;n tới 200 bản ghi v&ograve;ng chạy. Việc n&agrave;y sẽ được thực hiện th&ocirc;ng qua ứng dụng v&agrave; gửi đến đồng hồ. V&igrave; thế, bạn c&oacute; thể lưu trữ v&agrave; xem dữ liệu, nhằm theo d&otilde;i v&agrave; l&ecirc;n kế hoạch cho việc tập luyện của m&igrave;nh c&oacute; hiệu quả hơn.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	V&igrave; được thiết kế để đồng h&agrave;nh với c&aacute;c hoạt động tập luyện n&ecirc;n ngo&agrave;i ch&uacute; trọng t&iacute;nh năng, GBA-800 cũng được đầu tư hơn ở kết cấu vỏ, d&acirc;y đeo, nhằm tạo cảm gi&aacute;c dễ chịu cho cổ tay. Đặc biệt, d&acirc;y đeo urethane được thiết kế với nhiều lỗ hơn để c&oacute; thể điều chỉnh độ chặt dễ hơn, lại giữ được sự mềm mại ngay cả khi đeo l&acirc;u.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9763 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-300x285.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-197x187.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-510x485.jpg 510w" height="570" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-300x285.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-197x187.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-4-510x485.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	GBA-800 c&oacute; 6 lựa chọn về m&agrave;u sắc, kết hợp giữa phong c&aacute;ch đồng hồ thể thao v&agrave; thời trang đường phố (street style). Mục đ&iacute;ch gi&uacute;p cho việc tập luyện trở n&ecirc;n th&uacute; vị v&agrave; nhiều m&agrave;u sắc hơn, cũng nhằm khơi dậy niềm hứng th&uacute; đối với c&aacute;c hoạt động thể thao của c&aacute;c ch&agrave;ng trai.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9764 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-150x150.jpg 150w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-300x300.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-197x197.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-510x510.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-100x100.jpg 100w" height="600" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-150x150.jpg 150w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-300x300.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-197x197.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-510x510.jpg 510w, https://www.g-shock.com.vn/wp-content/uploads/2018/05/g-shock-gba-800-danh-cho-chay-bo-5-100x100.jpg 100w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Ngo&agrave;i những điểm nổi bật đ&atilde; liệt k&ecirc; ở tr&ecirc;n, GBA-800 căn bản kh&ocirc;ng kh&aacute;c GA-800, từ k&iacute;ch cỡ trung b&igrave;nh, gọn nhẹ đến những t&iacute;nh năng cơ bản như: kim số kết hợp; đ&egrave;n led si&ecirc;u s&aacute;ng với n&uacute;t bấm ri&ecirc;ng biệt ở khung 6 giờ, khả năng chống nước 200M&hellip;</p>
')
INSERT [dbo].[Tin_tuc] ([Id_Tintuc], [Ten_tin_tuc], [Hinh_anh], [Nguoi_cap_nhat], [Ngay_Cap_nhat], [Chu_thich], [Trang_thai], [Noi_dung]) VALUES (5, N'Hướng dẫn Vệ sinh – Làm sạch đồng hồ G-SHOCK tại nhà', N'/HinhAnh/files/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12.jpg', N'Trung', CAST(N'2019-11-07T00:33:40.037' AS DateTime), NULL, 1, N'<h3 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 950.75px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: bolder;">Đồng hồ G-Shock được thiết kế với chất liệu nhựa cao cấp n&ecirc;n c&oacute; khả năng chống va đập v&agrave; chống sốc. V&igrave; vậy việc vệ sinh v&agrave; bảo tr&igrave; đồng hồ cũng v&ocirc; c&ugrave;ng dễ d&agrave;ng.</span></h3>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Mặc d&ugrave; chiếc đồng hồ G-Shock c&oacute; khả năng chịu được sự hao m&ograve;n hơn c&aacute;c loại đồng hồ kh&aacute;c, nhưng ch&uacute;ng vẫn phải được lau ch&ugrave;i thường xuy&ecirc;n để giữ cho chiếc đồng&nbsp; hồ lu&ocirc;n bền đẹp. Nếu bạn sở hữu một chiếc đồng hồ c&oacute; khả năng kh&aacute;ng nước, bạn c&oacute; thể rửa ch&uacute;ng trong nước ấm v&agrave; d&ugrave;ng b&agrave;n chải để l&agrave;m sạch c&aacute;c vết bẩn. Nếu kh&ocirc;ng, bạn c&oacute; thể l&agrave;m sạch đồng hồ bằng c&aacute;ch sử dụng nước hoặc dung dịch cồn c&ugrave;ng với c&aacute;c c&ocirc;ng cụ kh&aacute;c để loại bỏ c&aacute;c vết bẩn ở c&aacute;c khe nhỏ nhất.</p>
<h2 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 950.75px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: bolder;">Phương ph&aacute;p 1: L&agrave;m sạch bụi bẩn</span></h2>
<ol style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">L&agrave;m sạch đồng hồ bằng vải ẩm</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Ngay cả khi chiếc G-Shock của bạn kh&ocirc;ng thấm nước, bạn vẫn c&oacute; thể sử dụng một miếng vải thấm nước để l&agrave;m sạch khu vực cần vệ sinh tr&ecirc;n chiếc đồng hồ. D&ugrave;ng một miếng bọt biển hoặc một miếng vải thấm nước ấm sau đ&oacute; ch&agrave; nhẹ nh&agrave;ng l&ecirc;n chỗ dơ cần vệ sinh. Việc cọ x&aacute;t trực tiếp tr&ecirc;n bề mặt sẽ tẩy sạch bụi bẩn b&aacute;m tr&ecirc;n đồng hồ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="size-full wp-image-9433 aligncenter lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-1-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Lưu &yacute;, kh&ocirc;ng sử dụng khăn giấy hoặc c&aacute;c loại vải c&oacute; t&iacute;nh chất ăn m&ograve;n để vệ sinh đồng hồ v&igrave; ch&uacute;ng c&oacute; thể g&acirc;y trầy xước bề mặt của đồng hồ.</p>
<ol start="2" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">L&agrave;m sạch bụi bẩn bằng cồn</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Nếu nước ấm kh&ocirc;ng thể l&agrave;m sạch được bụi bẩn t&iacute;ch tụ tr&ecirc;n chiếc đồng hồ, bạn phải sử dụng một dung dịch kh&aacute;c c&oacute; khả năng l&agrave;m sạch mạnh hơn. Dung dịch cồn l&agrave; một chất tẩy rửa mạnh nhưng lại rất an to&agrave;n cho đồng hồ G-shock. Để thực hiện phương ph&aacute;p n&agrave;y, bạn cần sử dụng một muỗng c&agrave; ph&ecirc; (tương đương 5ml) cồn l&ecirc;n một miếng vải mềm. Sau đ&oacute; ch&agrave; x&aacute;t l&ecirc;n bề mặt cần vệ sinh của chiếc đồng&nbsp; hồ để loại bỏ bụi bẩn t&iacute;ch tụ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Sau khi đ&atilde; l&agrave;m sạch bề mặt bằng cồn, bạn h&atilde;y d&ugrave;ng một miếng vải mềm lau kh&ocirc; phần cồn c&ograve;n lại b&aacute;m tr&ecirc;n đồng hồ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="size-full wp-image-9434 aligncenter lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-2-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<ol start="3" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">L&agrave;m sạch bằng b&agrave;n chải</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Nếu bạn gặp c&aacute;c vết bẩn cứng đầu, bạn phải l&agrave;m sạch ch&uacute;ng bằng một chiếc b&agrave;n chải. Nh&uacute;ng b&agrave;n chải v&agrave;o nước ấm hoặc cồn, ch&agrave; nhẹ b&agrave;n chải l&ecirc;n bề mặt vết bẩn theo chuyển động tr&ograve;n một c&aacute;ch nhẹ nh&agrave;ng để từ từ loại bỏ vết&nbsp; bẩn t&iacute;ch tụ tr&ecirc;n đồng hồ của bạn.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9435 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-3-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Bạn n&ecirc;n sử dụng một chiếc b&agrave;n chải c&oacute; l&ocirc;ng mềm, tr&aacute;nh sử dụng c&aacute;c loại b&agrave;n chải c&oacute; l&ocirc;ng qu&aacute; cứng sẽ dễ l&agrave;m trầy xước bề mặt đồng hồ.</p>
<ol start="4" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">L&agrave;m sạch bằng tăm b&ocirc;ng</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9436 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-4-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Bụi bẩn thường t&iacute;ch tụ ở c&aacute;c khe hở của đồng&nbsp; hồ l&agrave;m cho việc vệ sinh gặp nhiều kh&oacute; khăn. Bạn chỉ cần sử dụng một chiếc tăm b&ocirc;ng nh&uacute;ng v&agrave;o trong nước hoặc cồn để l&agrave;m sạch c&aacute;c r&atilde;nh, khe hở tr&ecirc;n đồng&nbsp; hồ.</p>
<h2 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 950.75px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: bolder;">Phương ph&aacute;p thứ 2: Loại bỏ mảng b&aacute;m v&agrave; c&aacute;c vết trầy xước</span></h2>
<ol style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Loại bỏ bằng cục tẩy b&uacute;t ch&igrave;</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Khi đeo đồng hồ thường xuy&ecirc;n sẽ xuất hiện những mảng b&aacute;m v&agrave; c&aacute;c dấu v&acirc;n tay tr&ecirc;n d&acirc;y đồng hồ. Một c&ocirc;ng cụ kh&aacute; tiện lợi m&agrave; bạn c&oacute; thể sử dụng l&agrave; một cục tẩy b&uacute;t ch&igrave; th&ocirc;ng thường. Chỉ cần ch&agrave; nhẹ l&ecirc;n mảng b&aacute;m hoặc dấu v&acirc;n tay, sau đ&oacute; d&ugrave;ng khăn mềm lau sạch, chiếc đồng hồ sẽ trở n&ecirc;n s&aacute;ng b&oacute;ng như mới.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9437 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-5-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Bạn n&ecirc;n sử dụng một cục tẩy m&agrave;u trắng để tr&aacute;nh l&agrave;m mất m&agrave;u d&acirc;y đồng hồ của bạn.</p>
<ol start="2" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Loại bỏ vết trầy xước bằng kem đ&aacute;nh răng</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Kem đ&aacute;nh răng l&agrave; một c&ocirc;ng cụ hiệu quả trong việc loại bỏ c&aacute;c vết trầy xước. Bạn sử dụng một lượng nhỏ kem đ&aacute;nh răng tr&ecirc;n chiếc tăm b&ocirc;ng, nhẹ nh&agrave;ng ch&agrave; x&aacute;t l&ecirc;n vết xước theo chuyển động tr&ograve;n, sau đ&oacute; d&ugrave;ng vải mềm đ&atilde; được l&agrave;m ẩm lau sạch kem đ&aacute;nh răng c&ograve;n lại.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9438 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-6-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	H&atilde;y sử dụng kem đ&aacute;nh răng c&oacute; m&agrave;u trắng b&igrave;nh thường, kh&ocirc;ng n&ecirc;n sử dụng kem đ&aacute;nh răng c&oacute; hoạt chất gel hoặc m&agrave;u kh&aacute;c.</p>
<ol start="3" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Sử dụng vải l&agrave;m sạch trang sức để loại bỏ c&aacute;c vết trầy xước nhỏ</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Một miếng vải nhỏ để loại bỏ c&aacute;c vết trầy xước cho trang sức sẽ gi&uacute;p bạn loại bỏ được c&aacute;c vết trầy xước nhỏ ra khỏi bề mặt đồng hồ. H&atilde;y d&ugrave;ng miếng vải nhỏ ch&agrave; x&aacute;t l&ecirc;n c&aacute;c vết trầy xước trong 30 gi&acirc;y, bạn sẽ thấy c&aacute;c vết trầy xước biến mất.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9439 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-7-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Nếu mặt đồng hồ c&oacute; vết trầy xước lớn hoặc s&acirc;u, bạn n&ecirc;n cầm chiếc đồng hồ của bạn đến thợ kim ho&agrave;n để loại bỏ ch&uacute;ng.</p>
<h2 style="box-sizing: border-box; color: rgb(68, 68, 68); width: 950.75px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: bolder;">Phương ph&aacute;p 3: Rửa chiếc đồng hồ c&oacute; chế độ kh&aacute;ng nước</span></h2>
<ol style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Water Resistant</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	H&atilde;y chắc chắn rằng chiếc đồng hồ của bạn c&oacute; khả năng chống nước l&ecirc;n đến 50m. Trước khi rửa đồng hồ, bạn cần kiểm tra v&agrave; đảm bảo n&oacute; kh&ocirc;ng thấm nước. Thương hiệu G-Shock l&agrave; d&ograve;ng đồng hồ c&oacute; khả năng chống nước l&ecirc;n tới 200m.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Đồng hồ &ldquo;water resistant&rdquo; l&agrave; d&ograve;ng đồng hồ c&oacute; khả năng chống nước với lượng nước tiếp x&uacute;c nhỏ, kh&ocirc;ng thể xả hoặc ng&acirc;m trong nước.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9440 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-8-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Đồng hồ &ldquo;water Resistant to 50M&rdquo; l&agrave; d&ograve;ng đồng hồ c&oacute; khả năng chống nước l&ecirc;n tới 50M, bạn c&oacute; thể rửa hoặc xả trong nước m&agrave; kh&ocirc;ng lo bị v&ocirc; nước.</p>
<ol start="2" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Xả nước ấm l&ecirc;n to&agrave;n bộ mặt đồng hồ</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Nếu bạn đ&atilde; chắc chắn rằng chiếc đồng hồ của bạn &ldquo;chống nước đến 50M&rdquo;, h&atilde;y sử dụng nước ấm, sau đ&oacute; giữ chiếc đồng hồ trực tiếp dưới v&ograve;i nước. Xoay đồng hồ li&ecirc;n tục để đảm bảo rằng bạn đang rửa to&agrave;n bộ bề mặt đồng hồ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9441 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-9-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<ol start="3" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Sử dụng x&agrave; ph&ograve;ng rửa tay</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Sau khi l&agrave;m ướt to&agrave;n bộ bề mặt đồng hồ, bạn d&ugrave;ng một lượng nhỏ x&agrave; ph&ograve;ng v&agrave;o tay, d&ugrave;ng c&aacute;c ng&oacute;n tay xoa to&agrave;n bộ x&agrave; ph&ograve;ng l&ecirc;n bề mặt đồng hồ bao gồm cả mặt v&agrave; d&acirc;y v&agrave; c&aacute;c khe r&atilde;nh của đồng hồ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9442 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-10-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	N&ecirc;n sử dụng x&agrave; ph&ograve;ng m&agrave;u trắng v&igrave; x&agrave; ph&ograve;ng m&agrave;u c&oacute; thể l&agrave;m bẩn d&acirc;y đồng hồ nếu đồng hồ bạn đang sở hữu l&agrave; m&agrave;u trắng.</p>
<ol start="4" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Giữ đồng hồ dưới v&ograve;i nước</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Khi bạn đ&atilde; d&ugrave;ng x&agrave; ph&ograve;ng để loại bỏ vết bẩn, h&atilde;y giữ đồng hồ dưới v&ograve;i nước chảy. Khi giữ đồng hồ dưới v&ograve;i nước, bạn h&atilde;y sử dụng c&aacute;c ng&oacute;n tay để l&agrave;m sạch x&agrave; ph&ograve;ng tr&ecirc;n chiếc đồng hồ. H&atilde;y xả kỹ dưới v&ograve;i nước v&agrave; chắc chắc rằng chiếc đồng hồ đ&atilde; sạch x&agrave; ph&ograve;ng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9443 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-11-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
<ol start="5" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		<em style="box-sizing: border-box;">Lau kh&ocirc; đồng hồ bằng vải sạch</em></li>
</ol>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px; text-align: justify;">
	Sau khi đ&atilde; l&agrave;m sạch x&agrave; ph&ograve;ng, h&atilde;y lau kh&ocirc; chiếc G-Shock của bạn bằng chiếc vải sạch v&agrave; mềm. Tốt nhất bạn n&ecirc;n l&agrave;m kh&ocirc; đồng hồ bằng vải mềm sau khi đ&atilde; l&agrave;m sạch qua c&aacute;c bước. Thao t&aacute;c n&agrave;y sẽ gi&uacute;p chiếc đồng hồ của bạn lu&ocirc;n sạch v&agrave; s&aacute;ng b&oacute;ng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(25, 25, 25); font-family: Roboto, sans-serif; font-size: 12.8px;">
	<img alt="" class="aligncenter size-full wp-image-9444 lazy-load-active" data-="" data-srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-510x383.jpg 510w" height="450" sizes="(max-width: 600px) 100vw, 600px" src="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12.jpg" srcset="https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12.jpg 600w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-300x225.jpg 300w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-197x148.jpg 197w, https://www.g-shock.com.vn/wp-content/uploads/2018/04/lam-the-nao-de-lam-sach-mot-chiec-g-shock-12-510x383.jpg 510w" style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" width="600" /></p>
')
SET IDENTITY_INSERT [dbo].[Tin_tuc] OFF
ALTER TABLE [dbo].[San_pham] ADD  DEFAULT ('Không có hình ?nh') FOR [Hinh_anh]
GO
ALTER TABLE [dbo].[San_pham] ADD  DEFAULT (getdate()) FOR [Ngay_Cap_nhat]
GO
ALTER TABLE [dbo].[Tai_khoan_Ad] ADD  DEFAULT ('Không có hình ?nh') FOR [Hinh_anh]
GO
ALTER TABLE [dbo].[Tai_khoan_Kh] ADD  DEFAULT ('Không có hình ?nh') FOR [Hinh_anh]
GO
ALTER TABLE [dbo].[Tin_tuc] ADD  DEFAULT ('không có hình ?nh') FOR [Hinh_anh]
GO
ALTER TABLE [dbo].[Tin_tuc] ADD  DEFAULT (getdate()) FOR [Ngay_Cap_nhat]
GO
ALTER TABLE [dbo].[Tin_tuc] ADD  DEFAULT ('N?i dung tin t?c không du?c d? tr?ng') FOR [Noi_dung]
GO
ALTER TABLE [dbo].[Binh_luan]  WITH CHECK ADD FOREIGN KEY([Id_san_pham])
REFERENCES [dbo].[San_pham] ([Id_san_pham])
GO
ALTER TABLE [dbo].[Binh_luan]  WITH CHECK ADD FOREIGN KEY([Id_tai_khoan_kh])
REFERENCES [dbo].[Tai_khoan_Kh] ([Id_Tai_khoan_kh])
GO
ALTER TABLE [dbo].[Binh_luan]  WITH CHECK ADD FOREIGN KEY([Id_tai_khoan_Ad])
REFERENCES [dbo].[Tai_khoan_Ad] ([Id_Tai_khoan_ad])
GO
ALTER TABLE [dbo].[Don_hang]  WITH CHECK ADD FOREIGN KEY([Id_san_pham])
REFERENCES [dbo].[San_pham] ([Id_san_pham])
GO
USE [master]
GO
ALTER DATABASE [Shop_watch] SET  READ_WRITE 
GO
