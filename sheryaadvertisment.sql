USE [Shreya]
GO
/****** Object:  Table [dbo].[tbl_Contact]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contact](
	[Conatctid] [int] IDENTITY(1,1) NOT NULL,
	[Customername] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Contactno] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_Contact] PRIMARY KEY CLUSTERED 
(
	[Conatctid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Gallery]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Gallery](
	[Imageid] [int] IDENTITY(1,1) NOT NULL,
	[Categoryid] [int] NOT NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Createdbytime] [datetime] NULL,
 CONSTRAINT [PK_tbl_Gallery] PRIMARY KEY CLUSTERED 
(
	[Imageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Productname] [nvarchar](200) NULL,
	[ProductLogo] [nvarchar](200) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CreatedDatetime] [datetime] NULL,
	[Createdby] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ProductImages]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProductImages](
	[Imageid] [int] IDENTITY(1,1) NOT NULL,
	[Productid] [int] NOT NULL,
	[Imageurl] [nvarchar](200) NULL,
	[CreatedbyTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Imageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_testimonial]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_testimonial](
	[Customerid] [int] IDENTITY(1,1) NOT NULL,
	[Customername] [nvarchar](200) NULL,
	[Customerdesgination] [nvarchar](200) NULL,
	[Comment] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[CustomerAddedby] [nvarchar](50) NULL,
	[Createddatetime] [datetime] NULL,
 CONSTRAINT [PK_tbl_testimonial] PRIMARY KEY CLUSTERED 
(
	[Customerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[tbl_Gallery]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Gallery_tbl_Gallery] FOREIGN KEY([Imageid])
REFERENCES [dbo].[tbl_Gallery] ([Imageid])
GO
ALTER TABLE [dbo].[tbl_Gallery] CHECK CONSTRAINT [FK_tbl_Gallery_tbl_Gallery]
GO
ALTER TABLE [dbo].[tbl_ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ProductImages_tbl_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[tbl_Product] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_ProductImages] CHECK CONSTRAINT [FK_tbl_ProductImages_tbl_Product]
GO
/****** Object:  StoredProcedure [dbo].[sp_crud_operation_Ongallery]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[sp_crud_operation_Ongallery]
@type int,
@Imageid int=null,
@Categoryid int=null,
@ImageUrl nvarchar(200)=null
as
Begin
 if(@type=1)
 begin
   insert into tbl_Gallery values(@Categoryid,@ImageUrl,GETDATE())
   return scope_identity()
 end
 if(@type=2)
 begin
   select * from tbl_Gallery
 end

 if(@type=3)
 begin
   select * from tbl_Gallery where Categoryid=1
 end
  if(@type=4)
 begin
   select * from tbl_Gallery where Categoryid=2
 end

  if(@type=5)
 begin
  select * from tbl_Gallery where Categoryid=3
 end
 if(@type=6)
 begin
 delete from tbl_Gallery where Imageid=@Imageid
 return @@rowCount
 end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_crudoperation_product]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_crudoperation_product]
@type int,
@ProductId int=null,
@CategoryId int=null,
@Productname nvarchar(200)=null,
@ProductLogo nvarchar(200)=null,
@ProductDescription nvarchar(MAX)=null
as
Begin
  if(@type=1)
  begin
    insert into tbl_Product values(@CategoryId,@Productname,@ProductLogo,@ProductDescription,GETDATE(),'Admin')
	return scope_identity()
  end 
  if(@type=2)
  begin
    
	select * from tbl_Product where ProductId=@ProductId
  end
   
   if(@type=3)
   begin
   select * from 
   tbl_Product
   
   end

   if(@type=4)
   begin
     update tbl_Product set CategoryId=@CategoryId,Productname=@Productname,ProductLogo=@ProductLogo,ProductDescription=@ProductDescription where ProductId=@ProductId
   return @@rowcount
   end

   if(@type=5)
   begin
   delete from tbl_Product where ProductId=@ProductId
   return @@rowcount
   end

      if(@type=6)
   begin
   delete from tbl_ProductImages where ProductId=@ProductId
   return @@rowcount
   end

    if(@type=7)
   begin
   select * from 
 tbl_ProductImages where Productid=@ProductId 
   
   end
   if(@type=8)
  begin
    
	select * from tbl_Product where  CategoryId=1
  end
  if(@type=9)
  begin
    
	select * from tbl_Product where  CategoryId=2
  end
  if(@type=10)
  begin
    
	select * from tbl_Product where CategoryId=3
  end

  if(@type=11)
  begin
    
	select * from tbl_Product where CategoryId=4
  end
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_Crudoperation_testimonial]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_Crudoperation_testimonial]
@type int,
@Customerid int=null,
@Customername nvarchar(200)=null,
@Customerdesignation nvarchar(200)=null,
@Commnet nvarchar(MAX)=null,
@ImageUrl nvarchar(200)=null
as
begin
if(@type=1)
begin
 insert into tbl_testimonial values(@Customername,@Customerdesignation,@Commnet,@ImageUrl,'Admin',GETDATE())
 return Scope_Identity()
end
if(@type=2)
begin
  select * from tbl_testimonial
end

if(@type=3)
begin
delete from tbl_testimonial where Customerid=@Customerid
return @@rowcount
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_mutipleimage]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insert_mutipleimage]
@Productid int,
@ImageUrl nvarchar(MAX)=null
as
begin
	insert  into tbl_ProductImages values (@Productid,@ImageUrl,GETDATE())
	return scope_identity()
end
GO
/****** Object:  StoredProcedure [dbo].[sp_update_productimages]    Script Date: 7/26/2019 11:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_update_productimages]
@Flag int,
@Productid int,
@ImageUrl nvarchar(1000)=null
AS
BEGIN
     if(@Flag=0)
	 begin
	    delete from tbl_ProductImages where Productid=@Productid 
	 end
	 insert into tbl_ProductImages values (@Productid,@ImageUrl,GETDATE())
 END
GO
