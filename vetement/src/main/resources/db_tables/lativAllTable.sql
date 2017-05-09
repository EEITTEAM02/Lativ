drop table news
drop table comment
drop table customer_service
drop table favorite
drop table orderItem
drop table orders
drop table production
drop table category
drop table discount 
drop table customer


create table customer(
	customerId int identity(1,1) not null,
	name nvarchar(50),
	gender nvarchar(10),
	mail nvarchar(60),
	pswd nvarchar(30),
	addr_customer nvarchar(80),
	tel nvarchar(20),
	constraint customer_PK primary key(customerId)
)

create table discount(
	packageNo int  identity,
	discount1 float ,    --percentage
	discount2 float ,    --fixed price
	quantity_condition int,
	descript nvarchar(20),
	constraint discount_PK primary key(packageNo),
)

create table category(
	categoryId int identity(1,1),
	class_top nvarchar(30),
	class_middle nvarchar(30),
	class_bottom nvarchar(30),
	constraint category_PK primary key(categoryId)
)

create table production(
	productId int IDENTITY (1,1) not null ,
	productName nvarchar(50) ,
	size nvarchar(15) ,
	color nvarchar(20) ,
	price float ,
	quantity_in_stock int ,
	for_sale bit ,
	describe nvarchar(40),
	packageNo int default 1 not null,
	categoryId int not null,
	icon  varbinary(max),
	picture_main varbinary(max),
	picture_color varbinary(max),
	picture_model1 varbinary(max),
	picture_model2 varbinary(max),
	picture_model3 varbinary(max),
	picture_model4 varbinary(max),
	constraint production_PK primary key(productId),
	constraint production_FK1 foreign key(packageNo) references discount(packageNo),
	constraint production_FK2 foreign key(categoryId) references category(categoryId)
)

create table orders(
	orderNo int IDENTITY (1,1) not null ,
    dealDate date ,
    customerId int not null,
    addr_send nvarchar(80) ,
    tel_send nvarchar(20),
    name_send nvarchar(50),
    price_total float ,
    status1 bit not null, 
	constraint orders_PK primary key(orderNo),
	constraint orders_FK2 foreign key(customerId) references customer(customerId)
)

create table orderItem(
	seqNo int identity(1,1)not null,
	price_origin float,
	price_discount float,
	quantity_order int,
	price_item float,
	orderNo int not null,
	productId int not null,
	constraint orderItem_PK primary key(seqNo),
	constraint orderItem_FK1 foreign key(orderNo) references orders(orderNo),
	constraint orderItem_FK2 foreign key(productId) references production(productId)
)


create table favorite(
	customerId int not null, 
	productId int not null,
	constraint favorite_FK1 foreign key(customerId) references customer(customerId),
	constraint favorite_FK2 foreign key(productId) references production(productId)
)

create table customer_service(
	title_service nvarchar(100),
	content_service nvarchar(2000),
	receive_date date,
	customerId int,
	constraint customer_service_FK1 foreign key(customerId) references customer(customerId),
)

create table comment(
	commentNo int identity(1,1),
	comment nvarchar(200),
	pubtime datetime,
	customerId int not null, 
	productId int not null,
	orderNo int not null,
	constraint comment_PK primary key(commentNo),
	constraint comment_FK1 foreign key(customerId) references customer(customerId),
	constraint comment_FK2 foreign key(productId) references production(productId),
	constraint comment_FK3 foreign key(orderNo) references orders(orderNo)
)

create table news(
	newsno int identity(1,1),
	title nvarchar(40),
	content nvarchar(2000),
	pubdate date,
	constraint news_PK1 primary key(newsno)
)

insert into discount values (0.9,null,5,null);
insert into discount values (null,100.0,6,null);
insert into discount values (0.6,null,7,null);

insert into category values('�k','�W����','�u�S�I��');
insert into category values('�k','�~�M��','�𶢥~�M');
insert into category values('�k','�Ǹ�','���J��');
insert into category values('�k','�a�~�A�t��','�a�~�A');
insert into category values('�k','�w´�m','�w´�m���');
insert into category values('�k','�W����','�u�S�L��T��');
insert into category values('�k','Ũ�m��','��Ũ�m');
insert into category values('�k','�w´�m','���R�զϤ�');
insert into category values('�k','�~�M��','�е��t�C');
insert into category values('�k','�Ǹ˸ȸ�','�ȸˬv��');
insert into category values('�ൣ','�W����','���S');
insert into category values('�ൣ','Ũ�m��','�k����Ũ�m');
insert into category values('�ൣ','�Ǹ˸ȸ�','�u�ǤC����');
insert into category values('�ൣ','������','HEATUP_�O�x��');
insert into category values('�ൣ','�~�M��','�O�xFLEECE�t�C');
insert into category values('�ൣ','�W����','�u�S');
insert into category values('�ൣ','Ũ�m��','��Ũ�m');
insert into category values('�ൣ','�W����','�a�~�A');
insert into category values('�ൣ','�~�M��','�𶢥~�M');
insert into category values('�ൣ','�~�M��','����');
insert into category values('�ൣ','�Ǹ˸ȸ�','���f��');
insert into category values('�ൣ','�Ǹ˸ȸ�','�v��');
insert into category values('�ൣ','������','���l');
insert into category values('�ൣ','������','���f��');
insert into category values('�ൣ','�W����','POLO�m');
insert into category values('�k','�W����','POLO�m');
insert into category values('�k','�W����','�a�~�A');
insert into category values('�k','�~�M��','��˥~�M');
insert into category values('�k','�~�M��','����');
insert into category values('�k','�Ǹ�','���f��');
insert into category values('�k','�Ǹ�','����');
insert into category values('�k','Ũ�m��','��Ũ�m');
insert into category values('�k','Ũ�m��','�Ӱ�Ũ�m');
insert into category values('�k','Ũ�m��','�k����Ũ�m');
insert into category values('�k','������','���l');
insert into category values('�k','�W����','POLO�m');
insert into category values('�k','�W����','�a�~�A');
insert into category values('�k','Ũ�m��','�Ӱ�Ũ�m');
insert into category values('�k','Ũ�m��','�k����Ũ�m');
insert into category values('�k','�~�M��','�𶢥~�M');
insert into category values('�k','�~�M��','����');
insert into category values('�k','�Ǹ˸ȸ�','���J��');
insert into category values('�k','�Ǹ˸ȸ�','���f��');
insert into category values('�k','������','�M�D�t�C');
insert into category values('�k','������','���l');


insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select 'Pima ��V��T��','L','��','290','55',1,'�`�L��Ф��}�~��',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1MTSR.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2MTSR.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3MTSR.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4MTSR.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','M','��','290','44',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortRed.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','S','��','290','33',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortRed.jpg',
   SINGLE_BLOB) AS img)
   
     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','XL','��','290','17',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select 'Pima ��V��T��','L','��','290','7',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','M','��','290','2',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortBlue.jpg',
   SINGLE_BLOB) AS img) 


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','S','��','290','9',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortBlue.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  'Pima ��V��T��- ��','L','��','290','8',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','M','��','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortWhite.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Pima ��V��T��','S','��','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/mTshirtShortWhite.jpg',
   SINGLE_BLOB) AS img)

   --production in cat2
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select 'PIMA �֧�UV�s�U�~�M','L','��','490','63',1,'�Щ�J�Ӻ��~��U���z�t���~�A�H�O���ӫ~���A',1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1MCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2MCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3MCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4MCoat.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','M','��','490','44',1,1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','S','��','490','33',1,1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select 'PIMA �֧�UV�s�U�~�M','L','��','490','7',1,1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','M','��','490','2',1,1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatRed.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','S','��','490','9',1,1,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatRed.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  'PIMA �֧�UV�s�U�~�M','L','��','490','8',1,1,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatYellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/yellow.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','M','��','490','49',1,1,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatYellow.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'PIMA �֧�UV�s�U�~�M','S','��','490','33',1,1,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCoatYellow.jpg',
   SINGLE_BLOB) AS img)

    --production in cat3
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�u�� ���ަh����J��','L','��','690','121',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1MJeans.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2MJeans.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3MJeans.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4MJeans.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','M','��','690','44',1,1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','S','��','690','33',1,1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�u�ʯ��ަh����J��','L','�d��','690','7',1,1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansKhaki.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/khaki.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','M','�d��','690','2',1,1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansKhaki.jpg',
   SINGLE_BLOB) AS img)


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','S','�d��','690','9',1,1,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansKhaki.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '�u�ʯ��ަh����J��','L','��','690','8',1,1,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','M','��','690','49',1,1,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansWhite.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�u�ʯ��ަh����J��','S','��','690','33',1,1,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MJeansWhite.jpg',
   SINGLE_BLOB) AS img)

      --production in cat4
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select 'Fleece�����M�˲�','L','��','390','78',1,'���i���A�H�K�窫�V��F���i�M���A�Юz�t������A�Ťj�O�b�|',1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1MFleeceStripes.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2MFleeceStripes.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3MFleeceStripes.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4MFleeceStripes.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','M','��','390','14',1,1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','S','��','390','5',1,1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select 'Fleece�����M�˲�','L','��','390','7',1,1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','M','��','390','2',1,1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesRed.jpg',
   SINGLE_BLOB) AS img) 


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','S','��','390','9',1,1,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesRed.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  'Fleece�����M�˲�','L','��','390','8',1,1,4 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','M','��','390','3',1,1,4,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesWhite.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����M�˲�','S','��','390','33',1,1,4,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MFleeceStripesWhite.jpg',
   SINGLE_BLOB) AS img)

      --production in cat5
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�ֽ�ؤ��̺��w´�~�M','L','��','690','15',1,'���i���A�H�K�窫�V��F���i�M���A�Юz�t������A�Ťj�O�b�|',1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1MCashmere.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2MCashmere.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3MCashmere.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4MCashmere.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','M','��','690','14',1,1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','S','��','690','5',1,1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�ֽ�ؤ��̺��w´�~�M','L','��','690','7',1,1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlack.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/black.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','M','��','690','7',1,1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlack.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','S','��','690','4',1,1,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereBlack.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '�ֽ�ؤ��̺��w´�~�M','L','��','690','8',1,1,5 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','M','��','690','3',1,1,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereGrey.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�ֽ�ؤ��̺��w´�~�M','S','��','690','1',1,1,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/MCashmereGrey.jpg',
   SINGLE_BLOB) AS img)
   
      --production in cat6
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�}�h���t�C�ר�T-32','L','��','290','6',1,'�L/¸��ӫ~�Фϭ���J�Ӻ��~��U���M�~�A�H�O���ӫ~���A',3,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FMermaidWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1FMermaid.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2FMermaid.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3FMermaid.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4FMermaid.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�}�h���t�C�ר�T-32','M','��','290','54',1,3,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FMermaidWhite.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�}�h���t�C�ר�T-32','S','��','290','36',1,3,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FMermaidWhite.jpg',
   SINGLE_BLOB) AS img)
   
   
      --production in cat7
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '���z�j�a�v��','L','��','590','9',1,'���i���A�H�K�窫�V��F���i�M���A�Юz�t������A�Ťj�O�b�|',1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1FDress.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2FDress.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3FDress.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4FDress.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���z�j�a�v��','M','��','590','13',1,1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���z�j�a�v��','S','��','590','8',1,1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '���z�j�a�v��','L','��','590','2',1,1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���z�j�a�v��','M','��','590','4',1,1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressGrey.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���z�j�a�v��','S','��','590','36',1,1,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDressGrey.jpg',
   SINGLE_BLOB) AS img)
   
        --production in cat8
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '���R�զϤ�V��w´�~�M','L','��','790','54',1,'���i���A�H�K�窫�V��F���i�M���A�Юz�t������A�Ťj�O�b�|',1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1FVCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2FVCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3FVCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4FVCoat.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','M','��','790','14',1,1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatGrey.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','S','��','790','5',1,1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatGrey.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '���R�զϤ�V��w´�~�M','L','��','790','17',1,1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','M','��','790','6',1,1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatWhite.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','S','��','690','4',1,1,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatWhite.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '���R�զϤ�V��w´�~�M','L','��','790','8',1,1,8 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','M','��','790','3',1,1,8,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���R�զϤ�V��w´�~�M','S','��','790','1',1,1,8,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FVCoatBlue.jpg',
   SINGLE_BLOB) AS img)
   
        --production in cat9
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�����е��߻�~�M','L','��','1290','54',1,'���ӫ~�]�ĥλ��X���ơA�i��|�]�R�q�μ����ް_�p���A�q�н̸�',1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1FDownCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2FDownCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3FDownCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4FDownCoat.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','M','��','1290','14',1,1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','S','��','1290','5',1,1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�����е��߻�~�M','L','��','1290','17',1,1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatWhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/white.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','M','��','1290','6',1,1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatWhite.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','S','��','1290','4',1,1,9,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatWhite.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '�����е��߻�~�M','L','��','1290','8',1,1,9 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','M','��','1290','3',1,1,9,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�����е��߻�~�M','S','��','1290','1',1,1,9,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FDownCoatRed.jpg',
   SINGLE_BLOB) AS img)
   
        --production in cat10
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '���K����','L','��','390','31',1,'���ӫ~�]�ĥλ��X���ơA�i��|�]�R�q�μ����ް_�p���A�q�н̸�',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1FSkirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2FSkirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3FSkirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4FSkirt.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','M','��','390','14',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlue.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','S','��','390','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '���K����','L','��','390','17',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlack.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/black.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','M','��','390','6',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlack.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','S','��','390','4',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtBlack.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '���K����','L','��','390','8',1,2,10 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','M','��','390','3',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtGrey.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '���K����','S','��','390','1',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/FSkirtGrey.jpg',
   SINGLE_BLOB) AS img)
   
        --production in cat11
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�������m-��','L','��','290','25',1,'���ӫ~�]�ĥλ��X���ơA�i��|�]�R�q�μ����ް_�p���A�q�н̸�',1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1KShirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2KShirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3KShirt.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4KShirt.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','M','��','290','14',1,1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtRed.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','S','��','290','5',1,1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�������m-��','L','��','290','15',1,1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','M','��','290','6',1,1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtGrey.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','S','��','290','4',1,1,11,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtGrey.jpg',
   SINGLE_BLOB) AS img)


    insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select  '�������m-��','L','��','290','8',1,1,11 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','M','��','290','3',1,1,11,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtBlue.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������m-��','S','��','290','1',1,1,11,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTshirtBlue.jpg',
   SINGLE_BLOB) AS img)
   
        --production in cat12
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�k�����毾Ũ�m-��','L','��','390','25',1,'�p�ݾ�S�A�ХH�C�Źԥ����S',1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1KCheckered.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2KCheckered.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3KCheckered.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4KCheckered.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�k�����毾Ũ�m-��','M','��','390','14',1,1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtRed.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�k�����毾Ũ�m-��','S','��','390','5',1,1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�k�����毾Ũ�m-��','L','��','390','15',1,1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�k�����毾Ũ�m-��','M','��','390','6',1,1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtGrey.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�k�����毾Ũ�m-��','S','��','390','4',1,1,12,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KCheckeredShirtGrey.jpg',
   SINGLE_BLOB) AS img)
   
   
        --production in cat13
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�������P��u��-��','L','��','190','25',1,'�p�ݾ�S�A�ХH�C�Źԥ����S',1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1KShorts.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2KShorts.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3KShorts.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4KShorts.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','M','��','190','14',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsRed.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','S','��','190','5',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�������P��u��-��','L','��','190','15',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsGrey.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/grey.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','M','��','190','6',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsGrey.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','S','��','190','4',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsGrey.jpg',
   SINGLE_BLOB) AS img)


   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�������P��u��-��','L','��','190','15',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','M','��','190','6',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsBlue.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�������P��u��-��','S','��','190','4',1,1,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KShortsBlue.jpg',
   SINGLE_BLOB) AS img)
   
      --production in cat14
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select '�O�x�¦�߻�m-��','L','��','290','25',1,'�p�ݾ�S�A�ХH�C�Źԥ����S',1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckRed.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1KTurtleneck.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2KTurtleneck.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3KTurtleneck.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4KTurtleneck.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','M','��','290','14',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckRed.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','S','��','290','5',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckRed.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�O�x�¦�߻�m-��','L','��','290','15',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlack.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/black.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','M','��','290','6',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlack.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','S','��','290','4',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlack.jpg',
   SINGLE_BLOB) AS img)


   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select '�O�x�¦�߻�m-��','L','��','290','15',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','M','��','290','6',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlue.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select '�O�x�¦�߻�m-��','S','��','290','4',1,1,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KTurtleneckBlue.jpg',
   SINGLE_BLOB) AS img)

        --production in cat15
  insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
   select 'Fleece�����j��-��','L','�d��','690','25',1,'�~���ɡA���ŽЧC��30�J�F�ШϥΤ��ʬ~���F�ФŪ��ɶ����w',1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatKhaki.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/khaki.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M1KFleeceCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M2KFleeceCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M3KFleeceCoat.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/M4KFleeceCoat.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����j��-��','M','�d��','690','14',1,1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatKhaki.jpg',
   SINGLE_BLOB) AS img)

     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����j��-��','S','�d��','690','5',1,1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatKhaki.jpg',
   SINGLE_BLOB) AS img)

   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
   select 'Fleece�����j��-��','L','��','690','15',1,1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatBlue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/blue.jpg',
   SINGLE_BLOB) AS img) 


   
   insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����j��-��','M','��','690','6',1,1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatBlue.jpg',
   SINGLE_BLOB) AS img)  


     insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
   select 'Fleece�����j��-��','S','��','690','4',1,1,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/KFleeceCoatBlue.jpg',
   SINGLE_BLOB) AS img)

insert into customer values('���p��','�k','huahua@gmail.com','lativ123','106�x�_���j�w�ϴ_���n���@�q386��','0910123567');
insert into customer values('���X�X','�k','chichi123@gmail.com','lalala','231�s�_���s���ϥ��v��108��','0912687987');
insert into customer values('�����k','�k','south88@gmail.com','cloth12345','�s�_���O���ϩ�����39��','0910888999');
insert into customer values('�\�R�R','�k','na_na0505@gmail.com','lativ123','�x�_���j�w�ϫH�q��3�q100��','0918555666');
insert into customer values('�i��|','�k','kevin8081@gmail.com','sa123456','�s�_��Ī�w�ϤT����116��','0988588668');

insert into orders values ('2107-04-03',1,'somewhere','123456','someone',600.1,1)
insert into orders values ('2107-04-03',2,'somewhere','139754','someoneElse',500.1,1)
insert into orders values (null,1,null,null,null,null,0)

insert into orderItem values(null,null,3,null,3,1)   
insert into orderItem values(null,null,2,null,3,2)   
