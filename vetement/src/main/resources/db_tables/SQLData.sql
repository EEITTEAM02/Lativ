--�k �W���� �u�S�I��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima �ֶ��T��','S','��','290','45',1,'�`�L��Ф��}�~��',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','M','��','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima �ֶ��T��','M','��','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','290','5',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima �ֶ��T��','M','��','290','8',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�����u�S�m','S','��','290','35',1,'�`�L��Ф��}�~��',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�����u�S�m','S','��','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','290','5',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����u�S�m','S','��','290','8',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�˸`�ֱ����f�U�u�S�m','S','��','390','38',1,'�`�L��Ф��}�~��',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','M','��','390','24',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','L','��','390','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','XL','��','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�˸`�ֱ����f�U�u�S�m','S','��','390','18',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','M','��','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','L','��','390','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�˸`�ֱ����f�U�u�S�m','S','��','390','38',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','M','��','390','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�ֱ����f�U�u�S�m','L','��','390','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�˸`�֤f�U�u�S�m','S','��','290','38',1,'�`�L��Ф��}�~��',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','M','��','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','L','��','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','XL','��','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�˸`�֤f�U�u�S�m','S','��','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','M','��','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','L','��','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�˸`�֤f�U�u�S�m','S','��','290','28',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','M','��','290','39',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�˸`�֤f�U�u�S�m','L','��','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�e���f�U�u�S�m','S','��','390','28',1,'�Щ�J�Ӻ��~��U���z�t���~�A�H�O���ӫ~���A�C',2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','M','��','390','24',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','L','��','390','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','XL','��','390','15',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�e���f�U�u�S�m','S','��','390','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','M','��','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','L','��','390','15',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�e���f�U�u�S�m','S','��','390','28',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','M','��','390','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�e���f�U�u�S�m','L','��','390','23',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--�k �~�M�� �𶢥~�M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ֽ�x�˪��U�~�M','S','��','990','28',1,'�Фϭ���J�Ӻ��~��U���z�t���~�A�H�O���ӫ~���A�C',2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_color_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','M','��','990','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','L','��','990','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','XL','��','990','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�ֽ�x�˪��U�~�M','S','��','990','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','L','��','990','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ֽ�x�˪��U�~�M','S','��','990','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','M','��','990','33',1,2,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�x�˪��U�~�M','L','��','990','23',1,2,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�򵳳s�U�~�M','S','��','790','28',1,'�`�L��Ф��}�~��',2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳳s�U�~�M','L','��','790','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳳s�U�~�M','XL','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�򵳳s�U�~�M','S','��','790','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳳s�U�~�M','M','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳳s�U�~�M','L','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳳s�U�~�M','XL','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�򵳳s�U�~�M','S','��','790','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���βy�~�M','S','��','690','28',1,'�`�L��Ф��}�~���C',2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','M','��','690','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','L','��','690','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','XL','��','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���βy�~�M','S','��','690','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','M','��','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','L','��','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���βy�~�M','XL','��','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���βy�~�M','S','��','690','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�򵳥߻�~�M','S','��','790','28',1,'�`�L��Ф��}�~���C',2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','M','��','790','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','L','��','790','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','XL','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�򵳥߻�~�M','S','��','790','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','M','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','L','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�򵳥߻�~�M','XL','��','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�򵳥߻�~�M','S','��','790','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���s�U�~�M','S','��','590','28',1,'�`�L��Ф��}�~���C',2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','L','��','590','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���s�U�~�M','S','��','590','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���s�U�~�M','S','��','590','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','M','��','590','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','L','��','590','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���s�U�~�M','S','��','590','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img)



--�k �Ǹ� ���J��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�u�� Skinny Fit ���ަh����J��','S','��','690','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','M','��','690','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','L','��','690','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�� Skinny Fit ���ަh����J��','S','��','690','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','M','��','690','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','L','��','690','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�u�� Skinny Fit ���ަh����J��','S','��','690','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','M','��','690','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�� Skinny Fit ���ަh����J��','L','��','690','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Slim Fit �p�����J��','S','�L��','790','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','M','�L��','790','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','L','�L��','790','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Slim Fit �p�����J��','S','��','790','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','M','��','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','L','��','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Slim Fit �p�����J��','S','�Ŷ�','790','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','M','�Ŷ�','790','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit �p�����J��','L','�Ŷ�','790','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�h�� Slim Fit ���ޤ��J��','S','��','590','45',1,'���i���A�H�K�窫�V��F���i�M���A�H�K�窫�Y��',2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','M','��','590','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','L','��','590','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�h�� Slim Fit ���ޤ��J��','S','��','590','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','M','��','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','L','��','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�h�� Slim Fit ���ޤ��J��','S','�d��','590','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_brown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','M','�d��','590','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','L','�d��','590','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�h�� Slim Fit ���ޤ��J��','S','��','590','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','M','��','590','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h�� Slim Fit ���ޤ��J��','L','��','590','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Regular Fit �������J��','S','�L��','790','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','M','�L��','790','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','L','�L��','790','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Regular Fit �������J��','S','��','790','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','M','��','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','L','��','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Regular Fit �������J��','S','�Ŷ�','790','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','M','�Ŷ�','790','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit �������J��','L','�Ŷ�','790','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J�u��','S','�L��','590','45',1,'�`�L��Ф��}�~��',2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u��','M','�L��','590','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u��','L','�L��','590','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���J�u��','S','��','590','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u��','M','��','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u��','L','��','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k �a�~�A�t�� �a�~�A
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���u�𶢥ֱa','M','�L�@','490','45',1,'�ֻs�~���ǽиm��q������B',2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_color_Sbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���u�𶢥ֱa','L','�L�@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���u�𶢥ֱa','M','�`�@','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_color_Dbrown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���u�𶢥ֱa','L','�`�@','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���|�Ԥh�ֱa','M','�`�@','490','45',1,'�ֻs�~���ǽиm��q������B',2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_color_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���|�Ԥh�ֱa','L','�`�@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���|�Ԥh�ֱa','M','��','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���|�Ԥh�ֱa','L','��','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���¥𶢥ֱa','M','�L�@','490','45',1,'�ֻs�~���ǽиm��q������B',2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_color_Sbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���¥𶢥ֱa','L','�L�@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���¥𶢥ֱa','M','�`�@','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_color_Dbrown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���¥𶢥ֱa','L','�`�@','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���¥𶢥ֱa','M','��','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���¥𶢥ֱa','L','��','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�𶢸y�a-���ʴ�','M','�L�@','190','45',1,'�ֻs�~���ǽиm��q������B',2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�𶢰t���y�a-���ʴ�','M','��','190','45',1,'�ֻs�~���ǽиm��q������B',2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�𶢰t���y�a-���ʴ�','M','��','190','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�𶢰t���y�a-���ʴ�','M','��','190','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 



--�k �w´�m �w´�m���
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ȳ²V��V��w´�m','S','��','590','45',1,'�`�L��Ф��}�~��',2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','M','��','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','L','��','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','XL','��','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�ȳ²V��V��w´�m','S','��','590','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','M','��','590','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','L','��','590','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','XL','��','590','14',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ȳ²V��V��w´�m','S','��','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','M','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','L','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��w´�m','XL','��','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ȳ²V��V��}�̥~�M','S','��','690','45',1,'�`�L��Ф��}�~��',2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','M','��','690','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','L','��','690','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','XL','��','690','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�ȳ²V��V��}�̥~�M','S','��','690','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','M','��','690','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','L','��','690','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','XL','��','690','14',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ȳ²V��V��}�̥~�M','S','��','690','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','M','��','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','L','��','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳ²V��V��}�̥~�M','XL','��','690','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ֽ�ؤ��̺����w´�m','S','��','590','45',1,'�`�L��Ф��}�~��',2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','M','��','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','L','��','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','XL','��','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�ֽ�ؤ��̺����w´�m','M','��','590','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ֽ�ؤ��̺����w´�m','S','��','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','M','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','L','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺����w´�m','XL','��','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ֽ�ؤ��̺������~�M','S','��','690','45',1,'�`�L��Ф��}�~��',2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','M','��','690','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','L','��','690','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','XL','��','690','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ֽ�ؤ��̺������~�M','S','�`��','690','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','M','�`��','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','L','�`��','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺������~�M','XL','�`��','690','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)


-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ֽ�ؤ��̺�V��w´�m','S','��','590','45',1,'�`�L��Ф��}�~��',2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','M','��','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','L','��','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','XL','��','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ֽ�ؤ��̺�V��w´�m','S','��','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','M','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','L','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','XL','��','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ֽ�ؤ��̺�V��w´�m','S','��','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','M','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','L','��','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ֽ�ؤ��̺�V��w´�m','XL','��','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--�k �W���� �u�S�L��T��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'KUMATAN�L��T-01','S','��','290','45',1,'�L¸��ӫ~�Фϭ���J�Ӻ��~��U���M�~�A�H�O���ӫ~���A',2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','M','��','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','L','��','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','XL','��','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'KUMATAN�L��T-01','S','��','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','M','��','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','L','��','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-01','XL','��','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�n�n�j����Tee','S','��','290','45',1,'�L¸��ӫ~�Фϭ���J�Ӻ��~��U���M�~�A�H�O���ӫ~���A',2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n�n�j����Tee','M','��','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n�n�j����Tee','L','��','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n�n�j����Tee','XL','��','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�U�y��k���Tee','S','��','290','45',1,'�`�L��Ф��}�~��',2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�U�y��k���Tee','M','��','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�U�y��k���Tee','L','��','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�U�y��k���Tee','XL','��','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Polar Bear Benjamin�L��T-02','S','��','290','45',1,'�`�L��Ф��}�~��',2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','M','��','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','L','��','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','XL','��','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Polar Bear Benjamin�L��T-02','S','��','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','M','��','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','L','��','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin�L��T-02','XL','��','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'KUMATAN�L��T-02','S','��','290','45',1,'�`�L��Ф��}�~��',2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-02','M','��','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-02','L','��','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-02','XL','��','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'KUMATAN�L��T-02','S','����','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-02','M','����','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN�L��T-02','XL','����','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)



--�k Ũ�m�� ��Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���z�u�SŨ�m','S','��','390','45',1,'�`�L��Ф��}�~��',2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','��','390','28',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','5',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','5',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','14',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���z�u�SŨ�m','S','����','390','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','����','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','����','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','����','390','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���z�u�SŨ�m','S','�L��','390','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','�L��','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','�L��','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','�L��','390','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J�L�S�v��','S','��','690','45',1,'�`�L��Ф��}�~��',2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','M','��','690','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','L','��','690','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','XL','��','690','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J�L�S�v��','S','�L��','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','M','�L��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','L','�L��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L�S�v��','XL','�L��','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J���SŨ�m','S','��','490','45',1,'�`�L��Ф��}�~��',2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','M','��','490','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','L','��','490','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','XL','��','490','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J���SŨ�m','S','�L��','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','M','�L��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','L','�L��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','XL','�L��','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J���SŨ�m','S','�`��','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','M','�`��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','L','�`��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���SŨ�m','XL','�`��','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J�u�S�v��','S','��','690','45',1,'�`�L��Ф��}�~��',2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','M','��','690','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','L','��','690','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','XL','��','690','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J�u�S�v��','S','�L��','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','M','�L��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','L','�L��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','XL','�L��','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J�u�S�v��','S','�`��','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','M','�`��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','L','�`��','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�S�v��','XL','�`��','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ȳµL�SŨ�m','M','��','490','45',1,'�`�L��Ф��}�~��',2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','L','��','490','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','XL','��','490','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ȳµL�SŨ�m','S','��','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','M','��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','L','��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','XL','��','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ȳµL�SŨ�m','S','��','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','M','��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','L','��','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ȳµL�SŨ�m','XL','��','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�k �w´�m���R�զϤ�
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���R�զϤ���w´�m','S','��','690','25',1,'�`�L��Ф��}�~��',2,8,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/goat_shirt_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)



--�k �Ǹ˸ȸ� �ȸˬv��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�����L�������','S','��','490','45',1,'�`�L��Ф��}�~��',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','M','��','490','34',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','L','��','490','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','XL','��','490','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�����L�������','S','���I','490','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','M','���I','490','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','L','���I','490','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','XL','���I','490','14',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����L�������','S','��','490','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','M','��','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','L','��','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L�������','XL','��','490','33',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'ù��������','S','��','290','45',1,'�`�L��Ф��}�~��',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','M','��','290','34',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','L','��','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ù��������','S','��','290','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','M','��','290','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','L','��','290','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'ù��������','S','��','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','M','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù��������','L','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'ù����������','S','��','390','35',1,'�`�L��Ф��}�~��',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','M','��','390','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','L','��','390','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ù����������','S','��','390','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','M','��','390','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','L','��','390','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'ù����������','S','��','390','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','M','��','390','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','L','��','390','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ù����������','S','��','390','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','M','��','390','35',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����������','L','��','390','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�ּu�𶢳s�ǵu��','S','��','490','35',1,'�`�L��Ф��}�~��',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_color_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','M','��','490','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','L','��','490','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�ּu�𶢳s�ǵu��','S','��','490','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','M','��','490','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','L','��','490','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�ּu�𶢳s�ǵu��','S','��','490','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','M','��','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�ּu�𶢳s�ǵu��','L','��','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�u�O�ʪ��ȿ�','S','��','290','35',1,'�`�L��Ф��}�~��',2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','M','��','290','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','L','��','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','XL','��','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�O�ʪ��ȿ�','S','��','290','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','M','��','290','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','L','��','290','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','XL','��','290','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�u�O�ʪ��ȿ�','S','��','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','M','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','L','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','XL','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�u�O�ʪ��ȿ�','S','��','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','M','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','L','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�ʪ��ȿ�','XL','��','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �W���� �u�S
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima �ֶ��T��','S','��','199','45',1,'�`�L��Ф��}�~��',2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_purple.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','M','��','199','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','199','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','199','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima �ֶ��T��','S','��','199','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','M','��','199','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','199','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','199','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima �ֶ��T��','S','����','199','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','M','����','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','����','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','����','199','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima �ֶ��T��','S','��','199','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','M','��','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','L','��','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ֶ��T��','XL','��','199','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�����u�S�m','S','��','249','45',1,'�`�L��Ф��}�~��',2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','249','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','249','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','249','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�����u�S�m','S','��','249','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','249','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','249','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','249','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����u�S�m','S','����','249','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','����','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','����','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','����','249','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����u�S�m','S','��','249','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','M','��','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','L','��','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����u�S�m','XL','��','249','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�����L��W��','S','��','290','45',1,'�`�L��Ф��}�~��',2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','M','��','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','L','��','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����L��W��','S','����','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','M','����','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','L','����','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�����L��W��','S','��','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','M','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�����L��W��','L','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�l�ƭI��','S','��','290','45',1,'�`�L��Ф��}�~��',2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�ƭI��','M','��','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�ƭI��','L','��','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�l�ƭI��','S','��','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�ƭI��','M','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�ƭI��','L','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�⿨�����W��','S','��','290','45',1,'�`�L��Ф��}�~��',2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','M','��','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','L','��','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','XL','��','290','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�⿨�����W��','S','��','290','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','M','��','290','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','L','��','290','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','XL','��','290','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�⿨�����W��','S','����','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','M','����','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','L','����','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','XL','����','290','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�⿨�����W��','S','��','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','M','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','L','��','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�⿨�����W��','XL','��','290','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�ൣ Ũ�m�� ��Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���z�u�SŨ�m','S','��','390','45',1,'�`�L��Ф��}�~��',2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','����','390','28',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','����','390','5',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','����','390','14',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���z�u�SŨ�m','S','�L��','390','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','�L��','390','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','�L��','390','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J�u�SŨ�m','S','��','490','45',1,'�`�L��Ф��}�~��',2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�SŨ�m','M','��','490','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�SŨ�m','L','��','490','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���J�u�SŨ�m','S','�L��','490','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�SŨ�m','M','�L��','490','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�u�SŨ�m','L','�L��','490','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�g��毾�u�SŨ�m','S','��','290','45',1,'�`�L��Ф��}�~��',2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','M','��','290','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','L','��','290','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�g��毾�u�SŨ�m','S','��','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','M','��','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','L','��','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�g��毾�u�SŨ�m','S','����','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','M','����','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','L','����','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�g��毾�u�SŨ�m','S','��','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','M','��','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�g��毾�u�SŨ�m','L','��','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J�L��v��','S','��','490','45',1,'�`�L��Ф��}�~��',2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L��v��','M','��','490','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J�L��v��','L','��','490','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�L��u�S����Ũ�m','S','��','290','45',1,'�`�L��Ф��}�~��',2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�S����Ũ�m','M','��','290','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�S����Ũ�m','L','��','290','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�L��u�S����Ũ�m','S','��','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�S����Ũ�m','M','��','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�S����Ũ�m','L','��','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �Ǹ˸ȸ� �u�ǤC����
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�h����J�u��','S','��','390','45',1,'�`�L��Ф��}�~��',2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','M','��','390','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','L','��','390','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�h����J�u��','S','��','390','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','M','��','390','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','L','��','390','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�h����J�u��','S','����','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','M','����','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','L','����','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�h����J�u��','S','��','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','M','��','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�h����J�u��','L','��','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���K�u��','S','��','290','45',1,'�`�L��Ф��}�~��',2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','M','��','290','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','L','��','290','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���K�u��','S','��','290','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','M','��','290','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','L','��','290','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���K�u��','S','��','290','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','M','��','290','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','L','��','290','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���K�u��','S','��','290','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','M','��','290','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���K�u��','L','��','290','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'ù����a�u��','S','��','390','45',1,'�`�L��Ф��}�~��',2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','M','��','390','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','L','��','390','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ù����a�u��','S','��','390','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','M','��','390','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','L','��','390','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'ù����a�u��','S','��','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','M','��','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ù����a�u��','L','��','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�L��u�O������','S','��','190','45',1,'�`�L��Ф��}�~��',2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�O������','M','��','190','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�O������','L','��','190','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�L��u�O������','S','��','190','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�O������','M','��','190','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�L��u�O������','L','��','190','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�u�O�⿨������','S','��','190','45',1,'�`�L��Ф��}�~��',2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_purple.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_purple.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�⿨������','M','��','190','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�O�⿨������','S','�`��','190','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�⿨������','M','�`��','190','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�u�O�⿨������','S','����','190','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�⿨������','M','����','190','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�u�O�⿨������','S','��','190','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�⿨������','M','��','190','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



--�ൣ ������ HEATUP_�O�x��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�O�x�¦�E����','S','��','249','45',1,'�`�L��Ф��}�~��',2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','M','��','249','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','L','��','249','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�O�x�¦�E����','S','��','249','28',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','M','��','249','5',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','L','��','249','14',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�O�x�¦�E����','S','��','249','8',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','M','��','249','49',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦�E����','L','��','249','33',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�O�x�¦⤺�ۿ�','S','��','249','45',1,'�`�L��Ф��}�~��',2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','M','��','249','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','L','��','249','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�O�x�¦⤺�ۿ�','S','��','249','28',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','M','��','249','5',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','L','��','249','14',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�O�x�¦⤺�ۿ�','S','��','249','8',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','M','��','249','49',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�O�x�¦⤺�ۿ�','L','��','249','33',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���x�¦�E����','S','��','290','45',1,'�`�L��Ф��}�~��',2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���x�¦�E����','M','��','290','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���x�¦�E����','L','��','290','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �~�M�� �O�xFLEECE�t�C
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece�L��s�U�~�M','S','����','490','45',1,'�`�L��Ф��}�~��',2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','M','����','490','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','L','����','490','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece�L��s�U�~�M','S','�¥�','490','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_color_Bwhite.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','M','�¥�','490','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','L','�¥�','490','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�L��s�U�~�M','S','�Ŷ�','490','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','M','�Ŷ�','490','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�L��s�U�~�M','L','�Ŷ�','490','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece�����~�M','S','����','590','45',1,'�`�L��Ф��}�~��',2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','M','����','590','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','L','����','590','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece�����~�M','S','��','590','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','M','��','590','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','L','��','590','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�����~�M','S','��','590','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','M','��','590','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�����~�M','L','��','590','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece�y���~�M','S','����','490','45',1,'�`�L��Ф��}�~��',2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','M','����','490','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','L','����','490','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece�y���~�M','S','��','490','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','M','��','490','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','L','��','490','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�y���~�M','S','��','490','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','M','��','490','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�y���~�M','L','��','490','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece�s�U�~�M','S','����','390','45',1,'�`�L��Ф��}�~��',2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','M','����','390','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','L','����','390','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece�s�U�~�M','S','��','390','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','M','��','390','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','L','��','390','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�s�U�~�M','S','��','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','M','��','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�s�U�~�M','L','��','390','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece�߻�~�M','S','����','390','45',1,'�`�L��Ф��}�~��',2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','M','����','390','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','L','����','390','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece�߻�~�M','S','��','390','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','M','��','390','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�߻�~�M','S','��','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','M','��','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece�߻�~�M','S','��','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','M','��','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece�߻�~�M','L','��','390','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �W���� �a�~�A
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Moomin���K�𶢵u��','S','����','290','25',1,'�`�L��Ф��}�~��',2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','M','����','290','32',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','L','����','290','13',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','XL','����','290','21',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Moomin���K�𶢵u��','S','��','290','21',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','M','��','290','5',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','L','��','290','14',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','XL','��','290','4',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Moomin���K�𶢵u��','S','��','290','18',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','M','��','290','29',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','L','��','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','XL','��','290','33',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Moomin���K�𶢵u��','S','��','290','8',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','M','��','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','L','��','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin���K�𶢵u��','XL','��','290','13',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �~�M�� �𶢥~�M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���s�U�~�M','S','��','490','25',1,'�`�L��Ф��}�~��',2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','M','��','490','32',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���s�U�~�M','S','��','490','21',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','M','��','490','5',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���s�U�~�M','S','��','490','18',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','M','��','490','29',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���s�U�~�M','S','��','490','8',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���s�U�~�M','M','��','490','49',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �~�M�� ����
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '��UVù���s�U�~�M','S','����','490','25',1,'�`�L��Ф��}�~��',2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','M','����','490','32',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','L','����','490','13',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','XL','����','490','21',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��UVù���s�U�~�M','S','��','490','21',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','M','��','490','5',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','L','��','490','14',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','XL','��','490','4',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '��UVù���s�U�~�M','S','��','490','18',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','M','��','490','29',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','L','��','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','XL','��','490','33',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '��UVù���s�U�~�M','S','��','490','8',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','M','��','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','L','��','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù���s�U�~�M','XL','��','490','13',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �Ǹ˸ȸ� ���f��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�l�Ƽu�ʥ𶢪���','S','��','490','25',1,'�`�L��Ф��}�~��',2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�Ƽu�ʥ𶢪���','M','��','490','32',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�l�Ƽu�ʥ𶢪���','S','��','490','21',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�Ƽu�ʥ𶢪���','M','��','490','5',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�l�Ƽu�ʥ𶢪���','S','��','490','8',1,2,21,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�l�Ƽu�ʥ𶢪���','M','��','490','49',1,2,21,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--�ൣ �Ǹ˸ȸ� �v��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���N���v��','S','����','390','25',1,'�`�L��Ф��}�~��',2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','M','����','390','32',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','L','����','390','13',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','XL','����','390','21',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���N���v��','S','��','390','21',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','M','��','390','5',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','L','��','390','14',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���N���v��','XL','��','390','4',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--�ൣ ������ ���l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '��������','S','��','59','25',1,'�`�L��Ф��}�~��',2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��������','M','��','59','32',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��������','S','��','59','21',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��������','M','��','59','5',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��������','S','��','59','21',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��������','M','��','59','5',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--�ൣ ������ ���f��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�u�O�L��C�����f��','S','����','190','25',1,'�`�L��Ф��}�~��',2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','M','����','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','L','����','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','XL','����','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�O�L��C�����f��','S','�`��','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','M','�`��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','L','�`��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','XL','�`��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�O�L��C�����f��','S','��','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','M','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','L','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','XL','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�u�O�L��C�����f��','S','��','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','M','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','L','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�u�O�L��C�����f��','XL','��','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--�ൣ �W���� POLO�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�´ָg��polo�m','S','��','290','25',1,'�`�L��Ф��}�~��',2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k �W���� POLO�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�´ָg��polo�m','S','��','390','25',1,'�`�L��Ф��}�~��',2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k �W���� �a�~�A
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���~�a�M��','S','��','790','25',1,'�`�L��Ф��}�~��',2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','M','��','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','L','��','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','XL','��','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���~�a�M��','S','��','790','21',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','M','��','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','L','��','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���~�a�M��','XL','��','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--�k �~�M�� ��˥~�M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '������˥~�M','S','�L��','1290','25',1,'�`�L��Ф��}�~��',2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','M','�L��','1290','32',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','L','�L��','1290','32',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '������˥~�M','S','��','1290','21',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','M','��','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','L','��','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '������˥~�M','S','�`��','1290','21',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','M','�`��','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '������˥~�M','L','�`��','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 



--�k �~�M�� ����
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�s�U����~�M','S','��','390','25',1,'�`�L��Ф��}�~��',2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�s�U����~�M','M','��','390','32',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�s�U����~�M','S','��','390','21',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_color_brown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�s�U����~�M','M','��','390','5',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�s�U����~�M','S','�`��','390','21',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�s�U����~�M','M','�`��','390','5',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 



--�k �Ǹ� ���f��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���J���f��','S','�L��','690','25',1,'�`�L��Ф��}�~��',2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���f��','M','�L��','690','32',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���f��','L','�L��','690','32',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���J���f��','S','��','690','21',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���f��','M','��','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���f��','L','��','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���J���f��','XL','��','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k �Ǹ� ����
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�_�j REGULAR FIT �L���d���','S','��','590','25',1,'�`�L��Ф��}�~��',2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_color_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','M','��','590','32',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','L','��','590','32',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�_�j REGULAR FIT �L���d���','S','��','590','21',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','M','��','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','L','��','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�_�j REGULAR FIT �L���d���','S','��','590','21',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','M','��','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�_�j REGULAR FIT �L���d���','L','��','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--�k Ũ�m�� ��Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���z�u�SŨ�m','S','��','390','25',1,'�`�L��Ф��}�~��',2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','��','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','��','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','��','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���z�u�SŨ�m','S','�L��','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','M','�L��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','L','�L��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���z�u�SŨ�m','XL','�L��','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--�k Ũ�m�� �Ӱ�Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '����u�SŨ�m','S','��','590','25',1,'�`�L��Ф��}�~��',2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','M','��','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','L','��','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','XL','��','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '����u�SŨ�m','S','��','590','21',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','M','��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','L','��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','XL','��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '����u�SŨ�m','S','�L��','590','21',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','M','�L��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','L','�L��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '����u�SŨ�m','XL','�L��','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--�k Ũ�m�� �k����Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�k�����毾Ũ�m','S','��','390','25',1,'�`�L��Ф��}�~��',2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k ������ ���l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�������','S','��','59','25',1,'�`�L��Ф��}�~��',2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�������','S','��','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)  


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�������','S','��','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�������','S','��','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 



--�k �W���� POLO�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�´ָg��polo�m','S','��','390','25',1,'�`�L��Ф��}�~��',2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�´ָg��polo�m','S','��','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','M','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','L','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�´ָg��polo�m','XL','��','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


--�k �W���� �a�~�A
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�������u��','S','��','290','25',1,'�`�L��Ф��}�~��',2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','M','��','290','32',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','L','��','290','32',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�������u��','S','��','290','21',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','M','��','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','L','��','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�������u��','S','��','290','21',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','M','��','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�������u��','L','��','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--�k Ũ�m�� �Ӱ�Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima �ּu�ʵu�SŨ�m','S','��','590','25',1,'�`�L��Ф��}�~��',2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','M','��','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','L','��','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','XL','��','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima �ּu�ʵu�SŨ�m','S','��','590','21',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','M','��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','L','��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','XL','��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima �ּu�ʵu�SŨ�m','S','�L��','590','21',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','M','�L��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','L','�L��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima �ּu�ʵu�SŨ�m','XL','�L��','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--�k Ũ�m�� �k����Ũ�m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�k�����毾Ũ�m','S','��','390','25',1,'�`�L��Ф��}�~��',2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�k�����毾Ũ�m','S','��','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','M','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','L','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�k�����毾Ũ�m','XL','��','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--�k �~�M�� �𶢥~�M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�X�n�s�U�~�M','S','����','490','25',1,'�`�L��Ф��}�~��',2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�X�n�s�U�~�M','S','��','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�X�n�s�U�~�M','S','��','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�X�n�s�U�~�M','S','��','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 



--�k �~�M�� ����
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '��UVù�������s�U�~�M','S','��','490','25',1,'�`�L��Ф��}�~��',2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','M','��','490','32',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','L','��','490','32',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��UVù�������s�U�~�M','S','��','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','M','��','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','L','��','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��UVù�������s�U�~�M','S','��','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','M','��','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','L','��','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '��UVù�������s�U�~�M','S','����','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','M','����','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '��UVù�������s�U�~�M','L','����','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 



--�k �Ǹ˸ȸ� ���J��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�S�u���J���޿�','S','�L��','790','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','M','�L��','790','424',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','L','�L��','790','242',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�S�u���J���޿�','S','��','790','28',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','M','��','790','5',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','L','��','790','5',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�S�u���J���޿�','S','�`��','790','8',1,2,42 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','M','�`��','790','43',1,2,42,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�S�u���J���޿�','L','�`��','790','49',1,2,42,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--�k �Ǹ˸ȸ� ��
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�n���J�E�����f��','S','�L��','490','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','M','�L��','490','424',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','L','�L��','490','242',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�n���J�E�����f��','S','��','490','28',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','M','��','490','5',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','L','��','490','5',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '�n���J�E�����f��','S','�`��','490','8',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','M','�`��','490','43',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '�n���J�E�����f��','L','�`��','490','49',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--�k ������ �M�D�t�C
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '���D�L��Ӫӱa','S','����','290','45',1,'�ФŨϥκ}�վ��B�å��W�վ��A�H�K�}�a����',2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','M','����','290','424',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','L','����','290','242',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '���D�L��Ӫӱa','S','��','290','28',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','M','��','290','5',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','L','��','290','5',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '���D�L��Ӫӱa','S','�`��','290','8',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','M','�`��','290','43',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '���D�L��Ӫӱa','L','�`��','290','49',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--�k ������ ���l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '�B�ʽ���','S','��','59','25',1,'�`�L��Ф��}�~��',2,45,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_model1.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_model2.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_model3.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_model4.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�B�ʽ���','S','��','59','21',1,2,45,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)  


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '�B�ʽ���','S','��','59','21',1,2,45,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 