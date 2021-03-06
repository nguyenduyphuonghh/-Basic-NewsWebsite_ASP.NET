USE [master]
GO
/****** Object:  Database [BtlTinTuc]    Script Date: 11/26/2018 3:43:33 PM ******/
CREATE DATABASE [BtlTinTuc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BtlTinTuc', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BtlTinTuc.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BtlTinTuc_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BtlTinTuc_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BtlTinTuc] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BtlTinTuc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BtlTinTuc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BtlTinTuc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BtlTinTuc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BtlTinTuc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BtlTinTuc] SET ARITHABORT OFF 
GO
ALTER DATABASE [BtlTinTuc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BtlTinTuc] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BtlTinTuc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BtlTinTuc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BtlTinTuc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BtlTinTuc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BtlTinTuc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BtlTinTuc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BtlTinTuc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BtlTinTuc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BtlTinTuc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BtlTinTuc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BtlTinTuc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BtlTinTuc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BtlTinTuc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BtlTinTuc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BtlTinTuc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BtlTinTuc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BtlTinTuc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BtlTinTuc] SET  MULTI_USER 
GO
ALTER DATABASE [BtlTinTuc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BtlTinTuc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BtlTinTuc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BtlTinTuc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BtlTinTuc]
GO
/****** Object:  StoredProcedure [dbo].[Bantin_Delete]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Delete] (
	@IDBanTin int
)
AS
BEGIN
	delete from BanTin where IDBanTin = @IDBanTin
END
GO
/****** Object:  StoredProcedure [dbo].[Bantin_InSert]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_InSert] (
	@TieuDe nvarchar(50)
)
AS
BEGIN
	INSERT INTO BanTin(TieuDe) VALUES(@TieuDe)
END
GO
/****** Object:  StoredProcedure [dbo].[Bantin_SelectAll]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_SelectAll]
AS
BEGIN
	SELECT * FROM BanTin
END
GO
/****** Object:  StoredProcedure [dbo].[BanTin_SelectByID]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_SelectByID](
	@IDBanTin int )
as
begin
	select * from BanTin where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[Bantin_Update]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Update] (
	@IDBanTin int,
	@TieuDe nvarchar(50)
)
AS
BEGIN
	update BanTin set TieuDe = @TieuDe where IDBanTin = @IDBanTin
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Delete]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Delete](
	@IDChiTiet int
	)
as
begin
	delete from ChiTiet where IDChiTiet = @IDChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_IDChiTiet]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_IDChiTiet](
	@IDChiTiet int
	)
as
begin
	select * from ChiTiet where IDChiTiet = @IDChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Insert]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Insert](
	@TieuDe nvarchar(50),
	@NoiDung nvarchar(max),
	@NgayDang datetime,
	@IDBanTin int,
	@sUsername nchar(10),
	@TrichDan nvarchar(200)
)
AS
BEGIN
	insert into ChiTiet(TieuDe,NoiDung,NgayDang,IDBanTin,sUsername,TrichDan)
	values(@TieuDe,@NoiDung,@NgayDang,@IDBanTin,@sUsername,@TrichDan)
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Select]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Select](
	@IDChiTiet int 
)
AS
BEGIN
	select * from ChiTiet where IDChiTiet = @IDChiTiet
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectAll]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_SelectAll] 

AS
BEGIN
	select * from ChiTiet
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectByBanTin]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectByBanTin](
	@IDBanTin int
	)
as
begin
	select * from ChiTiet where IDBanTin=@IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectByID]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_SelectByID](
	@IDChiTiet int 
)
AS
BEGIN
	select * from ChiTiet join DangNhap on ChiTiet.sUserName = DangNhap.sUserName where IDChiTiet = @IDChiTiet
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectHome]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectHome]
as
begin
	select top 30 * from ChiTiet order by IDChiTiet DESC
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectRandom]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_SelectRandom]
as
begin
	select top 5 * from ChiTiet tablesample (5 rows)
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SoLanXem]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SoLanXem](
	@IDChiTiet int,
	@SoLanXem int output
	)
as
begin
	select @SoLanXem=SoLanXem from ChiTiet where IDChiTiet = @IDChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Update]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Update](
	@TieuDe nvarchar(200),
	@NoiDung nvarchar(max),
	@NgayDang datetime,
	@IDChitiet int,
	@TrichDan nvarchar(200)
)
AS
BEGIN
	update ChiTiet set TieuDe=@TieuDe,NoiDung=@NoiDung,NgayDang=@NgayDang,TrichDan=@TrichDan
	where IDChiTiet=@IDChitiet;
END
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_UpdateSLX]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_UpdateSLX](
	@SoLanXem int,
	@IDChiTiet int
	)
as
begin
	update ChiTiet set SoLanXem = @SoLanXem where IDChiTiet = @IDChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Delete]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Delete](
	@IDName int )
as
begin
	delete from DangNhap where IDname = @IDName
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Insert]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Insert](
	@sUserName nchar(10),
	@sPassWord nchar(10)
	)
as
begin
	insert into DangNhap(sUserName,sPassWord)
	values(@sUserName,@sPassWord)
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Search]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Search](
	@sUserName nchar(10),
	@sPassWord nchar(10)
	)
as
begin
	select * from DangNhap where sUserName = @sUserName and sPassWord = @sPassWord
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_SelectByID]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_SelectByID] (

	@IDName int )

	as
	begin
		select * from DangNhap where IDName = @IDName
	end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Update]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Update](
	@IDName int,
	@sPassWord nchar(10)
	)
as
begin
	update DangNhap set sPassWord = @sPassWord
	where IDName = @IDName
end
GO
/****** Object:  Table [dbo].[BanTin]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTin](
	[IDBanTin] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanTin] PRIMARY KEY CLUSTERED 
(
	[IDBanTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[IDChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[SoLanXem] [int] NULL,
	[NgayDang] [datetime] NULL,
	[IDBanTin] [int] NULL,
	[sUserName] [nchar](10) NULL,
	[TrichDan] [nvarchar](200) NULL,
 CONSTRAINT [PK_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[IDChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 11/26/2018 3:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IDName] [int] IDENTITY(1,1) NOT NULL,
	[sUserName] [nchar](10) NULL,
	[sPassWord] [nchar](10) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BanTin] ON 

INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (1, N'Xã Hội')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (2, N'Kinh Tế')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (3, N'Chính Trị')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (4, N'Văn Hóa')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (5, N'Giáo Dục')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (6, N'Thể Thao')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (7, N'CNTT')
INSERT [dbo].[BanTin] ([IDBanTin], [TieuDe]) VALUES (8, N'Giới Thiệu')
SET IDENTITY_INSERT [dbo].[BanTin] OFF
SET IDENTITY_INSERT [dbo].[ChiTiet] ON 

INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (2, N'Rộ tin đồn Ronaldo, Messi trượt top 3 Quả Bóng Vàng', N'<h2>C&aacute;c b&aacute;o Ph&aacute;p, Italy cho rằng Varane, Modric, Mbappe c&oacute; t&ecirc;n đề cử r&uacute;t gọn.</h2>

<p><em>France Football</em>, đơn vị tổ chức b&igrave;nh chọn v&agrave; trao giải Quả B&oacute;ng V&agrave;ng, đ&atilde; đ&oacute;ng cửa nhận phiếu bầu h&ocirc;m 15/11. Danh t&iacute;nh chủ nh&acirc;n giải thưởng c&aacute; nh&acirc;n cao qu&yacute; nhất thế giới b&oacute;ng đ&aacute; năm nay sẽ được c&ocirc;ng bố trong đ&ecirc;m Gala tại Paris ng&agrave;y 3/12 tới. Nhưng từ b&acirc;y giờ đ&atilde; c&oacute; rất nhiều tin đồn về c&aacute;c đề cử r&uacute;t gọn.</p>

<p>Tờ <em>Tuttosport</em> (Italy) quả quyết rằng top ba sẽ gồm bộ đ&ocirc;i đang kho&aacute;c &aacute;o Real Madrid - Luka Modric v&agrave; Raphael Varane, c&ugrave;ng sao trẻ của PSG Kylian Mbappe. Tuy nhi&ecirc;n, nhật b&aacute;o n&agrave;y kh&ocirc;ng chắc về người chiến thắng, m&agrave; chỉ cho rằng Modric c&oacute; nhiều cơ hội hơn cả, v&igrave; anh n&agrave;y từng vượt qua cả Ronaldo lẫn Messi đoạt giải The Best của FIFA, nhờ chiến c&ocirc;ng c&ugrave;ng Croatia v&agrave;o chung kết World Cup.&nbsp;</p>

<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width:500px">
	<tbody>
		<tr>
			<td><img alt="Ronaldo và Messi được cho là khó có thể đoạt Qủa Bóng Vàng năm nay. " src="https://i-thethao.vnecdn.net/2018/11/22/Untitled-13-8469-1542845926.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Ronaldo v&agrave; Messi được cho l&agrave; kh&oacute; c&oacute; thể đoạt Qủa B&oacute;ng V&agrave;ng năm nay.&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Tờ <em>L&#39;&Eacute;quipe</em> (Ph&aacute;p) cũng l&agrave;m nảy sinh những đồn đo&aacute;n v&agrave; t&ograve; m&ograve; khi c&ocirc;ng bố đoạn video ngắn giới thiệu về giải thưởng từ h&ocirc;m 19/11. Theo đ&oacute;, sau tr&iacute;ch đoạn ngắn khoảnh khắc Ronaldo đoạt Quả B&oacute;ng V&agrave;ng tr&ecirc;n th&aacute;p Eiffel năm ngo&aacute;i, ba gương mặt kế tiếp xuất hiện trong video lần lượt l&agrave; Mbappe, Varane and Modric, rồi mới đến một số ứng vi&ecirc;n kh&aacute;c.</p>

<p>Sau khi <em>L&#39;&Eacute;quipe</em> c&ocirc;ng bố video, <em>Tuttosport</em> v&agrave; một tờ b&aacute;o Italy kh&aacute;c l&agrave; <em>Corriere della Sera</em> đều b&igrave;nh luận rằng 2018 sẽ l&agrave; lần đầu ti&ecirc;n sau 10 năm cả Ronaldo lẫn Messi đều sẽ kh&ocirc;ng c&oacute; t&ecirc;n trong ba đề cử r&uacute;t gọn Quả B&oacute;ng V&agrave;ng.</p>
', 33, CAST(0x0000A9A0012D16DE AS DateTime), 6, N'admin     ', N'France Football, đơn vị tổ chức bình chọn và trao giải Quả Bóng Vàng, đã đóng cửa nhận phiếu bầu hôm 15/11. ')
INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (7, N'Võ sĩ nhập viện sau khi bị đối thủ ném bê tông vào', N'<p>Trận đấu vật tự do giữa&nbsp;Angel o Demonio v&agrave; Cuervo diễn ra ở thủ đ&ocirc; Mexico City của Mexico. Trước khi n&eacute;m một khối b&ecirc; t&ocirc;ng lớn v&agrave;o đầu đối thủ,&nbsp;Angel o Demonio li&ecirc;n tiếp bị Cuervo d&ugrave;ng ghế sắt đập v&agrave;o người.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width:500px">
	<tbody>
		<tr>
			<td><img alt="Demonio ném bê tông vào đấu Cuervo. " src="https://i-thethao.vnecdn.net/2018/11/22/Untitled-1-1297-1542875774.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Demonio n&eacute;m b&ecirc; t&ocirc;ng v&agrave;o đấu Cuervo.&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Trước đ&oacute;,&nbsp;Angel o Demonio đ&atilde; mang một khối b&ecirc; t&ocirc;ng lớn l&ecirc;n s&agrave;n đấu. Lợi dụng đối thủ sơ hở, v&otilde; sĩ n&agrave;y n&eacute;m khối b&ecirc; t&ocirc;ng từ kh&aacute;n đ&agrave;i xuống ph&iacute;a dưới, nơi Cuervo đang đứng. Kết quả, Cuervo lập tức nằm gục xuống s&agrave;n v&agrave; được đưa đi cấp cứu.</p>

<p>Bị chỉ tr&iacute;ch v&igrave; h&agrave;nh động bạo lực qu&aacute; mức cho ph&eacute;p,&nbsp;Angel o Demonio ph&acirc;n trần rằng anh kh&ocirc;ng nhắm v&agrave;o đầu của Cuervo. Nhưng v&otilde; sĩ n&agrave;y cũng thừa nhận cảm thấy bực tức v&igrave; li&ecirc;n tiếp bị Cuervo vụt ghế v&agrave;o người.</p>

<div style="text-align:center">
<div class="box_embed_video_parent embed_video_new" id="video_parent_230014">
<div class="box_embed_video" id="embed_video_230014" style="display:block">
<div class="bg_overlay_small_unpin">&nbsp;</div>

<div class="bg_overlay_small">&nbsp;</div>

<div class="embed-container">
<div id="video-230014" style="height:281.25px; width:100%">
<div class="media_content" id="parser_player_230014" style="display:block; height:281.25px; text-align:left">
<div class="videoContainter" id="videoContainter_230014" style="height:100%; width:100%">&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div style="text-align:center">
<div class="box_embed_video_parent embed_video_new" id="video_parent_230014">
<div class="box_embed_video" id="embed_video_230014" style="display:block">
<div class="embed-container">
<div id="video-230014" style="height:281.25px; width:100%">&nbsp;</div>
</div>
</div>
</div>
</div>

<p>Quản l&yacute; của Cuervo sau đ&oacute; cập nhật tr&ecirc;n Facebook rằng v&otilde; sĩ n&agrave;y đ&atilde; trải qua một ca phẫu thuật để loại bỏ cục m&aacute;u đ&ocirc;ng trong n&atilde;o.</p>

<p>Ủy ban quyền anh v&agrave; đấu vật Mexico lập tức ra quyết định cấm&nbsp;Angel o Demonio thi đấu.</p>
', 1, CAST(0x0000A9A00143A455 AS DateTime), 6, N'phuong    ', N'Cuervo bị Angel o Demonio tấn công từ phía sau và bất tỉnh ngay trên võ đài. ')
INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (8, N'LeBron James gieo sầu cho đội bóng cũ Cavaliers ', N'<p>Cleveland Cavaliers, sau khi mất James, sở hữu th&agrave;nh t&iacute;ch tệ nhất NBA l&uacute;c n&agrave;y. Đội chủ nh&agrave;, d&ugrave; đ&atilde; c&oacute; một trong những m&agrave;n tr&igrave;nh diễn hay nhất từ đầu m&ugrave;a, vẫn kh&ocirc;ng thể tr&aacute;nh khỏi thất bại thứ 14 sau 16 trận.</p>

<p>Cavaliers dẫn 99-91 khi trận đấu chỉ c&ograve;n hơn năm ph&uacute;t, nhưng c&uacute; n&eacute;m ba điểm của Kyle Kuzma c&ugrave;ng một loạt pha ghi điểm từ LeBron James gi&uacute;p Lakers dẫn ngược chủ nh&agrave; 102-99.</p>

<p>LeBron James chỉ n&eacute;m th&agrave;nh c&ocirc;ng t&aacute;m trong số 12 quả phạt ở trận n&agrave;y, nhưng ghi 32 điểm, đ&oacute;ng g&oacute;p 14 rebound v&agrave; bảy kiến tạo trong chiến thắng 109-105.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width:500px">
	<tbody>
		<tr>
			<td><img alt="LeBron James (vàng) tỏa sáng trong ngày trở lại sân đấu anh từng gắn bó 11 năm. Ảnh: AP." src="https://i-thethao.vnecdn.net/2018/11/22/James2-4098-1542873981.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>LeBron James (v&agrave;ng) tỏa s&aacute;ng trong ng&agrave;y trở lại s&acirc;n đấu anh từng gắn b&oacute; 11 năm. Ảnh: <em>AP</em>.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Trong lần trở lại Quicken Loans Arena s&aacute;ng nay, James nhận được sự ch&agrave;o đ&oacute;n nồng ấm từ c&aacute;c CĐV Cavaliers. Ng&ocirc;i sao 33 tuổi ch&iacute;nh l&agrave; người mang về chức v&ocirc; địch NBA đầu ti&ecirc;n cho Cavaliers v&agrave;o năm 2016. Anh từng bị la &oacute; khi trở lại đ&acirc;y trong m&agrave;u &aacute;o Miami Heat, giai đoạn từ 2010-2014.</p>

<p>Cavaliers đang &quot;tan đ&agrave;n xẻ ngh&eacute;&quot; sau sự ra đi của James. Đội b&oacute;ng vừa chia tay c&ocirc;ng thần JR Smith, sau khi anh n&agrave;y c&ocirc;ng khai tr&ecirc;n mặt b&aacute;o rằng kh&ocirc;ng muốn thi đấu cho một CLB th&iacute;ch thua hơn thắng. Ng&ocirc;i sao hiếm hoi c&ograve;n ở lại Cavaliers, Kevin Love, d&iacute;nh chấn thương v&agrave; chỉ c&oacute; thể trở lại v&agrave;o đầu năm sau.</p>
', NULL, CAST(0x0000A9A00143F0D1 AS DateTime), 6, N'phuong    ', N'"King James" ghi 32 điểm, giúp LA Lakers thắng 109-105 trên sân Cleveland Cavaliers hôm 22/11, tại NBA.')
INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (9, N'CĐV Indonesia hả hê khi đội nhà bị loại ở AFF Cup', N'<p>Trận h&ograve;a 1-1 giữa Th&aacute;i Lan v&agrave; Philippines khiến Indonesia hết cửa v&agrave;o b&aacute;n kết. Tin buồn n&agrave;y đến với thầy tr&ograve;&nbsp;Bima Sakti ở lượt đấu m&agrave; họ được nghỉ. Indonesia c&ograve;n một trận chưa đ&aacute; với Philippines nhưng hai thất bại trước Singapore v&agrave; Th&aacute;i Lan khiến họ chỉ kiếm được ba điểm sau ba trận (thắng Timor Leste).</p>

<p>Tr&ecirc;n <em>Twitter</em>, h&agrave;ng loạt CĐV Indonesia đ&atilde; phản hồi về sự kiện n&agrave;y. T&agrave;i khoản <em>@agustiawan__vky</em> viết: &quot;Ch&uacute;ng t&ocirc;i, những người h&acirc;m mộ tuyển Indonesia, kh&ocirc;ng cần &ocirc;ng&nbsp;Rahmayadi Edy&quot;.</p>

<p>Edy l&agrave; Chủ tịch Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Indonesia (PSSI). Trước khi AFF Cup 2018 diễn ra, PSSI kh&ocirc;ng thể đạt thỏa thuận với Luis Milla v&agrave; để HLV người T&acirc;y Ban Nha ra đi. Ngo&agrave;i ra, việc tổ chức song song giải v&ocirc; địch quốc gia với AFF Cup l&agrave;m dấy l&ecirc;n sự phản đối từ c&aacute;c CĐV. PSSI, dưới sự điều h&agrave;nh của Edy, bị chỉ tr&iacute;ch l&agrave; yếu k&eacute;m trong kh&acirc;u quản l&yacute;.</p>

<p>&quot;Tạm biệt AFF Cup. L&agrave;m thế n&agrave;o c&oacute; thể v&ocirc; địch được khi Indonesia kh&ocirc;ng nghi&ecirc;m t&uacute;c với giải đấu n&agrave;y. Đội tuyển ra s&acirc;n trong khi c&aacute;c trận đấu ở giải v&ocirc; địch quốc gia vẫn diễn ra&quot;,<em> @praseptiana</em> viết. Trong khi đ&oacute;, <em> @ExtraReds</em> nhấn mạnh:&nbsp;&quot;Thật kh&oacute; khăn khi hai năm trước ch&uacute;ng ta v&agrave;o chung kết c&ograve;n năm nay bị loại ở v&ograve;ng bảng. Ch&uacute;ng ta sẽ phải đợi th&ecirc;m hai năm nữa&quot;.</p>

<p>Sau hai trận thua Singapore v&agrave; Th&aacute;i Lan c&ugrave;ng m&agrave;n tr&igrave;nh diễn thiếu thuyết phục trước Timor Leste, c&aacute;c CĐV Indonesia đ&atilde; k&ecirc;u gọi sa thải HLV Bima Sakti với hashtag #bimaout. Sau khi Indonesia bị loại, đến lượt hashtag #edyout được c&aacute;c CĐV sử dụng.&nbsp;&quot;Xin ch&agrave;o buổi tối ng&agrave;i @RahmayadiEdy. Chỉ muốn b&aacute;o cho ng&agrave;i biết l&agrave; đội tuyển đ&atilde; bị loại ở AFF Cup&quot;, <em>@bonekcasuals </em>ch&acirc;m biếm.</p>

<p>&quot;Ng&agrave;y mai, tr&ecirc;n trang web của PSSI sẽ c&oacute; b&agrave;i b&aacute;o với ti&ecirc;u đề &#39;Đội tuyển Indonesia nhận được b&agrave;i học gi&aacute; trị&#39;. Nhưng PSSI n&ecirc;n đi học lại tiểu học. Mọi chuyện đủ rồi&nbsp;@ RahmayadiEdy&quot;, <em>@agustiawan__vky</em> chỉ tr&iacute;ch th&ecirc;m.</p>

<p>@cik_lutphie viết: &quot;Tuyển Indonesia bị đ&aacute;nh bại bởi ch&iacute;nh Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; nước nh&agrave; - những người kh&ocirc;ng đề cao chuy&ecirc;n m&ocirc;n m&agrave; chỉ chăm chăm những thứ kh&aacute;c&quot;. C&ograve;n <em>@wahyudieko26</em> b&igrave;nh luận:&nbsp;&quot;Tạm biệt AFF Cup v&agrave; ch&uacute;ng ta n&oacute;i: &#39;Kh&ocirc;ng c&oacute; Indonesia, kh&ocirc;ng c&oacute; bữa tiệc n&agrave;o cả&#39;. Cảm ơn&nbsp;P$$I v&agrave; để xem họ sẽ l&agrave;m những g&igrave; tiếp theo&quot;.</p>
', 4, CAST(0x0000A9A0014452A8 AS DateTime), 6, N'phuong    ', N'Người hâm mộ Indonesia xem việc đội tuyển phải dừng bước ở vòng bảng năm nay là bài học lớn cho Liên đoàn bóng đá nước này.')
INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (10, N'Keisuke Honda: ''Việt Nam là đội bóng có thực lực''', N'<p>&quot;Đội b&oacute;ng đang tiến bộ, v&agrave; ch&uacute;ng t&ocirc;i muốn c&oacute; một bước tiến mới. Trận đấu với Việt Nam rất quan trọng. Họ l&agrave; đội b&oacute;ng kỹ thuật v&agrave; c&oacute; khả năng. Campuchia sẽ phải chuẩn bị thật cẩn thận&quot;, Keisuke Honda chia sẻ.</p>

<p>Ở loạt trận thứ ba bảng A, Campuchia hạ L&agrave;o 3-1. D&ugrave; bị loại, người h&acirc;m mộ Campuchia vẫn vui mừng bởi từ năm 2002 họ mới lại c&oacute; được một trận thắng tại giải v&ocirc; địch Đ&ocirc;ng Nam &Aacute;.&nbsp;&quot;T&ocirc;i tự h&agrave;o về c&aacute;c cầu thủ. Nhưng t&ocirc;i kh&ocirc;ng vui hay buồn v&igrave; kết quả trận đấu. Cảm x&uacute;c của t&ocirc;i được d&agrave;nh cho sự tiến bộ của đội. Chiến thắng n&agrave;y mới chỉ l&agrave; khởi đầu. Ch&uacute;ng t&ocirc;i cần th&ecirc;m thời gian&quot;, Keisuke Honda n&oacute;i th&ecirc;m.</p>

<p>V&agrave;o th&aacute;ng 8, Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Campuchia g&acirc;y sốc khi bổ nhiệm Keisuke Honda l&agrave;m HLV trưởng. Do vẫn c&ograve;n đang thi đấu cho CLB Melbourne Victory n&ecirc;n tiền vệ người Nhật Bản thường xuy&ecirc;n phải chỉ đạo đội tập luyện v&agrave; thi đấu bằng những cuộc gọi điện thoại c&oacute; h&igrave;nh.</p>

<p>&quot;Khi k&yacute; hợp đồng, t&ocirc;i đ&atilde; hứa sẽ d&ugrave;ng tất cả những kinh nghiệm m&igrave;nh c&oacute; để gi&uacute;p b&oacute;ng đ&aacute; Campuchia ph&aacute;t triển. T&ocirc;i đ&atilde; nh&igrave;n thấy những t&agrave;i năng, nhưng ở đ&acirc;y kh&ocirc;ng c&oacute; m&ocirc;i trường, văn h&oacute;a b&oacute;ng đ&aacute; như ch&acirc;u &Acirc;u. T&ocirc;i phải cố gắng để thay đổi tư duy chiến thuật cũng như chuẩn mực b&oacute;ng đ&aacute; của họ. T&ocirc;i sẽ truyền cảm hứng cho c&aacute;c cầu thủ Campuchia&quot;, Honda n&oacute;i th&ecirc;m.</p>

<p>Ngay sau trận thắng L&agrave;o, Honda phải trở về Australia đ&aacute; cho CLB Melbourne Victory. V&igrave; vậy, anh sẽ kh&ocirc;ng c&oacute; mặt dẫn dắt Campuchia khi đội tới l&agrave;m kh&aacute;ch của Việt Nam ng&agrave;y 24/11.</p>

<p>Việt Nam đang đứng thứ hai bảng A. Đội c&ugrave;ng c&oacute; 7 điểm v&agrave; hiệu số b&agrave;n thắng bại +5 như Myanmar nhưng k&eacute;m về số b&agrave;n thắng (5 so với 7). Chỉ cần c&oacute; điểm trong trận đấu với Campuchia, thầy tr&ograve; HLV Park Hang-seo sẽ gi&agrave;nh v&eacute; v&agrave;o b&aacute;n kết.</p>
', 2, CAST(0x0000A9A00144A5C7 AS DateTime), 6, N'phuong    ', N'HLV tuyển Campuchia vắng mặt, nhưng vẫn sẽ có cách giúp đội chuẩn bị kỹ lưỡng khi đấu Việt Nam ngày 24/11 tới.')
INSERT [dbo].[ChiTiet] ([IDChiTiet], [TieuDe], [NoiDung], [SoLanXem], [NgayDang], [IDBanTin], [sUserName], [TrichDan]) VALUES (16, N'Công cụ đo thời gian lãng phí trên Facebook ', N'<p>Sau gần <a href="https://sohoa.vnexpress.net/tin-tuc/doi-song-so/facebook-muon-nguoi-dung-bot-nghien-mang-xa-hoi-3768354.html">nửa năm thử nghiệm</a>, Facebook đ&atilde; triển khai c&ocirc;ng cụ &quot;Your Time on Facebook&quot; để c&aacute;c th&agrave;nh vi&ecirc;n c&oacute; thể theo d&otilde;i v&agrave; quản l&yacute; thời gian sử dụng. N&oacute; được thiết kế với c&aacute;c biểu đồ cột, cho biết bạn đ&atilde; &quot;ngốn&quot; bao nhi&ecirc;u ph&uacute;t để mở ứng dụng Facebook tr&ecirc;n di động mỗi ng&agrave;y.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width:500px">
	<tbody>
		<tr>
			<td><img alt="Giao diện Your Time on Facebook." src="https://i-sohoa.vnecdn.net/2018/11/21/Time-on-Facebook-3721-1542790400.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Giao diện Your Time on Facebook.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Facebook cũng cho ph&eacute;p thiết lập giới hạn thời gian sử dụng mỗi ng&agrave;y. Khi tới hạn mức, chương tr&igrave;nh sẽ hiện th&ocirc;ng b&aacute;o nhắc nhở. B&ecirc;n cạnh đ&oacute;, t&iacute;nh năng hỗ trợ quản l&yacute; bảng tin để người d&ugrave;ng xem được cập nhật từ bạn b&egrave;, người th&acirc;n thay v&igrave; l&atilde;ng ph&iacute; thời gian cho nhiều th&ocirc;ng tin kh&aacute;c.</p>

<p>Để sử dụng, người d&ugrave;ng v&agrave;o <em>Settings &amp; Privacy </em>v&agrave; t&igrave;m mục <em>Your Time on Facebook</em>. Trước đ&oacute;, ứng dụng Instagram (thuộc Facebook) cũng được bổ sung t&iacute;nh năng tương tự.</p>

<p>Trang <em>TNW </em>đ&aacute;nh gi&aacute; &quot;Your Time on Facebook&quot; mang lại những điều t&iacute;ch cực song vẫn c&ograve;n hạn chế. N&oacute; chưa ph&acirc;n t&iacute;ch ch&iacute;nh x&aacute;c thời gian người d&ugrave;ng online tr&ecirc;n Facebook v&agrave; kh&ocirc;ng hỗ trợ chặn c&aacute;c phần cụ thể m&agrave; c&aacute;c th&agrave;nh vi&ecirc;n hay &quot;nghiện&quot;.</p>

<p>&quot;Nếu bạn muốn giảm thời gian l&atilde;ng ph&iacute; tr&ecirc;n mạng, ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn h&atilde;y xem trang tổng quan tr&ecirc;n để biết m&igrave;nh d&agrave;nh bao nhi&ecirc;u giờ cho n&oacute;. Sau đ&oacute; h&atilde;y t&igrave;m một hoạt động kh&aacute;c c&oacute; lợi cho sức khỏe, chẳng hạn chạy bộ, chơi thể thao, học nhạc cụ... để lấp v&agrave;o khoảng thời gian cho Facebook&quot;, <em>TNW </em>viết.</p>
', 200, CAST(0x0000A9A00148DA3B AS DateTime), 7, N'admin     ', N'Facebook tích hợp tính năng cho người dùng biết họ đã dành bao nhiêu thời gian để truy cập mạng xã hội mỗi ngày.')
SET IDENTITY_INSERT [dbo].[ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[DangNhap] ON 

INSERT [dbo].[DangNhap] ([IDName], [sUserName], [sPassWord]) VALUES (1, N'admin     ', N'123       ')
INSERT [dbo].[DangNhap] ([IDName], [sUserName], [sPassWord]) VALUES (2, N'phuong    ', N'1234567   ')
SET IDENTITY_INSERT [dbo].[DangNhap] OFF
USE [master]
GO
ALTER DATABASE [BtlTinTuc] SET  READ_WRITE 
GO
