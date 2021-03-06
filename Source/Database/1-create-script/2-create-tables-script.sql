﻿USE [CoursesSystem]

GO

--Create HOC SINH TABLE
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'HocSinh')
BEGIN
CREATE TABLE [dbo].[HocSinh](
	[HocSinhId] [bigint] IDENTITY(1,1) NOT NULL,
	CONSTRAINT [PK_HocSinh] PRIMARY KEY ([HocSinhId]))
END

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'TenHocSinh')
ALTER TABLE [dbo].[HocSinh] ADD [TenHocSinh] [nvarchar](200) NOT NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'NgaySinh')
ALTER TABLE [dbo].[HocSinh] ADD [NgaySinh] [datetime] NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'SoDienThoai')
ALTER TABLE [dbo].[HocSinh] ADD [SoDienThoai] [nvarchar](20) NOT NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'DiaChi')
ALTER TABLE [dbo].[HocSinh] ADD [DiaChi] [nvarchar](300) NOT NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'TenDangNhap')
ALTER TABLE [dbo].[HocSinh] ADD [TenDangNhap] [nvarchar](200) NOT NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'Email')
ALTER TABLE [dbo].[HocSinh] ADD [Email] [nvarchar](200) NOT NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'MatKhau')
ALTER TABLE [dbo].[HocSinh] ADD [MatKhau] [nvarchar](100) NOT NULL

GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'Avatar')
ALTER TABLE [dbo].[HocSinh] ADD [Avatar] [nvarchar](max) NULL

GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'HocSinh' AND COLUMN_NAME = 'UserType')
ALTER TABLE [dbo].[HocSinh] ADD [UserType] [bigint] NOT NULL



--CREATE GIAO VIEN TABLE



--CREATE PHU HUYNH TABLE


--CREATE QUAN LY TABLE


--CREATE KHOA HOC TABlE


--CREATE ...