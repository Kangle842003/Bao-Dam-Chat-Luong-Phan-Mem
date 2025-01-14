USE [master]
GO
/****** Object:  Database [banthuoc]    Script Date: 6/13/2023 3:13:59 PM ******/
CREATE DATABASE [banthuoc]
 
GO
ALTER DATABASE [banthuoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banthuoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banthuoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banthuoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banthuoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [banthuoc] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [banthuoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banthuoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banthuoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banthuoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [banthuoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banthuoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banthuoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banthuoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banthuoc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [banthuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banthuoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [banthuoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [banthuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [banthuoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banthuoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [banthuoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [banthuoc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [banthuoc] SET  MULTI_USER 
GO
ALTER DATABASE [banthuoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [banthuoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [banthuoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [banthuoc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [banthuoc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [banthuoc] SET QUERY_STORE = OFF
GO
USE [banthuoc]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/13/2023 3:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'1596104163.Covid19.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'unnamed.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [DateImport], [Title], [ShortTitle], [Picture], [Describe]) VALUES (1, CAST(N'2023-06-10T00:00:00.000' AS DateTime), N'Mùa mưa nắng thất thường dễ gặp các bệnh gì?', N'1. Viêm mũi họng  Thời tiết và độ ẩm không khí thay đổi thất thường khiến cơ thể không thích ứng kịp. Đây chính là môi trường thuận lợi cho virus, vi khuẩn gây bệnh tấn công. Ngoài ra việc giải nhiệt không đúng cách cũng có thể làm tăng nguy cơ mắc bệnh:  – Mở quạt lớn, hạ nhiệt độ điều hòa thấp: việc này giúp nhanh chóng xua tan cơn nóng nhưng lại khiến vùng mũi họng bị khô và làm giảm các chất nhầy bảo vệ đường hô hấp, tạo điều kiện cho mầm bệnh xâm nhập.  – Tắm khi đang ra mồ hôi, mới vận động mạnh: đây là thời điểm nhịp tim nhanh, lỗ chân lông giãn nở, tắm ngay sẽ khiến mồ hôi không thoát ra được, làm cho cơ thể nhiễm nước, gây ớn lạnh, cảm, ho, viêm phổi…  – Ăn kem, uống nước đá: đồ lạnh làm giảm hoạt động của các tuyến tiết dịch bên trong cổ họng, làm cho họng bị khô, rát, khó chịu và đau, về lâu dài gây viêm họng.  Bên cạnh đó, cần tránh ra ngoài nắng sau khi ngồi lâu trong phòng máy lạnh vì có thể gây sốc nhiệt, cảm nắng, cũng là tiền đề của các bệnh đường hô hấp.  2. Cảm lạnh, cảm cúm  Triệu chứng đầu tiên của cảm cúm là sốt, ngứa, đau rát họng, hắt hơi, chảy nước mũi hoặc nghẹt mũi. Cơn ho thường xuất hiện sau khi có triệu chứng ở mũi, có thể có đỏ mắt, nhức mỏi, đau đầu nhẹ, có thể sốt đến 39 độ C.  Thông thường bệnh cảm cúm kéo dài trong khoảng 1 tuần. Do bệnh có nhiều triệu chứng giống với viêm mũi họng thông thường nên nhiều người chủ quan và không điều trị đúng cách, khiến cho bệnh cảm cúm chuyển nặng, có nguy cơ gây biến chứng nguy hiểm như viêm phổi, suy hô hấp.  3. Dị ứng  Nhiệt độ và độ ẩm thay đổi đột ngột có thể gây dị ứng thời tiết như viêm mũi dị ứng. Viêm mũi dị ứng có các triệu chứng khá giống với viêm mũi thông thường, bao gồm sưng mũi, hắt hơi, nghẹt mũi. Cách phân biệt hai loại này là viêm mũi dị ứng sẽ cải thiện sau khi dùng thuốc kháng dị ứng.  Để phòng tránh viêm mũi dị ứng khi thời tiết thất thường, nên chủ động phòng tránh bằng cách vệ sinh mũi thường xuyên với nước muối. Có thể gặp bác sĩ, dược sĩ để được tư vấn dùng các thuốc giúp giảm triệu chứng (thuốc kháng dị ứng, thuốc nhỏ mắt, nhỏ mũi có steroid).  4. Ngộ độc thực phẩm  Thời tiết nóng ẩm dễ khiến thức ăn ôi thiu do vi khuẩn sinh sôi. Ruồi, nhặng, chuột, gián… cũng phát triển nhiều là nguy cơ lây lan mầm bệnh. Nếu không bảo quản thực phẩm đúng cách có thể gây ngộ độc, tiêu chảy.  Vì vậy cần lưu ý hạn chế để thức ăn qua đêm. Trong trường hợp đồ ăn dư nhiều, nên bảo quản trong tủ lạnh và có phương pháp bảo quản phù hợp với từng loại thức ăn.  Để giữ sức khỏe trong thời tiết mưa nắng thất thường, cần chú ý: – Giữ nơi ở thoáng gió, sạch sẽ, mát mẻ nhưng nhiệt độ không quá chênh lệch với bên ngoài. Không để gió quạt, gió điều hòa thổi trực tiếp vào người. – Cung cấp đủ nước cho cơ thể, chuẩn bị áo mưa đề phòng thời tiết thay đổi đột ngột, giữ ấm cho cơ thể khi vừa đi mưa về. – Bổ sung vitamin C tăng cường sức đề kháng, ăn uống sạch sẽ, vệ sinh. – Vệ sinh mũi họng hàng ngày bằng nước muối sinh lý, rửa tay thường xuyên, đặc biệt sau khi hắt hơi hay tiếp xúc với người đang cảm.', N'MuaNangThatThuong.jpg', N'Thời tiết nắng nóng kèm những cơn mưa đột ngột dễ ảnh hưởng xấu đến sức khỏe, nhất là với những người có sức đề kháng kém như trẻ em, người già… Vì thế không nên chủ quan mà cần chủ động giữ sức khỏe, ngăn ngừa nguy cơ mắc các bệnh dưới đây.')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Nước Ngoài', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Việt Nam', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (6, N'levanc', N'levanc', N'levanc', N'Hà Nội', N'levanc@gmail.com                                                                                    ', N'0123245678', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Efferalgan (500mg)', CAST(35000 AS Decimal(18, 0)), CAST(41000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 40, 3, 1, N'P00126_1_l.jpg', 1, N'Thuốc dùng điều trị các chứng đau hoặc sốt như đau đầu, tình trạng như cúm, đau răng, nhức mỏi cơ, đau bụng kinh.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Dị ứng với Paracetamol.<br style="box-sizing: border-box;" />C&oacute; bệnh gan nặng.<span style="box-sizing: border-box; font-weight: bolder;"><br style="box-sizing: border-box;" /></span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span><br style="box-sizing: border-box;" />Điều trị c&aacute;c chứng đau hoặc sốt như đau đầu, c&aacute;c t&igrave;nh trạng như c&uacute;m, đau răng, nhức mỏi cơ, đau bụng kinh.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:</span><br style="box-sizing: border-box;" />Dạng thuốc n&agrave;y chỉ sử dụng cho người lớn v&agrave; trẻ em c&oacute; c&acirc;n nặng tr&ecirc;n 17kg.<br style="box-sizing: border-box;" />Kh&ocirc;ng vượt qu&aacute; 3000mg Paracetamol một ng&agrave;y (khoảng 6 vi&ecirc;n một ng&agrave;y). C&oacute; thể tăng đến 4000mg một ng&agrave;y (khoảng 8 vi&ecirc;n một ng&agrave;y).<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:</span><br style="box-sizing: border-box;" />Trường hợp ăn ki&ecirc;ng muối hoặc ăn nhạt cần nhớ l&agrave; trong mỗi vi&ecirc;n thuốc c&oacute; chứa 412.4mg Na t&iacute;nh khẩu phần ăn h&agrave;ng ng&agrave;y.<br style="box-sizing: border-box;" />Kh&ocirc;ng n&ecirc;n d&ugrave;ng thuốc n&agrave;y tr&ecirc;n bệnh nh&acirc;n kh&ocirc;ng dung nạp với Fructose.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span><br style="box-sizing: border-box;" />Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:&nbsp;</span>Paracetamol 500mg, t&aacute; dược vừa đủ.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 16 vi&ecirc;n<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Ph&aacute;p<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:&nbsp;</span>Bristol Myers Squibb</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Kh&ocirc;ng d&ugrave;ng qu&aacute; liều quy định. Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Poncityl 500mg', CAST(40000 AS Decimal(18, 0)), CAST(46000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 40, 2, 2, N'P11161_1_l.jpg', 1, N'oncityl 500mg giảm triệu chứng các trường hợp: Nhức đầu, đau nửa đầu, đau cơ, đau do chấn thương, đau sau khi sinh', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:&nbsp;</span><br style="box-sizing: border-box;" />Mẫn cảm với một trong c&aacute;c th&agrave;nh phần của thuốc, c&aacute;c thuốc kh&aacute;ng vi&ecirc;m kh&ocirc;ng steroid kh&aacute;c.<br style="box-sizing: border-box;" />Bệnh nh&acirc;n suy thận, suy gan, lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng tiến triển.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" />Chỉ định:</span>&nbsp;Giảm triệu chứng c&aacute;c trường hợp: Nhức đầu, đau nửa đầu, đau cơ, đau do chấn thương, đau sau khi sinh, đau hậu phẫu, đau răng, đau bụng kinh v&agrave; rong kinh.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:&nbsp;</span><br style="box-sizing: border-box;" />N&ecirc;n uống trong bữa ăn, mỗi đợt điều trị kh&ocirc;ng n&ecirc;n qu&aacute; 7 ng&agrave;y.<br style="box-sizing: border-box;" />Người lớn v&agrave; trẻ em tr&ecirc;n 12 tuổi: Uống 1 vi&ecirc;n/lần, ng&agrave;y 3 lần.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; (độ ẩm &le; 70%), nhiệt độ &le; 30<sup style="box-sizing: border-box;">o</sup>C, tr&aacute;nh &aacute;nh s&aacute;ng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" />Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Acid mefenamic&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 500 mg<br style="box-sizing: border-box;" />T&aacute; dược vừa đủ&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;1 vi&ecirc;n<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 10 vỉ x 10 vi&ecirc;n<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:</span>&nbsp;Mekophar</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><em style="box-sizing: border-box;">Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Eugica giảm ho', CAST(55000 AS Decimal(18, 0)), CAST(63000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 40, 4, 2, N'P00252_1_l.jpg', 1, N'Eugica dùng làm điều trị các chứng ho, đau họng, sổ mũi, cảm cúm. Làm loãng niêm dịch, làm dịu ho', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Qu&aacute; mẫn cảm với c&aacute;c th&agrave;nh phần của thuốc. Ho do suyễn, ho lao, suy h&ocirc; hấp, trẻ em dưới 30 th&aacute;ng tuổi, trẻ em c&oacute; tiền sử động kinh hoặc sốt cao.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span><br style="box-sizing: border-box;" />Điều trị c&aacute;c chứng ho, đau họng, sổ mũi, cảm c&uacute;m. L&agrave;m lo&atilde;ng ni&ecirc;m dịch, l&agrave;m dịu ho.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:</span><br style="box-sizing: border-box;" />Trẻ em tr&ecirc;n 30 th&aacute;ng tuổi: Uống 1 vi&ecirc;n x 3 lần/ng&agrave;y.<br style="box-sizing: border-box;" />Người lớn: Uống 2 vi&ecirc;n x 3 lần/ng&agrave;y.<br style="box-sizing: border-box;" />Hoặc theo chỉ dẫn của Thầy thuốc.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:</span><br style="box-sizing: border-box;" />Menthol c&oacute; t&iacute;nh ức chế h&ocirc; hấp qua đường thở (h&iacute;t v&agrave;o mũi) nhất l&agrave; đối với trẻ con &iacute;t tuổi, trẻ sơ sinh.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:&nbsp;</span><br style="box-sizing: border-box;" />Bảo quản ở nhiệt độ kh&ocirc;ng qu&aacute; 30 độ C.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:<br style="box-sizing: border-box;" /></span>Eucalyptol 100mg, Menthol 0.5mg, Tinh dầu tần 0.18mg, Tinh dầu gừng 0.5mg. T&aacute; dược vừa đủ 1 vi&ecirc;n nang mềm.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 10 vỉ x 10 vi&ecirc;n<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:&nbsp;</span>Th&aacute;i Lan<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:&nbsp;</span>Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Giảm đau Jex Max', CAST(290000 AS Decimal(18, 0)), CAST(315000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 37, 5, 1, N'P06376_1_l.jpg', 1, N'Jex Max Paul Brands giúp giảm đau, tăng cường tái tạo sụn khớp và phần xương dưới sụn, tăng độ bền và dẻo dai cho khớp', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng:&nbsp;</span><span style="box-sizing: border-box; font-weight: bolder;"><br style="box-sizing: border-box;" /></span>D&agrave;nh cho người tr&ecirc;n 18 tuổi.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Peptan: 200mg, Undenatured Type II Collagen :40mg, White Willow Bark 15%: 250mg, Chondroitin Sulfate 90% :100mg, Bromrlain 2400 GDU : 60GDU&hellip;</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng:</span><br style="box-sizing: border-box;" />Gi&uacute;p giảm đau, tăng cường t&aacute;i tạo sụn khớp v&agrave; phần xương dưới sụn, tăng độ bền v&agrave; dẻo dai cho khớp.<br style="box-sizing: border-box;" />Giảm đau xương khớp cấp v&agrave; m&atilde;n t&iacute;nh.<br style="box-sizing: border-box;" />Hỗ trợ điều trị vi&ecirc;m khớp: Vi&ecirc;m xương khớp, vi&ecirc;m đa khớp.<br style="box-sizing: border-box;" />Hỗ trợ v&agrave; ph&ograve;ng ngừa lo&atilde;ng xương.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng &amp; c&aacute;ch d&ugrave;ng:</span><br style="box-sizing: border-box;" />Ng&agrave;y uống 2 lần s&aacute;ng, chiều, mỗi lần 1 vi&ecirc;n. Uống sau bữa ăn.<br style="box-sizing: border-box;" />C&oacute; thể uống 3 vi&ecirc;n/ng&agrave;y trong trường hợp bệnh nặng. N&ecirc;n d&ugrave;ng thường xuy&ecirc;n để đạt kết quả tốt nhất.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:<br style="box-sizing: border-box;" /></span>Nơi&nbsp;kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đ&oacute;ng g&oacute;i:&nbsp;</span>Lọ 30 vi&ecirc;n</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Mỹ</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Mỹ</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thể thuốc chữa bệnh.<br style="box-sizing: border-box;" />Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'A.T Desloratadin 2.5mg', CAST(100000 AS Decimal(18, 0)), CAST(112000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 37, 1, 1, N'P12776_1_l.jpg', 1, N'A.T Desloratadin 2.5mg điều trị viêm mũi dị ứng: Sổ mũi, hắt hơi, nghẹt mũi, ngứa mũi họng và ngứa, chảy nước mắt. ', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:&nbsp;</span>Mẫn cảm với desloratadin hoặc c&aacute;c th&agrave;nh phần kh&aacute;c của thuốc.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span>&nbsp;L&agrave;m giảm triệu chứng trong c&aacute;c bệnh:<br style="box-sizing: border-box;" />Vi&ecirc;m mũi dị ứng: Sổ mũi, hắt hơi, nghẹt mũi, ngứa mũi họng v&agrave; ngứa, chảy nước mắt<br style="box-sizing: border-box;" />Phản ứng dị ứng&nbsp;da: M&agrave;y đay, ngứa, ph&aacute;t ban<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:<br style="box-sizing: border-box;" /></span>Người lớn v&agrave; trẻ em tr&ecirc;n 12 tuổi: Uống mỗi ng&agrave;y 2 ống<br style="box-sizing: border-box;" />Trẻ em từ 2-5 tuổi: Uống mỗi ng&agrave;y 1/2 ống<br style="box-sizing: border-box;" />Trẻ em từ 5-11 tuổi: Uống mỗi ng&agrave;y 1 ống<br style="box-sizing: border-box;" />Uống 1 lần duy nhất trong ng&agrave;y<br style="box-sizing: border-box;" />Người bị suy gan, suy thận nặng uống 2 ng&agrave;y 1 ống.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:<br style="box-sizing: border-box;" /></span>Thận trọng với bệnh nh&acirc;n suy gan.<br style="box-sizing: border-box;" />An to&agrave;n v&agrave; hiệu quả khi d&ugrave;ng desloratadin cho trẻ em dưới 2 tuổi chưa được x&aacute;c định.<br style="box-sizing: border-box;" />Khi sử dụng desloratadin, c&oacute; nguy cơ kh&ocirc; miệng, đặc biệt ở người cao tuổi, v&agrave; tăng nguy cơ s&acirc;u răng.Do đ&oacute;, cần phải vệ sinh răng miệng sạch sẽ khi d&ugrave;ng desloratadin.<br style="box-sizing: border-box;" />Phụ nữ c&oacute; thai: Desloratadine chưa được nghi&ecirc;n cứu đầy đủ về khả năng t&aacute;c động ở phụ nữ mang thai.<br style="box-sizing: border-box;" />Đối với b&agrave; mẹ cho con b&uacute;: Desloratadine được b&agrave;i tiết v&agrave;o sữa mẹ. Do đ&oacute; chỉ d&ugrave;ng desloratadin cho phụ nữ c&oacute; thai v&agrave; cho con b&uacute; khi cần thiết, với liều thấp v&agrave; trong thời gian ngắn.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; m&aacute;t, nhiệt độ kh&ocirc;ng qu&aacute; 30 độ C</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" />Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Desloratadine&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.2.5mg<br style="box-sizing: border-box;" />T&aacute; dược vừa đủ&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.5ml<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 30 ống x 5ml<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:</span>&nbsp;An Thien Pharma</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'PROANTIOBIOPLUS', CAST(400000 AS Decimal(18, 0)), CAST(450000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 35, 6, 1, N'P17599_1-1-600x600.jpg', 1, N'Giúp bổ sung lợi khuẩn, hỗ trợ làm giảm các triệu chứng rối loạn tiêu hóa do loạn khuẩn đường ruột.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần</span><br style="box-sizing: border-box;" />Trong mỗi g&oacute;i 1g c&oacute; chứa:<br style="box-sizing: border-box;" />Lactobacillus acidophilus 1&times;10<sup style="box-sizing: border-box;">8</sup>CFU<br style="box-sizing: border-box;" />Phụ liệu: Lactose, amidon, maltitol, aerosil, polyvinylpyrrolidone (PVP) K30, hương liệu vừa đủ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng</span><br style="box-sizing: border-box;" />Gi&uacute;p bổ sung lợi khuẩn, hỗ trợ l&agrave;m giảm c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a do loạn khuẩn đường ruột như: chướng bụng, đầy hơi, t&aacute;o b&oacute;n, đi ngo&agrave;i ph&acirc;n sống, ti&ecirc;u chảy, ăn uống kh&oacute; ti&ecirc;u.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng</span><br style="box-sizing: border-box;" />Người ti&ecirc;u h&oacute;a k&eacute;m, ăn kh&ocirc;ng ti&ecirc;u, đi ngo&agrave;i ph&acirc;n sống, t&aacute;o b&oacute;n, đầy bụng, kh&oacute; ti&ecirc;u, ti&ecirc;u chảy do loạn khuẩn đường ruột. Người d&ugrave;ng kh&aacute;ng sinh liều cao hoặc kh&aacute;ng sinh k&eacute;o d&agrave;i g&acirc;y loạn khuẩn đường ruột.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&aacute;ch d&ugrave;ng</span><br style="box-sizing: border-box;" />Trẻ 1-6 tuổi: Uống 2 g&oacute;i/ng&agrave;y, ng&agrave;y uống 2 lần, mỗi lần 1 g&oacute;i.<br style="box-sizing: border-box;" />Trẻ tr&ecirc;n 6 tuổi v&agrave; người lớn: Uống 4 g&oacute;i/ng&agrave;y, ng&agrave;y uống 2 lần, mỗi lần 2 g&oacute;i.<br style="box-sizing: border-box;" />Trẻ dưới 1 tuổi: Tham khảo &yacute; kiến thầy thuốc trước khi d&ugrave;ng.<br style="box-sizing: border-box;" />Nếu đang uống kh&aacute;ng sinh: N&ecirc;n d&ugrave;ng sản phẩm n&agrave;y xen kẽ giữa c&aacute;c lần uống kh&aacute;ng sinh v&agrave; c&aacute;ch lần uống kh&aacute;ng sinh 2 giờ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng. Nhiệt độ dưới 30 độ C.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Lưu &yacute;:</em><br style="box-sizing: border-box;" />Kh&ocirc;ng sử dụng cho người mẫn cảm với bất kỳ th&agrave;nh phần n&agrave;o của sản phẩm.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Thương nh&acirc;n chịu tr&aacute;ch nhiệm về chất lượng sản phẩm:</span>&nbsp;C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ sinh phẩm Nam Việt</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Nh&agrave; m&aacute;y sản xuất &ndash; C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ sinh phẩm Nam Việt<br style="box-sizing: border-box;" />Địa chỉ: L&ocirc; A3-A4 Cụm C&ocirc;ng nghiệp vừa v&agrave; nhỏ, x&atilde; Di&ecirc;n Ph&uacute;, huyện Di&ecirc;n Kh&aacute;nh, tỉnh Kh&aacute;nh H&ograve;a, Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Số ĐKSP:</span>&nbsp;6449/2020/ĐKSP</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Số XNQC:&nbsp;</span>2396/2020/XNQC-ATTP</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Thực phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Viên dầu gấc', CAST(20000 AS Decimal(18, 0)), CAST(27000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 12, 7, 2, N'P11040_1_l.jpg', 1, N'Viên dầu gấc PV giúp sáng mắt, hỗ trợ làm giảm các triệu chứng khô mắt, mờ mắt, quáng gà, làm đẹp da và sáng da', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span>&nbsp;Dầu gấc 400mg, phụ liệu.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng:</span>&nbsp;Gi&uacute;p s&aacute;ng mắt, hỗ trợ l&agrave;m giảm c&aacute;c triệu chứng kh&ocirc; mắt, mờ mắt, qu&aacute;ng g&agrave;. Gi&uacute;p l&agrave;m đẹp da, s&aacute;ng da.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Hướng dẫn sử dụng:</span><br style="box-sizing: border-box;" />Người lớn: Ng&agrave;y uống 4 vi&ecirc;n, mỗi lần uống 2 vi&ecirc;n, uống v&agrave;o buổi s&aacute;ng v&agrave; buổi trưa sau bữa ăn.<br style="box-sizing: border-box;" />Trẻ em độ tuổi đến trường (từ 6 tuổi trở l&ecirc;n): Ng&agrave;y uống 2 vi&ecirc;n, mỗi lần uống 1 vi&ecirc;n, uống v&agrave;o buổi s&aacute;ng v&agrave; buổi trưa sau bữa ăn.<br style="box-sizing: border-box;" />Để dưỡng da: Ng&agrave;y uống 4 vi&ecirc;n chia 2 lần.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Chai 100 vi&ecirc;n</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (8, N'Aerius (0.5mg/ml)', CAST(70000 AS Decimal(18, 0)), CAST(79000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 10, 1, 1, N'P01189_1_l.jpg', 1, N'Siro làm giảm nhanh các triệu chứng viêm mũi dị ứng thuốc: Hắt hơi, sổ mũi, ngứa mũi, sung huyết, nghẹt mũi, ngứa', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Qu&aacute; mẫn cảm với c&aacute;c th&agrave;nh phần của thuốc.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span><br style="box-sizing: border-box;" />L&agrave;m giảm nhanh c&aacute;c triệu chứng li&ecirc;n quan đến vi&ecirc;m mũi dị ứng, hắt hơi, sổ mũi, ngứa mũi, sung hết, nghẹt mũi, chảy nước mắt v&agrave; đỏ mắt, ngứa họng v&agrave; ho.<br style="box-sizing: border-box;" />Giảm c&aacute;c triệu chứng li&ecirc;n quan đến m&agrave;y đay như giảm ngứa, giảm k&iacute;ch cỡ v&agrave; số lượng ban.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:<br style="box-sizing: border-box;" /></span>Người lớn v&agrave; thanh thiếu ni&ecirc;n (&gt; 12 tuổi): Một vi&ecirc;n n&eacute;n bao film Aerius 5mg hoặc 10ml (5 mg) Aerius sir&ocirc;, uống 1 lần/ng&agrave;y uống c&ugrave;ng hoặc kh&ocirc;ng c&ugrave;ng bữa ăn, để giảm c&aacute;c triệu chứng li&ecirc;n quan đến vi&ecirc;m mũi dị ứng (bao gồm vi&ecirc;m mũi dị ứng kh&ocirc;ng li&ecirc;n tục v&agrave; vi&ecirc;m mũi dị ứng k&eacute;o d&agrave;i) v&agrave; m&agrave;y đay. Chỉ d&ugrave;ng đường uống.<br style="box-sizing: border-box;" />Trẻ từ 6 đến 11 tuổi: 5ml (2.5mg) Aerius sir&ocirc;, uống 1 lần/ng&agrave;y c&ugrave;ng hoặc kh&ocirc;ng c&ugrave;ng bữa ăn, để giảm c&aacute;c triệu chứng li&ecirc;n quan đến vi&ecirc;m mũi dị ứng (bao gồm vi&ecirc;m mũi dị ứng kh&ocirc;ng li&ecirc;n tục v&agrave; vi&ecirc;m mũi dị ứng k&eacute;o d&agrave;i) v&agrave; m&agrave;y đay.<br style="box-sizing: border-box;" />Trẻ từ 1 đến 5 tuổi: 2.5ml (1.25mg) Aerius sir&ocirc;, uống 1 lần/ng&agrave;y c&ugrave;ng hoặc kh&ocirc;ng c&ugrave;ng bữa ăn, để giảm c&aacute;c triệu chứng li&ecirc;n quan đến vi&ecirc;m mũi dị ứng (bao gồm vi&ecirc;m mũi dị ứng kh&ocirc;ng li&ecirc;n tục v&agrave; vi&ecirc;m mũi dị ứng k&eacute;o d&agrave;i) v&agrave; m&agrave;y đay.<br style="box-sizing: border-box;" />Trẻ từ 6 th&aacute;ng đến 11 th&aacute;ng tuổi: 2ml (1mg) Aerius sir&ocirc;, uống 1 lần/ng&agrave;y c&ugrave;ng hoặc kh&ocirc;ng c&ugrave;ng bữa ăn, để giảm c&aacute;c triệu chứng li&ecirc;n quan đến vi&ecirc;m mũi dị ứng (bao gồm vi&ecirc;m mũi dị ứng kh&ocirc;ng li&ecirc;n tục v&agrave; vi&ecirc;m mũi dị ứng k&eacute;o d&agrave;i) v&agrave; m&agrave;y đay.<br style="box-sizing: border-box;" />Vi&ecirc;m mũi dị ứng kh&ocirc;ng li&ecirc;n tục (triệu chứng xuất hiện &lt; 4 ng&agrave;y/tuần hoặc 4 ng&agrave;y/tuần v&agrave; k&eacute;o d&agrave;i &gt; 4 tuần), c&oacute; thể điều trị li&ecirc;n tục trong thời gian tiếp x&uacute;c với dị nguy&ecirc;n.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:<br style="box-sizing: border-box;" /></span>Thận trọng khi d&ugrave;ng cho phụ nữ c&oacute; thai v&agrave; phụ nữ đang cho con b&uacute;.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span><br style="box-sizing: border-box;" />Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:</span><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:&nbsp;</span>Mỗi&nbsp;ml chứa 0.5mg desloratadine, t&aacute; dược.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 1 chai 60ml<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Bỉ<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:</span>&nbsp;Merck Sharp &amp; Dohme</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Kh&ocirc;ng d&ugrave;ng qu&aacute; liều quy định. Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (9, N'Voltaren 100mg Suppo', CAST(80000 AS Decimal(18, 0)), CAST(89000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 32, 2, 2, N'P03076_1-1-600x600.jpg', 1, N'Voltaren 100mg điều trị các triệu chứng cho người mắc bệnh đau vai cấp, viêm gân, bệnh nhân Gout, đau lưng', N'<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Kh&ocirc;ng d&ugrave;ng cho người bị mẫn cảm với thuốc NSAID.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng thuốc cho bệnh nh&acirc;n bị lo&eacute;t dạ d&agrave;y-t&aacute; tr&agrave;ng thể tiến triển.<br style="box-sizing: border-box;" />Chống chỉ định cho bệnh nh&acirc;n bị co thắt phế quản, bệnh nh&acirc;n bị hen, c&oacute; bệnh về tim mạch hoặc bệnh nh&acirc;n suy gan, suy thận nặng.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng cho bệnh nh&acirc;n đang điều trị bằng thuốc chống đ&ocirc;ng m&aacute;u như Coumarin,&hellip;</p>
<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" />Chỉ định:<br style="box-sizing: border-box;" /></span>Điều trị cho bệnh nh&acirc;n bị c&aacute;c loại vi&ecirc;m khớp mạn t&iacute;nh k&eacute;o d&agrave;i như vi&ecirc;m đa khớp dạng thấp, vi&ecirc;m cột sống d&iacute;nh khớp, vi&ecirc;m đốt sống, đau đớn do tho&aacute;i h&oacute;a khớp,&hellip;<br style="box-sizing: border-box;" />Điều trị c&aacute;c triệu chứng cho người mắc bệnh đau vai cấp, vi&ecirc;m g&acirc;n, bệnh nh&acirc;n Gout, đau lưng,&hellip;<br style="box-sizing: border-box;" />Điều trị cho người bị đau nặng sau phẫu thuật như sau đẻ, sau mổ, sau phẫu thuật thẩm mĩ, giảm cơn đau bụng kinh.<br style="box-sizing: border-box;" />Điều trị vi&ecirc;m đa khớp dạng thấp thiếu ni&ecirc;n.<br style="box-sizing: border-box;" />Điều trị cho bệnh nh&acirc;n bị cơn thống phong cấp.<br style="box-sizing: border-box;" />Giảm đau tại chỗ: gi&aacute;c mạc, thủy tinh thể,&hellip;<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:<br style="box-sizing: border-box;" /></span>Liều d&ugrave;ng để giảm đau, chống vi&ecirc;m, hạ sốt: ng&agrave;y đặt 1 vi&ecirc;n, n&ecirc;n d&ugrave;ng trước khi đi ngủ.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:&nbsp;</span>Nơi kh&ocirc; tho&aacute;ng,tr&aacute;nh &aacute;nh nắng.</p>
<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" />Th&agrave;nh phần:<br style="box-sizing: border-box;" /></span>Diclofenac natri 100mg<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</span>&nbsp;Hộp 1 vỉ x 5 vi&ecirc;n<span style="box-sizing: border-box; font-weight: bolder;"><br style="box-sizing: border-box;" />Xuất xứ thương hiệu:&nbsp;</span>Ph&aacute;p<span style="box-sizing: border-box; font-weight: bolder;"><br style="box-sizing: border-box;" />Nh&agrave; sản xuất:&nbsp;</span>Delpharm Huningue S.A.S</p>
<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em></p>
<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Mọi th&ocirc;ng tin tr&ecirc;n đ&acirc;y chỉ mang t&iacute;nh chất tham khảo. Việc sử dụng thuốc phải tu&acirc;n theo hướng dẫn của b&aacute;c sĩ chuy&ecirc;n m&ocirc;n.</em></p>
<p class="p1" style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (10, N'Panadol Extra (180 viên/hộp)', CAST(200000 AS Decimal(18, 0)), CAST(214000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 15, 3, 2, N'P01392_1_l.jpg', 1, N'Panadol Extra có chứa Paracetamol giúp giảm đau – hạ sốt hữu hiệu. Điều trị đau nhẹ đến đau vừa và hạ sốt như đau đầu, đau nửa đầu, đau bụng kinh, đau xương, sốt và đau sau khi tiêm Vacxin.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Kh&ocirc;ng d&ugrave;ng cho c&aacute;c bệnh nh&acirc;n c&oacute; tiền sử qu&aacute; mẫn với Paracetamol, Caffeine hoặc bất kỳ th&agrave;nh phần n&agrave;o của thuốc.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span><br style="box-sizing: border-box;" />Giảm đau, hạ sốt. Điều trị c&aacute;c triệu chứng đau đầu, đau cơ, đau bụng kinh, đau họng, đau cơ xương&hellip;<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:<br style="box-sizing: border-box;" /></span>Người lớn (kể cả người cao tuổi) v&agrave; trẻ em từ 12 tuổi trở l&ecirc;n. Chỉ d&ugrave;ng đường uống.<br style="box-sizing: border-box;" />N&ecirc;n d&ugrave;ng 500mg paracetamol/ 65mg caffeine đến 1000mg paracetamol/ 130mg caffeine (1 hoặc 2 vi&ecirc;n) mỗi 4 đến 6 giờ nếu cần.<br style="box-sizing: border-box;" />Liều tối đa h&agrave;ng ng&agrave;y: 4000mg/520mg (paracetamol/ caffeine).<br style="box-sizing: border-box;" />Thời gian tối thiểu d&ugrave;ng liều lặp lại: 4 giờ.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng c&aacute;c thuốc kh&aacute;c c&oacute; chưa paracetamol.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng qu&aacute; liều chỉ định.<br style="box-sizing: border-box;" />Trẻ em dưới 12 tuổi: Kh&ocirc;ng khuyến nghị d&ugrave;ng thuốc n&agrave;y cho trẻ em dưới 12 tuổi.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:<br style="box-sizing: border-box;" /></span>Thận trọng khi d&ugrave;ng thuốc k&eacute;o d&agrave;i, nhất l&agrave; trong những trường hợp bệnh nh&acirc;n bị suy thận hay suy gan, d&ugrave;ng qu&aacute; liều tối đa được khuyến c&aacute;o. Phụ nữ c&oacute; thai v&agrave; phụ nữ đang cho con b&uacute;.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span><br style="box-sizing: border-box;" />Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, dưới 30 độ C.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Mỗi vi&ecirc;n chứa Paracetamol: 500mg v&agrave; Caffeine: 65 mg<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 15 vỉ x 12 vi&ecirc;n<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:&nbsp;</span>Anh<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:</span>&nbsp;<span style="box-sizing: border-box;" data-sheets-value="{">GlaxoSmithKline</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Kh&ocirc;ng d&ugrave;ng qu&aacute; liều quy định. Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (11, N'Betadine Antiseptic 10%', CAST(30000 AS Decimal(18, 0)), CAST(34000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 20, 11, 2, N'P06066_1_l.jpg', 1, N'Dung dịch sát khuẩn Betadine Antiseptic 10% giúp diệt vi khuẩn, vi rút, nấm, bào tử, đơn bào, nấm men.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:<br style="box-sizing: border-box;" /></span>Mẫn cảm với iod hoặc providon.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng thuốc khi c&oacute; sự hoạt động qu&aacute; mức của tuyến gi&aacute;p.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng thuốc trước khi l&agrave;m nhấp nh&aacute;y đồ iod ph&oacute;ng xạ hoặc điều trị iod ph&oacute;ng xạ trong ung thư biểu m&ocirc; tuyến gi&aacute;p.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng cho trẻ sơ sinh c&oacute; c&acirc;n nặng nhỏ hơn 1500g.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng<br style="box-sizing: border-box;" />Chỉ định:<br style="box-sizing: border-box;" /></span>Để diệt mầm bệnh ở da, vết thương v&agrave; ni&ecirc;m mạc.<br style="box-sizing: border-box;" />S&aacute;t khuẩn da v&agrave; ni&ecirc;m mạc trước khi mổ.<br style="box-sizing: border-box;" />Ngăn ngừa nhiễm khuẩn vết thương sau khi phẫu thuật.<br style="box-sizing: border-box;" />Đề ph&ograve;ng nhiễm khuẩn khi bỏng, vết r&aacute;ch, vết m&agrave;i m&ograve;n.<br style="box-sizing: border-box;" />Điều trị những trường hợp kh&aacute;c nhau về nhiễm khuẩn, vi r&uacute;t, đơn b&agrave;o, nấm ở da, chốc lở.<br style="box-sizing: border-box;" />Gi&uacute;p vệ sinh c&aacute; nh&acirc;n h&agrave;ng ng&agrave;y.<br style="box-sizing: border-box;" />Tiệt khuẩn tay để l&agrave;m vệ sinh hoặc trước khi mổ.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:</span><br style="box-sizing: border-box;" />Phết dung dịch (kh&ocirc;ng pha lo&atilde;ng) d&agrave;n đều v&agrave;o nơi cần điều trị. Sau khi để kh&ocirc; sẽ tạo được một lớp phim th&ocirc;ng kh&iacute;, rất dễ rửa sạch bằng nước. C&oacute; thể b&ocirc;i thuốc nhiều lần trong ng&agrave;y.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Thận trọng:<br style="box-sizing: border-box;" /></span>Chỉ d&ugrave;ng tại chỗ. Kh&ocirc;ng l&agrave;m n&oacute;ng thuốc trước khi b&ocirc;i.<br style="box-sizing: border-box;" />Bệnh nh&acirc;n bướu cổ, bướu tuyến gi&aacute;p, trẻ sơ sinh v&agrave; trẻ nhỏ.<br style="box-sizing: border-box;" />Phụ nữ c&oacute; thai v&agrave; cho con b&uacute;.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span><br style="box-sizing: border-box;" />Dưới 30 độ C, nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 1 chai 30ml<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:&nbsp;</span>Mỹ<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:&nbsp;</span>Mundipharma</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Kh&ocirc;ng d&ugrave;ng qu&aacute; liều quy định. Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">*Pharmacity cam kết chỉ b&aacute;n sản phẩm c&ograve;n d&agrave;i hạn sử dụng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Giảm tê nhức chân tay', CAST(70000 AS Decimal(18, 0)), CAST(78000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 12, 5, 2, N'P14505_1_l.jpg', 1, N'Bảo Nguyên với 100% thành phần từ thiên nhiên giúp tăng cường lưu thông khí huyết, giảm các triệu chứng tê nhức chân tay.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng:<br style="box-sizing: border-box;" /></span>Người bị ch&acirc;n tay t&ecirc; mỏi, ch&acirc;n tay lạnh, t&ecirc; b&igrave;, t&ecirc; cứng, t&ecirc; buốt, co mỏi, c&aacute;c khớp xương đau nhức, vai g&aacute;y v&agrave; lưng gối đau mỏi.<br style="box-sizing: border-box;" />Người bị đau thần kinh tọa, d&acirc;y thần kinh ngoại bi&ecirc;n.<br style="box-sizing: border-box;" />Người bị tho&aacute;i h&oacute;a, tho&aacute;t vị đĩa đệm đốt sống cổ, đốt sống thắt lưng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Cao độc hoạt, cao tang k&yacute; sinh, cao đương quy, cao xuy&ecirc;n khung, cao ngưu tất, cao bạch thược, cao ph&ograve;ng phong, cao tục đoạn, cao thục địa, cao đẳng s&acirc;m, cao nhũ hương, cao tần giao, cao quế chi, cao &yacute; dĩ nam, cao mộc th&ocirc;ng, cao cam thảo.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng:</span><br style="box-sizing: border-box;" />Giảm c&aacute;c triệu chứng t&ecirc; như t&ecirc; mỏi, t&ecirc; b&igrave;, t&ecirc; cứng, t&ecirc; buốt, co cứng ch&acirc;n tay.<br style="box-sizing: border-box;" />Giảm đau nhức vai g&aacute;y, h&ocirc;ng gối, đau d&acirc;y thần kinh tọa v&agrave; d&acirc;y thần kinh ngoại bi&ecirc;n.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng &amp; c&aacute;ch d&ugrave;ng:</span><br style="box-sizing: border-box;" />Uống sau khi ăn 30 ph&uacute;t với nhiều nước.<br style="box-sizing: border-box;" />Hỗ trợ điều trị: 3 vi&ecirc;n/lần, 2 lần/ng&agrave;y.<br style="box-sizing: border-box;" />Ph&ograve;ng bệnh: 1 &ndash; 2 vi&ecirc;n/lần, 2 lần/ng&agrave;y, c&oacute; thể d&ugrave;ng l&acirc;u d&agrave;i.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:<br style="box-sizing: border-box;" /></span>Nơi&nbsp;kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 3 vỉ x 10 vi&ecirc;n</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thể thuốc chữa bệnh.<br style="box-sizing: border-box;" />Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (13, N'Men vi sinh Yunpro', CAST(30000 AS Decimal(18, 0)), CAST(36000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 13, 6, 1, N'P13128_1_l.jpg', 1, N'Thực phẩm bảo vệ sức khỏe men vi sinh Yunpro giúp bổ sung các vi sinh vật có ích, ức chế các vi khuẩn có hại', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng<br style="box-sizing: border-box;" /></span>Người bị rối loạn ti&ecirc;u h&oacute;a do loạn khuẩn đường ruột với c&aacute;c biểu hiện: ti&ecirc;u chảy, t&aacute;o b&oacute;n, đi ngo&agrave;i ph&acirc;n sống, đầy bụng, trướng hơi.<br style="box-sizing: border-box;" />Người d&ugrave;ng kh&aacute;ng sinh d&agrave;i ng&agrave;y g&acirc;y loạn khuẩn đường ruột.<span style="box-sizing: border-box; font-weight: bolder;"><br style="box-sizing: border-box;" /></span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;">Kh&ocirc;ng sử dụng cho người mẫn cảm với bất cứ th&agrave;nh phần n&agrave;o của sản phẩm.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span>&nbsp;Probiotics 2 x 10^8 CFU<br style="box-sizing: border-box;" />(<em style="box-sizing: border-box;">Lactobacillus acidophilus, Lactobacillus plantarum, Enterococcus faecium, Bifidobacterium bifidum, Bifidobacterium breve, Bifidobacterium animalis ssp. lactis</em>)<br style="box-sizing: border-box;" />Kẽm oxyd 12,46 mg (Tương đương kẽm 10 mg)</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;">Phụ liệu: Vegetable Cream (Prima), Glucose Anhydrocrystalline, Red Grape Powder SR-23150, Xylitol Powder, Fructo-Oligosaccharide Powder, Whey Calcium (milk calcium), Grape Flavor Powder-SHA, Ascorbic Acid, Bacillus Coagulans, Grape Flavor G-6016, Dry Vitamin D3 Type 100CWS/AM, Riboflavin.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng:</span><br style="box-sizing: border-box;" />Bổ sung lợi khuẩn, gi&uacute;p tăng cường hệ vi sinh đường ruột.<br style="box-sizing: border-box;" />Hỗ trợ l&agrave;m giảm rối loạn ti&ecirc;u h&oacute;a do loạn khuẩn đường ruột.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng &amp; v&agrave; c&aacute;ch d&ugrave;ng:&nbsp;</span>Mở g&oacute;i ăn trực tiếp hoặc pha v&agrave;o nước, sữa, nước tr&aacute;i c&acirc;y. N&ecirc;n sử dụng c&aacute;ch xa kh&aacute;ng sinh &iacute;t nhất 2 giờ.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;">Liều d&ugrave;ng:<br style="box-sizing: border-box;" />&ndash; Trẻ em từ 1-3 tuổi : 1/2 g&oacute;i/ng&agrave;y<br style="box-sizing: border-box;" />&ndash; Trẻ em tr&ecirc;n 3-8 tuổi : 1 g&oacute;i/ng&agrave;y<br style="box-sizing: border-box;" />&ndash; Trẻ em tr&ecirc;n 8 tuổi v&agrave; người lớn : 2 g&oacute;i/ng&agrave;y</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;">Ch&uacute; &yacute;: Trẻ từ 1-3 tuổi phải hỏi &yacute; kiến b&aacute;c sỹ trước khi sử dụng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 60 g&oacute;i x 2g</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;H&agrave;n Quốc</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;H&agrave;n Quốc</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thể thuốc chữa bệnh.<br style="box-sizing: border-box;" />Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (14, N'Cốm vi sinh Biolac Plus', CAST(10000 AS Decimal(18, 0)), CAST(18000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 7, 10, 2, N'P03009_1_l.jpg', 1, N'Cốm vi sinh Biolac Plus bổ sung men vi sinh có ích cho đường ruột, giúp tái lập cân bằng hệ vi sinh đường ruột', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">1. Chống chỉ định:&nbsp;</span>Kh&ocirc;ng c&oacute;.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">2. Hướng dẫn sử dụng:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Chỉ định:</span><br style="box-sizing: border-box;" />Bổ sung chủng vi khuẩn c&oacute; &iacute;ch v&agrave; acid amin thiết yếu gi&uacute;p t&aacute;i lập c&acirc;n bằng hệ vi sinh đường ruột, gi&uacute;p tăng cường ti&ecirc;u h&oacute;a, hấp thu dinh dưỡng đ&ecirc; ph&aacute;t triển cơ thể khỏe mạnh.<br style="box-sizing: border-box;" />Gi&uacute;p ph&ograve;ng ngừa rối loạn ti&ecirc;u h&oacute;a: ph&acirc;n sống, đầy bụng, kh&oacute; ti&ecirc;u, ti&ecirc;u h&oacute;a k&eacute;m.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng v&agrave; c&aacute;ch d&ugrave;ng:<br style="box-sizing: border-box;" /></span>Uống trực tiếp hoặc uống với nước đun s&ocirc;i để nguội, sữa hoặc thức ăn (kh&ocirc;ng dùng với nước s&ocirc;i):<br style="box-sizing: border-box;" />Trẻ em: 2 &ndash; 3 g&oacute;i/ng&agrave;y<br style="box-sizing: border-box;" />Người lớn: 3 &ndash; 4 g&oacute;i/ngày<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:&nbsp;</span><br style="box-sizing: border-box;" />Dưới 28 độ C, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">3. Th&ocirc;ng tin thuốc:<br style="box-sizing: border-box;" /></span><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span><br style="box-sizing: border-box;" />Lactobacillus Acidophilus, Lactobacilus Sporogenes, Bacillus Clausii, L-Lysine hydroclorid t&aacute; dược vừa đủ.<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:</span>&nbsp;Hộp 10 g&oacute;i<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam<br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-weight: bolder;">Nh&agrave; sản xuất:</span>&nbsp;Dược phẩm Nam Việt</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; font-weight: 400; text-transform: none; background-color: #ffffff;"><em style="box-sizing: border-box;">Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em><br style="box-sizing: border-box;" /><em style="box-sizing: border-box;">Nếu cần th&ecirc;m th&ocirc;ng tin xin hỏi &yacute; kiến B&aacute;c sĩ.</em></p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'Alcofree (Lốc 3 chai x 50ml)', CAST(60000 AS Decimal(18, 0)), CAST(95000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 10, 9, 1, N'P18733_1_l.jpg', 1, N'Thực phẩm bảo vệ sức khỏe Alcofree giúp hỗ trợ giảm các triệu chứng khó chịu do uống rượu bia', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng</span><br style="box-sizing: border-box;" />Người thường xuy&ecirc;n phải uống rượu bia v&agrave; người bị say rượu bia.<br style="box-sizing: border-box;" />Người trưởng th&agrave;nh muốn cải thiện chức năng gan.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần</span><br style="box-sizing: border-box;" />Cao đặc Đảng S&acirc;m &hellip;&hellip;&hellip;.. 500mg<br style="box-sizing: border-box;" />Taurine &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 400mg<br style="box-sizing: border-box;" />Cao đặc Actiso &hellip;&hellip;&hellip;&hellip;&hellip;.. 150mg<br style="box-sizing: border-box;" />Vitamin C &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 36mg<br style="box-sizing: border-box;" />Cao đặc Linh Chi &hellip;&hellip;&hellip;&hellip;.. 25mg<br style="box-sizing: border-box;" />Vitamin B1 &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1mg<br style="box-sizing: border-box;" />Vitamin B6 &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1mg<br style="box-sizing: border-box;" />Acid Citric, Natri Benzoat, đường trắng, hương liệu tổng hợp, nước vừa đủ 50ml.<br style="box-sizing: border-box;" />Sản phẩm c&oacute; thể c&oacute; cắn mịn của dược liệu, nhưng kh&ocirc;ng ảnh hưởng đến chất lượng sản phẩm.<br style="box-sizing: border-box;" />Kh&ocirc;ng d&ugrave;ng cho người mẫn cảm với bất kỳ th&agrave;nh phần n&agrave;o của sản phẩm.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng</span><br style="box-sizing: border-box;" />Hỗ trợ giảm c&aacute;c triệu chứng kh&oacute; chịu do uống rượu bia.<br style="box-sizing: border-box;" />Hỗ trợ giải độc gan: Gi&uacute;p m&aacute;t gan, th&ocirc;ng mật lợi tiểu.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&aacute;ch d&ugrave;ng</span><br style="box-sizing: border-box;" />Giảm c&aacute;c triệu chứng kh&oacute; chịu do uống rượu bia: Uống 1 chai trước hoặc sau khi uống rượu bia.<br style="box-sizing: border-box;" />Hỗ trợ giải độc gan: Uống 1 chai/ng&agrave;y.<br style="box-sizing: border-box;" />Lắc đều trước khi uống.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span>&nbsp;Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Thể t&iacute;ch thực:</span>&nbsp;Lốc 3 chai x 50ml</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Nhật</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'Omega 3-6-9 Pharmekal', CAST(300000 AS Decimal(18, 0)), CAST(369000 AS Decimal(18, 0)), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 18, 8, 2, N'P14500_1_l.jpg', 1, N'Omega 3-6-9 giúp làm giảm nguy cơ bệnh tim mạch vành, nâng cao sức khỏe của tim.', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Đối tượng sử dụng:&nbsp;</span>D&ugrave;ng cho người trưởng th&agrave;nh cần n&acirc;ng cao chức năng hoạt động của tim mạch, người bị kh&ocirc; mắt, nhức mỏi mắt, cần bồi bổ cho mắt khỏe mạnh.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Th&agrave;nh phần:</span>&nbsp;Dầu c&aacute; 400mg, dầu hạt lanh 600mg, Gelatin, Glycerin, nước tinh khiết.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">C&ocirc;ng dụng:</span>&nbsp;Gi&uacute;p giảm nguy cơ bệnh tim mạch v&agrave;nh, n&acirc;ng cao sức khỏe của tim. Bồi dưỡng m&ocirc; v&otilde;ng mạc mắt, gi&uacute;p s&aacute;ng mắt, giảm mỏi mắt.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Liều d&ugrave;ng &amp; c&aacute;ch d&ugrave;ng:</span>&nbsp;Uống 1 vi&ecirc;n/lần x 1-2 vi&ecirc;n/ng&agrave;y, uống nguy&ecirc;n vi&ecirc;n thuốc, kh&ocirc;ng nhai, sử dụng tốt hơn c&ugrave;ng với bữa ăn.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:&nbsp;</span>Nơi&nbsp;kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</span>Hộp 100 vi&ecirc;n</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Xuất xứ thương hiệu:</span>&nbsp;Mỹ</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Sản xuất tại:</span>&nbsp;Mỹ</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; font-family: iCielVAGRoundedNext; color: #777777; font-size: 17.6px; background-color: #ffffff;"><em style="box-sizing: border-box;">Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thể thuốc chữa bệnh.<br style="box-sizing: border-box;" />Để xa tầm tay trẻ em. Đọc kỹ hướng dẫn sử dụng trước khi d&ugrave;ng.</em></p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Thuốc kháng dị ứng', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Thuốc kháng viêm', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Giảm đau, Hạ sốt', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Thuốc cảm lạnh, ho', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Xương khớp', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Đường ruột', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Mắt, Tai, Mũi', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Tim Mạch, Huyết Áp', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (9, N'Tăng cân', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (10, N'Trẻ em', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (11, N'Thuốc da liễu', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (12, N'Thuốc tiêu hóa', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (13, N'Thuốc thần kinh', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (14, N'Thuốc xương khớp', 2)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Xuất Xứ', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Thuốc không kê đơn', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Thực phẩm chức năng', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (5, CAST(N'2023-06-07T16:43:08.733' AS DateTime), NULL, CAST(N'2021-06-07T00:00:00.000' AS DateTime), 1, CAST(72000 AS Decimal(18, 0)), 6)
INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (6, CAST(N'2023-05-30T16:46:09.233' AS DateTime), NULL, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 1, CAST(1107000 AS Decimal(18, 0)), 6)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (6, 2, 13, 5, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (7, 3, 16, 6, CAST(369000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E4FFE826E4]    Script Date: 6/13/2023 3:13:59 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [banthuoc] SET  READ_WRITE 
GO
