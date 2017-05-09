--¨k ¤W¨­Ãþ µu³S­I¤ß
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima ´Ö¶ê»âT«ò','S','¬õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,1,(  
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
select 'Pima ´Ö¶ê»âT«ò','M','¬õ','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','¬õ','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','¬õ','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima ´Ö¶ê»âT«ò','M','¶À','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','¶À','290','5',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','¶À','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima ´Ö¶ê»âT«ò','M','¦Ç','290','8',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','¦Ç','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','¦Ç','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pima_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '±ø¯¾µu³S­m','S','¬õ','290','35',1,'²`²L¦â½Ð¤À¶}¬~º°',2,1,(  
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
select '±ø¯¾µu³S­m','M','¬õ','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','¬õ','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','¬õ','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '±ø¯¾µu³S­m','S','ºñ','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','M','ºñ','290','5',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','ºñ','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','ºñ','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '±ø¯¾µu³S­m','S','¥Õ','290','8',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','M','¥Õ','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','¥Õ','290','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','¥Õ','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','S','¦Ç','390','38',1,'²`²L¦â½Ð¤À¶}¬~º°',2,1,(  
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
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','M','¦Ç','390','24',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','L','¦Ç','390','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','XL','¦Ç','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','S','¶À','390','18',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','M','¶À','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','L','¶À','390','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','S','ºñ','390','38',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','M','ºñ','390','49',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö±ø¯¾¤f³Uµu³S­m','L','ºñ','390','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/streak_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦Ë¸`´Ö¤f³Uµu³S­m','S','¦Ç','290','38',1,'²`²L¦â½Ð¤À¶}¬~º°',2,1,(  
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
select '¦Ë¸`´Ö¤f³Uµu³S­m','M','¦Ç','290','34',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','L','¦Ç','290','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','XL','¦Ç','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¦Ë¸`´Ö¤f³Uµu³S­m','S','¥Õ','290','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','M','¥Õ','290','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','L','¥Õ','290','14',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦Ë¸`´Ö¤f³Uµu³S­m','S','¶Â','290','28',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','M','¶Â','290','39',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Ë¸`´Ö¤f³Uµu³S­m','L','¶Â','290','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cutton_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¼eª©¤f³Uµu³S­m','S','¦Ç','390','28',1,'½Ð©ñ¤J²Óºô¬~¦ç³U¤¤®z³t¤ô¬~¡A¥H«O«ù°Ó«~«¬ºA¡C',2,1,(  
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
select '¼eª©¤f³Uµu³S­m','M','¦Ç','390','24',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','L','¦Ç','390','23',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','XL','¦Ç','390','15',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼eª©¤f³Uµu³S­m','S','¥Õ','390','28',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','M','¥Õ','390','25',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','L','¥Õ','390','15',1,2,1,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼eª©¤f³Uµu³S­m','S','¶Â','390','28',1,2,1 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','M','¶Â','390','33',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼eª©¤f³Uµu³S­m','L','¶Â','390','23',1,2,1,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/width_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--¨k ¥~®MÃþ ¥ð¶¢¥~®M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´Ö½è­x¸Ëªþ´U¥~®M','S','½Å','990','28',1,'½Ð¤Ï­±©ñ¤J²Óºô¬~¦ç³U¤¤®z³t¤ô¬~¡A¥H«O«ù°Ó«~«¬ºA¡C',2,2,(  
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
select '´Ö½è­x¸Ëªþ´U¥~®M','M','½Å','990','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è­x¸Ëªþ´U¥~®M','L','½Å','990','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è­x¸Ëªþ´U¥~®M','XL','½Å','990','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '´Ö½è­x¸Ëªþ´U¥~®M','S','ºñ','990','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è­x¸Ëªþ´U¥~®M','L','ºñ','990','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö½è­x¸Ëªþ´U¥~®M','S','ÂÅ','990','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è­x¸Ëªþ´U¥~®M','M','ÂÅ','990','33',1,2,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è­x¸Ëªþ´U¥~®M','L','ÂÅ','990','23',1,2,2,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤òµ³³s´U¥~®M','S','¦Ç','790','28',1,'²`²L¦â½Ð¤À¶}¬~º°',2,2,(  
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
select '¤òµ³³s´U¥~®M','L','¦Ç','790','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³³s´U¥~®M','XL','¦Ç','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤òµ³³s´U¥~®M','S','¶Â','790','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³³s´U¥~®M','M','¶Â','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³³s´U¥~®M','L','¶Â','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³³s´U¥~®M','XL','¶Â','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤òµ³³s´U¥~®M','S','ÂÅ','790','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤ò°é´Î²y¥~®M','S','¶Â','690','28',1,'²`²L¦â½Ð¤À¶}¬~º°¡C',2,2,(  
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
select '¤ò°é´Î²y¥~®M','M','¶Â','690','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é´Î²y¥~®M','L','¶Â','690','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é´Î²y¥~®M','XL','¶Â','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é´Î²y¥~®M','S','ºñ','690','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é´Î²y¥~®M','M','ºñ','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é´Î²y¥~®M','L','ºñ','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é´Î²y¥~®M','XL','ºñ','690','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤ò°é´Î²y¥~®M','S','ÂÅ','690','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤òµ³¥ß»â¥~®M','S','¶Â','790','28',1,'²`²L¦â½Ð¤À¶}¬~º°¡C',2,2,(  
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
select '¤òµ³¥ß»â¥~®M','M','¶Â','790','24',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³¥ß»â¥~®M','L','¶Â','790','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³¥ß»â¥~®M','XL','¶Â','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤òµ³¥ß»â¥~®M','S','ºñ','790','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³¥ß»â¥~®M','M','ºñ','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³¥ß»â¥~®M','L','ºñ','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤òµ³¥ß»â¥~®M','XL','ºñ','790','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤òµ³¥ß»â¥~®M','S','¦Ç','790','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤ò°é³s´U¥~®M','S','¶Â','590','28',1,'²`²L¦â½Ð¤À¶}¬~º°¡C',2,2,(  
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
select '¤ò°é³s´U¥~®M','L','¶Â','590','23',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é³s´U¥~®M','S','ºñ','590','28',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤ò°é³s´U¥~®M','S','ÂÅ','590','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é³s´U¥~®M','M','ÂÅ','590','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é³s´U¥~®M','L','ÂÅ','590','15',1,2,2,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤ò°é³s´U¥~®M','S','¶À','590','28',1,2,2 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cuttoncoat_m_04/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img)



--¨k ¿Ç¸Ë ¤û¥J¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','S','¦Ç','690','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,3,(  
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
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','M','¦Ç','690','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','L','¦Ç','690','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','S','¥Õ','690','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','M','¥Õ','690','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','L','¥Õ','690','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','S','ºñ','690','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','M','ºñ','690','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u©Ê Skinny Fit ¯¶ºÞ¦h¦â¤û¥J¿Ç','L','ºñ','690','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Slim Fit ¤pª½¤û¥J¿Ç','S','²LÂÅ','790','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,3,(  
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
select 'Slim Fit ¤pª½¤û¥J¿Ç','M','²LÂÅ','790','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit ¤pª½¤û¥J¿Ç','L','²LÂÅ','790','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Slim Fit ¤pª½¤û¥J¿Ç','S','ÂÅ','790','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit ¤pª½¤û¥J¿Ç','M','ÂÅ','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit ¤pª½¤û¥J¿Ç','L','ÂÅ','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Slim Fit ¤pª½¤û¥J¿Ç','S','ÂÅ¶Â','790','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit ¤pª½¤û¥J¿Ç','M','ÂÅ¶Â','790','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Slim Fit ¤pª½¤û¥J¿Ç','L','ÂÅ¶Â','790','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_02/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','S','¦Ç','590','45',1,'¤£¥iÀã©ñ¡A¥H§K¦çª«¬V¦â¡F¤£¥i¯M°®¡A¥H§K¦çª«ÁY¤ô',2,3,(  
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
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','M','¦Ç','590','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','L','¦Ç','590','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','S','ºñ','590','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','M','ºñ','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','L','ºñ','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','S','¥d¨ä','590','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_brown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','M','¥d¨ä','590','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','L','¥d¨ä','590','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','S','¬õ','590','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','M','¬õ','590','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â Slim Fit ¯¶ºÞ¤û¥J¿Ç','L','¬õ','590','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Regular Fit ª½µ©¤û¥J¿Ç','S','²LÂÅ','790','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,3,(  
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
select 'Regular Fit ª½µ©¤û¥J¿Ç','M','²LÂÅ','790','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit ª½µ©¤û¥J¿Ç','L','²LÂÅ','790','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Regular Fit ª½µ©¤û¥J¿Ç','S','ÂÅ','790','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit ª½µ©¤û¥J¿Ç','M','ÂÅ','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit ª½µ©¤û¥J¿Ç','L','ÂÅ','790','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Regular Fit ª½µ©¤û¥J¿Ç','S','ÂÅ¶Â','790','8',1,2,3 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit ª½µ©¤û¥J¿Ç','M','ÂÅ¶Â','790','33',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Regular Fit ª½µ©¤û¥J¿Ç','L','ÂÅ¶Â','790','49',1,2,3,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_04/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥Jµu¿Ç','S','²LÂÅ','590','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,3,(  
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
select '¤û¥Jµu¿Ç','M','²LÂÅ','590','34',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu¿Ç','L','²LÂÅ','590','23',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¥Jµu¿Ç','S','ÂÅ','590','28',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu¿Ç','M','ÂÅ','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu¿Ç','L','ÂÅ','590','5',1,2,3,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/pant_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ®a©~ªA°t¥ó ®a©~ªA
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'À£½u¥ð¶¢¥Ö±a','M','²L©@','490','45',1,'¥Ö»s«~¦¬¯Ç½Ð¸m©ó³q­·°®Àê³B',2,4,(  
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
select 'À£½u¥ð¶¢¥Ö±a','L','²L©@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'À£½u¥ð¶¢¥Ö±a','M','²`©@','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_color_Dbrown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'À£½u¥ð¶¢¥Ö±a','L','²`©@','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_01/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '³£·|²Ô¤h¥Ö±a','M','²`©@','490','45',1,'¥Ö»s«~¦¬¯Ç½Ð¸m©ó³q­·°®Àê³B',2,4,(  
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
select '³£·|²Ô¤h¥Ö±a','L','²`©@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '³£·|²Ô¤h¥Ö±a','M','¶Â','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³£·|²Ô¤h¥Ö±a','L','¶Â','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¥éÂÂ¥ð¶¢¥Ö±a','M','²L©@','490','45',1,'¥Ö»s«~¦¬¯Ç½Ð¸m©ó³q­·°®Àê³B',2,4,(  
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
select '¥éÂÂ¥ð¶¢¥Ö±a','L','²L©@','490','23',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Sbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¥éÂÂ¥ð¶¢¥Ö±a','M','²`©@','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_color_Dbrown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¥éÂÂ¥ð¶¢¥Ö±a','L','²`©@','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_Dbrown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¥éÂÂ¥ð¶¢¥Ö±a','M','¶Â','490','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¥éÂÂ¥ð¶¢¥Ö±a','L','¶Â','490','5',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¥ð¶¢¸y±a-¤¤©Ê´Ú','M','²L©@','190','45',1,'¥Ö»s«~¦¬¯Ç½Ð¸m©ó³q­·°®Àê³B',2,4,(  
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
select '¥ð¶¢°t±ø¸y±a-¤¤©Ê´Ú','M','¬õ','190','45',1,'¥Ö»s«~¦¬¯Ç½Ð¸m©ó³q­·°®Àê³B',2,4,(  
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
select '¥ð¶¢°t±ø¸y±a-¤¤©Ê´Ú','M','ºñ','190','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¥ð¶¢°t±ø¸y±a-¤¤©Ê´Ú','M','¦Ç','190','28',1,2,4,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/accessory_m_05/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 



--¨k °wÂ´­m °wÂ´­m¤ò¦ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¨È³Â²V¯¼V»â°wÂ´­m','S','¦Ç','590','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,5,(  
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
select '¨È³Â²V¯¼V»â°wÂ´­m','M','¦Ç','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','L','¦Ç','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','XL','¦Ç','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¨È³Â²V¯¼V»â°wÂ´­m','S','ÂÅ','590','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','M','ÂÅ','590','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','L','ÂÅ','590','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','XL','ÂÅ','590','14',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¨È³Â²V¯¼V»â°wÂ´­m','S','ºñ','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','M','ºñ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','L','ºñ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â°wÂ´­m','XL','ºñ','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','S','¦Ç','690','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,5,(  
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
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','M','¦Ç','690','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','L','¦Ç','690','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','XL','¦Ç','690','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','S','ÂÅ','690','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','M','ÂÅ','690','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','L','ÂÅ','690','5',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','XL','ÂÅ','690','14',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','S','ºñ','690','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','M','ºñ','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','L','ºñ','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³Â²V¯¼V»â¶}ÃÌ¥~®M','XL','ºñ','690','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','S','¦Ç','590','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,5,(  
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
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','M','¦Ç','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','L','¦Ç','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','XL','¦Ç','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','M','ÂÅ','590','28',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','S','ºñ','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','M','ºñ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','L','ºñ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸¶ê»â°wÂ´­m','XL','ºñ','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','S','¦Ç','690','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,5,(  
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
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','M','¦Ç','690','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','L','¦Ç','690','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','XL','¦Ç','690','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','S','²`ÂÅ','690','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','M','²`ÂÅ','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','L','²`ÂÅ','690','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸±ø¯¾¥~®M','XL','²`ÂÅ','690','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)


-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','S','¦Ç','590','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,5,(  
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
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','M','¦Ç','590','34',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','L','¦Ç','590','23',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','XL','¦Ç','590','25',1,2,5,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','S','ÂÅ','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','M','ÂÅ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','L','ÂÅ','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','XL','ÂÅ','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','S','¶Â','590','8',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','M','¶Â','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','L','¶Â','590','49',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö½è³Ø¤°¦Ìº¸V»â°wÂ´­m','XL','¶Â','590','33',1,2,5,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sweater_m_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--¤k ¤W¨­Ãþ µu³S¦LªáT«ò
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'KUMATAN¦LªáT-01','S','¥Õ','290','45',1,'¦LÂ¸ªá°Ó«~½Ð¤Ï­±©ñ¤J²Óºô¬~¦ç³U¤¤²M¬~¡A¥H«O«ù°Ó«~«¬ºA',2,6,(  
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
select 'KUMATAN¦LªáT-01','M','¥Õ','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-01','L','¥Õ','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-01','XL','¥Õ','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'KUMATAN¦LªáT-01','S','¶Â','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-01','M','¶Â','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-01','L','¶Â','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-01','XL','¶Â','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '²n²n§j®ü­·Tee','S','¥Õ','290','45',1,'¦LÂ¸ªá°Ó«~½Ð¤Ï­±©ñ¤J²Óºô¬~¦ç³U¤¤²M¬~¡A¥H«O«ù°Ó«~«¬ºA',2,6,(  
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
select '²n²n§j®ü­·Tee','M','¥Õ','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²n²n§j®ü­·Tee','L','¥Õ','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²n²n§j®ü­·Tee','XL','¥Õ','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤U¸yðñªkÅé¾ÞTee','S','¶Â','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,6,(  
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
select '¤U¸yðñªkÅé¾ÞTee','M','¶Â','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤U¸yðñªkÅé¾ÞTee','L','¶Â','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤U¸yðñªkÅé¾ÞTee','XL','¶Â','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Polar Bear Benjamin¦LªáT-02','S','¶À','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,6,(  
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
select 'Polar Bear Benjamin¦LªáT-02','M','¶À','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin¦LªáT-02','L','¶À','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin¦LªáT-02','XL','¶À','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Polar Bear Benjamin¦LªáT-02','S','¶Â','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin¦LªáT-02','M','¶Â','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin¦LªáT-02','L','¶Â','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Polar Bear Benjamin¦LªáT-02','XL','¶Â','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'KUMATAN¦LªáT-02','S','¶À','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,6,(  
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
select 'KUMATAN¦LªáT-02','M','¶À','290','34',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-02','L','¶À','290','23',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-02','XL','¶À','290','25',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'KUMATAN¦LªáT-02','S','¯»¬õ','290','28',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-02','M','¯»¬õ','290','5',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'KUMATAN¦LªáT-02','XL','¯»¬õ','290','14',1,2,6,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/tshirt_w_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)



--¤k Å¨­mÃþ ¥ð¶¢Å¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¬zµu³SÅ¨­m','S','¥Õ','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,7,(  
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
select '¤û¬zµu³SÅ¨­m','M','¥Õ','390','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¥Õ','390','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','¥Õ','390','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','ºñ','390','28',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','ºñ','390','5',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','ºñ','390','5',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','ºñ','390','14',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¬zµu³SÅ¨­m','S','¯»¬õ','390','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','¯»¬õ','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¯»¬õ','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','¯»¬õ','390','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¬zµu³SÅ¨­m','S','²LÂÅ','390','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','²LÂÅ','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','²LÂÅ','390','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','²LÂÅ','390','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥JµL³S¬v¸Ë','S','ÂÅ','690','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,7,(  
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
select '¤û¥JµL³S¬v¸Ë','M','ÂÅ','690','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥JµL³S¬v¸Ë','L','ÂÅ','690','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥JµL³S¬v¸Ë','XL','ÂÅ','690','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥JµL³S¬v¸Ë','S','²LÂÅ','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥JµL³S¬v¸Ë','M','²LÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥JµL³S¬v¸Ë','L','²LÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥JµL³S¬v¸Ë','XL','²LÂÅ','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥Jªø³SÅ¨­m','S','ÂÅ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,7,(  
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
select '¤û¥Jªø³SÅ¨­m','M','ÂÅ','490','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','L','ÂÅ','490','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','XL','ÂÅ','490','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥Jªø³SÅ¨­m','S','²LÂÅ','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','M','²LÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','L','²LÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','XL','²LÂÅ','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥Jªø³SÅ¨­m','S','²`ÂÅ','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','M','²`ÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','L','²`ÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jªø³SÅ¨­m','XL','²`ÂÅ','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_03/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥Jµu³S¬v¸Ë','S','ÂÅ','690','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,7,(  
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
select '¤û¥Jµu³S¬v¸Ë','M','ÂÅ','690','34',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','L','ÂÅ','690','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','XL','ÂÅ','690','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥Jµu³S¬v¸Ë','S','²LÂÅ','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','M','²LÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','L','²LÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','XL','²LÂÅ','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥Jµu³S¬v¸Ë','S','²`ÂÅ','690','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','M','²`ÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','L','²`ÂÅ','690','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³S¬v¸Ë','XL','²`ÂÅ','690','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_04/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¨È³ÂµL³SÅ¨­m','M','¥Õ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,7,(  
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
select '¨È³ÂµL³SÅ¨­m','L','¥Õ','490','23',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','XL','¥Õ','490','25',1,2,7,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¨È³ÂµL³SÅ¨­m','S','¶Â','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','M','¶Â','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','L','¶Â','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','XL','¶Â','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¨È³ÂµL³SÅ¨­m','S','ÂÅ','490','8',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','M','ÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','L','ÂÅ','490','49',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¨È³ÂµL³SÅ¨­m','XL','ÂÅ','490','33',1,2,7,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_w_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¤k °wÂ´­m¬üÄR¿Õ¦Ï¤ò
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¬üÄR¿Õ¦Ï¤ò¶ê»â°wÂ´­m','S','¶Â','690','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,8,(  
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



--¤k ¿Ç¸Ë¸È¸Ë ¸È¸Ë¬v¸Ë
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '³·¯¼¦Lªá¦ÊÁ·¸È','S','¬õ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,10,(  
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
select '³·¯¼¦Lªá¦ÊÁ·¸È','M','¬õ','490','34',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','L','¬õ','490','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','XL','¬õ','490','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '³·¯¼¦Lªá¦ÊÁ·¸È','S','¥ÕÂI','490','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','M','¥ÕÂI','490','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','L','¥ÕÂI','490','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','XL','¥ÕÂI','490','14',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '³·¯¼¦Lªá¦ÊÁ·¸È','S','¶Â','490','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','M','¶Â','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','L','¶Â','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³·¯¼¦Lªá¦ÊÁ·¸È','XL','¶Â','490','33',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Ã¹°¨¥¬¯¶¸È','S','¬õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,10,(  
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
select 'Ã¹°¨¥¬¯¶¸È','M','¬õ','290','34',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¯¶¸È','L','¬õ','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Ã¹°¨¥¬¯¶¸È','S','ºñ','290','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¯¶¸È','M','ºñ','290','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¯¶¸È','L','ºñ','290','5',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Ã¹°¨¥¬¯¶¸È','S','¶Â','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¯¶¸È','M','¶Â','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¯¶¸È','L','¶Â','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Ã¹°¨¥¬¥´Á·¸È','S','¥Õ','390','35',1,'²`²L¦â½Ð¤À¶}¬~º°',2,10,(  
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
select 'Ã¹°¨¥¬¥´Á·¸È','M','¥Õ','390','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','L','¥Õ','390','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Ã¹°¨¥¬¥´Á·¸È','S','ºñ','390','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','M','ºñ','390','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','L','ºñ','390','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Ã¹°¨¥¬¥´Á·¸È','S','¶Â','390','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','M','¶Â','390','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','L','¶Â','390','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Ã¹°¨¥¬¥´Á·¸È','S','¦Ç','390','28',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','M','¦Ç','390','35',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹°¨¥¬¥´Á·¸È','L','¦Ç','390','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','S','´Ä','490','35',1,'²`²L¦â½Ð¤À¶}¬~º°',2,10,(  
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
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','M','´Ä','490','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','L','´Ä','490','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','S','ºñ','490','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','M','ºñ','490','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','L','ºñ','490','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '´Ö¼u¥ð¶¢³s¿Çµu¸È','S','¶Â','490','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','M','¶Â','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´Ö¼u¥ð¶¢³s¿Çµu¸È','L','¶Â','490','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¼u¤O³Êª¬¸È¿Ç','S','¬õ','290','35',1,'²`²L¦â½Ð¤À¶}¬~º°',2,10,(  
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
select '¼u¤O³Êª¬¸È¿Ç','M','¬õ','290','54',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','L','¬õ','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','XL','¬õ','290','23',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u¤O³Êª¬¸È¿Ç','S','ºñ','290','18',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','M','ºñ','290','15',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','L','ºñ','290','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','XL','ºñ','290','25',1,2,10,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼u¤O³Êª¬¸È¿Ç','S','¶Â','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','M','¶Â','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','L','¶Â','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','XL','¶Â','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼u¤O³Êª¬¸È¿Ç','S','¦Ç','290','8',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','M','¦Ç','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','L','¦Ç','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O³Êª¬¸È¿Ç','XL','¦Ç','290','49',1,2,10,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/skirt_w_05/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¤W¨­Ãþ µu³S
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima ´Ö¶ê»âT«ò','S','µµ','199','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,16,(  
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
select 'Pima ´Ö¶ê»âT«ò','M','µµ','199','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','µµ','199','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','µµ','199','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima ´Ö¶ê»âT«ò','S','¶À','199','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','M','¶À','199','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','¶À','199','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','¶À','199','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima ´Ö¶ê»âT«ò','S','¯»¬õ','199','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','M','¯»¬õ','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','¯»¬õ','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','¯»¬õ','199','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Pima ´Ö¶ê»âT«ò','S','ÂÅ','199','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','M','ÂÅ','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','L','ÂÅ','199','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¶ê»âT«ò','XL','ÂÅ','199','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '±ø¯¾µu³S­m','S','¬õ','249','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,16,(  
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
select '±ø¯¾µu³S­m','M','¬õ','249','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','¬õ','249','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','¬õ','249','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '±ø¯¾µu³S­m','S','ºñ','249','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','M','ºñ','249','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','ºñ','249','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','ºñ','249','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '±ø¯¾µu³S­m','S','¯»¬õ','249','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','M','¯»¬õ','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','¯»¬õ','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','¯»¬õ','249','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '±ø¯¾µu³S­m','S','ÂÅ','249','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','M','ÂÅ','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','L','ÂÅ','249','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾µu³S­m','XL','ÂÅ','249','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '±ø¯¾¦Lªá¤W¦ç','S','¥Õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,16,(  
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
select '±ø¯¾¦Lªá¤W¦ç','M','¥Õ','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾¦Lªá¤W¦ç','L','¥Õ','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '±ø¯¾¦Lªá¤W¦ç','S','¯»¬õ','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾¦Lªá¤W¦ç','M','¯»¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾¦Lªá¤W¦ç','L','¯»¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '±ø¯¾¦Lªá¤W¦ç','S','ÂÅ','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾¦Lªá¤W¦ç','M','ÂÅ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾¦Lªá¤W¦ç','L','ÂÅ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '§l±Æ­I¤ß','S','¥Õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,16,(  
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
select '§l±Æ­I¤ß','M','¥Õ','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§l±Æ­I¤ß','L','¥Õ','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '§l±Æ­I¤ß','S','¬õ','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§l±Æ­I¤ß','M','¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§l±Æ­I¤ß','L','¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_04/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '©â¿¨Á¢µ·¤W¦ç','S','¥Õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,16,(  
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
select '©â¿¨Á¢µ·¤W¦ç','M','¥Õ','290','34',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','L','¥Õ','290','23',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','XL','¥Õ','290','25',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '©â¿¨Á¢µ·¤W¦ç','S','ºñ','290','28',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','M','ºñ','290','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','L','ºñ','290','5',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','XL','ºñ','290','14',1,2,16,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '©â¿¨Á¢µ·¤W¦ç','S','¯»¬õ','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','M','¯»¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','L','¯»¬õ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','XL','¯»¬õ','290','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '©â¿¨Á¢µ·¤W¦ç','S','ÂÅ','290','8',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','M','ÂÅ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','L','ÂÅ','290','49',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©â¿¨Á¢µ·¤W¦ç','XL','ÂÅ','290','33',1,2,16,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shirt_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ Å¨­mÃþ ¥ð¶¢Å¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¬zµu³SÅ¨­m','S','ºñ','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,17,(  
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
select '¤û¬zµu³SÅ¨­m','M','ºñ','390','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','ºñ','390','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','¯»¬õ','390','28',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','¯»¬õ','390','5',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¯»¬õ','390','14',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¬zµu³SÅ¨­m','S','²LÂÅ','390','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','²LÂÅ','390','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','²LÂÅ','390','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥Jµu³SÅ¨­m','S','ÂÅ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,17,(  
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
select '¤û¥Jµu³SÅ¨­m','M','ÂÅ','490','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³SÅ¨­m','L','ÂÅ','490','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤û¥Jµu³SÅ¨­m','S','²LÂÅ','490','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³SÅ¨­m','M','²LÂÅ','490','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥Jµu³SÅ¨­m','L','²LÂÅ','490','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_02/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¸g¨å®æ¯¾µu³SÅ¨­m','S','ÂÅ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,17,(  
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
select '¸g¨å®æ¯¾µu³SÅ¨­m','M','ÂÅ','290','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','L','ÂÅ','290','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¸g¨å®æ¯¾µu³SÅ¨­m','S','¬õ','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','M','¬õ','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','L','¬õ','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¸g¨å®æ¯¾µu³SÅ¨­m','S','¯»¬õ','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','M','¯»¬õ','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','L','¯»¬õ','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¸g¨å®æ¯¾µu³SÅ¨­m','S','ºñ','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','M','ºñ','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¸g¨å®æ¯¾µu³SÅ¨­m','L','ºñ','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_03/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥J¦Lªá¬v¸Ë','S','ÂÅ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,17,(  
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
select '¤û¥J¦Lªá¬v¸Ë','M','ÂÅ','490','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥J¦Lªá¬v¸Ë','L','ÂÅ','490','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦Lªáµu³Sªøª©Å¨­m','S','¥Õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,17,(  
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
select '¦Lªáµu³Sªøª©Å¨­m','M','¥Õ','290','34',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªáµu³Sªøª©Å¨­m','L','¥Õ','290','23',1,2,17,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦Lªáµu³Sªøª©Å¨­m','S','¶Â','290','8',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªáµu³Sªøª©Å¨­m','M','¶Â','290','49',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªáµu³Sªøª©Å¨­m','L','¶Â','290','33',1,2,17,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_k_05/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¿Ç¸Ë¸È¸Ë µu¿Ç¤C¤À¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦h¦â¤û¥Jµu¿Ç','S','ºñ','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,13,(  
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
select '¦h¦â¤û¥Jµu¿Ç','M','ºñ','390','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','L','ºñ','390','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¦h¦â¤û¥Jµu¿Ç','S','ÂÅ','390','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','M','ÂÅ','390','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','L','ÂÅ','390','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦h¦â¤û¥Jµu¿Ç','S','¯»¬õ','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','M','¯»¬õ','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','L','¯»¬õ','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¦h¦â¤û¥Jµu¿Ç','S','¥Õ','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','M','¥Õ','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦h¦â¤û¥Jµu¿Ç','L','¥Õ','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '»´«Kµu¿Ç','S','½Å','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,13,(  
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
select '»´«Kµu¿Ç','M','½Å','290','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','L','½Å','290','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '»´«Kµu¿Ç','S','ÂÅ','290','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','M','ÂÅ','290','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','L','ÂÅ','290','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '»´«Kµu¿Ç','S','¬õ','290','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','M','¬õ','290','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','L','¬õ','290','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '»´«Kµu¿Ç','S','¶À','290','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','M','¶À','290','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«Kµu¿Ç','L','¶À','290','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_02/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Ã¹¯¾ºò±aµu¿Ç','S','¦Ç','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,13,(  
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
select 'Ã¹¯¾ºò±aµu¿Ç','M','¦Ç','390','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹¯¾ºò±aµu¿Ç','L','¦Ç','390','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Ã¹¯¾ºò±aµu¿Ç','S','ÂÅ','390','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹¯¾ºò±aµu¿Ç','M','ÂÅ','390','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹¯¾ºò±aµu¿Ç','L','ÂÅ','390','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Ã¹¯¾ºò±aµu¿Ç','S','¬õ','390','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹¯¾ºò±aµu¿Ç','M','¬õ','390','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Ã¹¯¾ºò±aµu¿Ç','L','¬õ','390','33',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_03/picture_main_red.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¦Lªá¼u¤O¤­¤À¿Ç','S','¥Õ','190','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,13,(  
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
select '¦Lªá¼u¤O¤­¤À¿Ç','M','¥Õ','190','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªá¼u¤O¤­¤À¿Ç','L','¥Õ','190','23',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_white.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¦Lªá¼u¤O¤­¤À¿Ç','S','¶Â','190','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªá¼u¤O¤­¤À¿Ç','M','¶Â','190','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¦Lªá¼u¤O¤­¤À¿Ç','L','¶Â','190','14',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_04/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¼u¤O©â¿¨¤­¤À¿Ç','S','µµ','190','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,13,(  
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
select '¼u¤O©â¿¨¤­¤À¿Ç','M','µµ','190','34',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_purple.jpg',
   SINGLE_BLOB) AS img)
  

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u¤O©â¿¨¤­¤À¿Ç','S','²`ÂÅ','190','28',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O©â¿¨¤­¤À¿Ç','M','²`ÂÅ','190','5',1,2,13,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼u¤O©â¿¨¤­¤À¿Ç','S','¯»¬õ','190','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O©â¿¨¤­¤À¿Ç','M','¯»¬õ','190','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¼u¤O©â¿¨¤­¤À¿Ç','S','¥Õ','190','8',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O©â¿¨¤­¤À¿Ç','M','¥Õ','190','49',1,2,13,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortpant_k_05/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¤ºµÛÃþ HEATUP_«O·x¦ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '«O·x¯Â¦â¤E¤À¿Ç','S','¬õ','249','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,14,(  
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
select '«O·x¯Â¦â¤E¤À¿Ç','M','¬õ','249','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤E¤À¿Ç','L','¬õ','249','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '«O·x¯Â¦â¤E¤À¿Ç','S','ÂÅ','249','28',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤E¤À¿Ç','M','ÂÅ','249','5',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤E¤À¿Ç','L','ÂÅ','249','14',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '«O·x¯Â¦â¤E¤À¿Ç','S','¥Õ','249','8',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤E¤À¿Ç','M','¥Õ','249','49',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤E¤À¿Ç','L','¥Õ','249','33',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '«O·x¯Â¦â¤ºµÛ¿Ç','S','¶Â','249','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,14,(  
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
select '«O·x¯Â¦â¤ºµÛ¿Ç','M','¶Â','249','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤ºµÛ¿Ç','L','¶Â','249','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '«O·x¯Â¦â¤ºµÛ¿Ç','S','ÂÅ','249','28',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤ºµÛ¿Ç','M','ÂÅ','249','5',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤ºµÛ¿Ç','L','ÂÅ','249','14',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '«O·x¯Â¦â¤ºµÛ¿Ç','S','¦Ç','249','8',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤ºµÛ¿Ç','M','¦Ç','249','49',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '«O·x¯Â¦â¤ºµÛ¿Ç','L','¦Ç','249','33',1,2,14,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_02/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '·¥·x¯Â¦â¤E¤À¿Ç','S','¥Õ','290','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,14,(  
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
select '·¥·x¯Â¦â¤E¤À¿Ç','M','¥Õ','290','34',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '·¥·x¯Â¦â¤E¤À¿Ç','L','¥Õ','290','23',1,2,14,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/heat_k_03/picture_main_white.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¥~®MÃþ «O·xFLEECE¨t¦C
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece¦Lªá³s´U¥~®M','S','¯»¬õ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,15,(  
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
select 'Fleece¦Lªá³s´U¥~®M','M','¯»¬õ','490','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¦Lªá³s´U¥~®M','L','¯»¬õ','490','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece¦Lªá³s´U¥~®M','S','¶Â¥Õ','490','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_color_Bwhite.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¦Lªá³s´U¥~®M','M','¶Â¥Õ','490','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¦Lªá³s´U¥~®M','L','¶Â¥Õ','490','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Bwhite.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece¦Lªá³s´U¥~®M','S','ÂÅ¶Â','490','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_color_Xblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¦Lªá³s´U¥~®M','M','ÂÅ¶Â','490','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¦Lªá³s´U¥~®M','L','ÂÅ¶Â','490','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_01/picture_main_Xblue.jpg',
   SINGLE_BLOB) AS img)



-------------------------------2
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleeceªøµ³¥~®M','S','¯»¬õ','590','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,15,(  
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
select 'Fleeceªøµ³¥~®M','M','¯»¬õ','590','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleeceªøµ³¥~®M','L','¯»¬õ','590','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleeceªøµ³¥~®M','S','¥Õ','590','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleeceªøµ³¥~®M','M','¥Õ','590','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleeceªøµ³¥~®M','L','¥Õ','590','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleeceªøµ³¥~®M','S','ºñ','590','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleeceªøµ³¥~®M','M','ºñ','590','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleeceªøµ³¥~®M','L','ºñ','590','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_02/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



-------------------------------3
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece³y«¬¥~®M','S','¯»¬õ','490','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,15,(  
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
select 'Fleece³y«¬¥~®M','M','¯»¬õ','490','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³y«¬¥~®M','L','¯»¬õ','490','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece³y«¬¥~®M','S','ÂÅ','490','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³y«¬¥~®M','M','ÂÅ','490','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³y«¬¥~®M','L','ÂÅ','490','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece³y«¬¥~®M','S','¶À','490','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³y«¬¥~®M','M','¶À','490','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³y«¬¥~®M','L','¶À','490','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_03/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)



-------------------------------4
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece³s´U¥~®M','S','¯»¬õ','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,15,(  
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
select 'Fleece³s´U¥~®M','M','¯»¬õ','390','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³s´U¥~®M','L','¯»¬õ','390','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece³s´U¥~®M','S','ÂÅ','390','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³s´U¥~®M','M','ÂÅ','390','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³s´U¥~®M','L','ÂÅ','390','14',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece³s´U¥~®M','S','¶À','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³s´U¥~®M','M','¶À','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece³s´U¥~®M','L','¶À','390','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_04/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)



-------------------------------5
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Fleece¥ß»â¥~®M','S','¯»¬õ','390','45',1,'²`²L¦â½Ð¤À¶}¬~º°',2,15,(  
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
select 'Fleece¥ß»â¥~®M','M','¯»¬õ','390','34',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¥ß»â¥~®M','L','¯»¬õ','390','23',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Fleece¥ß»â¥~®M','S','ÂÅ','390','28',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¥ß»â¥~®M','M','ÂÅ','390','5',1,2,15,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece¥ß»â¥~®M','S','¶À','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¥ß»â¥~®M','M','¶À','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Fleece¥ß»â¥~®M','S','ºñ','390','8',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¥ß»â¥~®M','M','ºñ','390','49',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Fleece¥ß»â¥~®M','L','ºñ','390','33',1,2,15,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/coat_k_05/picture_main_green.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¤W¨­Ãþ ®a©~ªA
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Moomin»´«K¥ð¶¢µu¿Ç','S','¯»¬õ','290','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,18,(  
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
select 'Moomin»´«K¥ð¶¢µu¿Ç','M','¯»¬õ','290','32',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','L','¯»¬õ','290','13',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','XL','¯»¬õ','290','21',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Moomin»´«K¥ð¶¢µu¿Ç','S','¶À','290','21',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','M','¶À','290','5',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','L','¶À','290','14',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','XL','¶À','290','4',1,2,18,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Moomin»´«K¥ð¶¢µu¿Ç','S','ºñ','290','18',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','M','ºñ','290','29',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','L','ºñ','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','XL','ºñ','290','33',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  'Moomin»´«K¥ð¶¢µu¿Ç','S','ÂÅ','290','8',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','M','ÂÅ','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','L','ÂÅ','290','49',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Moomin»´«K¥ð¶¢µu¿Ç','XL','ÂÅ','290','13',1,2,18,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¥~®MÃþ ¥ð¶¢¥~®M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤ò°é³s´U¥~®M','S','¬õ','490','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,19,(  
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
select '¤ò°é³s´U¥~®M','M','¬õ','490','32',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é³s´U¥~®M','S','¦Ç','490','21',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é³s´U¥~®M','M','¦Ç','490','5',1,2,19,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤ò°é³s´U¥~®M','S','ºñ','490','18',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é³s´U¥~®M','M','ºñ','490','29',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¤ò°é³s´U¥~®M','S','ÂÅ','490','8',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é³s´U¥~®M','M','ÂÅ','490','49',1,2,19,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/leisurecoat_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¥~®MÃþ ­·¦ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '§ÜUVÃ¹¯¾³s´U¥~®M','S','¯»¬õ','490','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,20,(  
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
select '§ÜUVÃ¹¯¾³s´U¥~®M','M','¯»¬õ','490','32',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','L','¯»¬õ','490','13',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','XL','¯»¬õ','490','21',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '§ÜUVÃ¹¯¾³s´U¥~®M','S','¶À','490','21',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','M','¶À','490','5',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','L','¶À','490','14',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','XL','¶À','490','4',1,2,20,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '§ÜUVÃ¹¯¾³s´U¥~®M','S','ºñ','490','18',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','M','ºñ','490','29',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','L','ºñ','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','XL','ºñ','490','33',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '§ÜUVÃ¹¯¾³s´U¥~®M','S','ÂÅ','490','8',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','M','ÂÅ','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','L','ÂÅ','490','49',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾³s´U¥~®M','XL','ÂÅ','490','13',1,2,20,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¿Ç¸Ë¸È¸Ë §ô¤f¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','S','¶Â','490','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,21,(  
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
select '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','M','¶Â','490','32',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','S','¦Ç','490','21',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','M','¦Ç','490','5',1,2,21,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','S','ÂÅ','490','8',1,2,21,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§l±Æ¼u©Ê¥ð¶¢ªø¿Ç','M','ÂÅ','490','49',1,2,21,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¿Ç¸Ë¸È¸Ë ¬v¸Ë
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '²ö¥Nº¸¬v¸Ë','S','¯»¬õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,22,(  
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
select '²ö¥Nº¸¬v¸Ë','M','¯»¬õ','390','32',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²ö¥Nº¸¬v¸Ë','L','¯»¬õ','390','13',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)
   
insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²ö¥Nº¸¬v¸Ë','XL','¯»¬õ','390','21',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '²ö¥Nº¸¬v¸Ë','S','¶Â','390','21',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²ö¥Nº¸¬v¸Ë','M','¶Â','390','5',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²ö¥Nº¸¬v¸Ë','L','¶Â','390','14',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '²ö¥Nº¸¬v¸Ë','XL','¶Â','390','4',1,2,22,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/dressing_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)



--¨àµ£ ¤ºµÛÃþ Äû¤l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '±ø¯¾½ïÄû','S','¬õ','59','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,23,(  
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
select '±ø¯¾½ïÄû','M','¬õ','59','32',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '±ø¯¾½ïÄû','S','¥Õ','59','21',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾½ïÄû','M','¥Õ','59','5',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '±ø¯¾½ïÄû','S','ºñ','59','21',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '±ø¯¾½ïÄû','M','ºñ','59','5',1,2,23,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--¨àµ£ ¤ºµÛÃþ ¤º·f¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','S','¯»¬õ','190','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,24,(  
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
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','M','¯»¬õ','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','L','¯»¬õ','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','XL','¯»¬õ','190','32',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','S','²`ÂÅ','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','M','²`ÂÅ','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','L','²`ÂÅ','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','XL','²`ÂÅ','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','S','¦Ç','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','M','¦Ç','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','L','¦Ç','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','XL','¦Ç','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','S','¶Â','190','21',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','M','¶Â','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','L','¶Â','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¼u¤O¦Lªá¤C¤À¤º·f¿Ç','XL','¶Â','190','5',1,2,24,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/within_k_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--¨àµ£ ¤W¨­Ãþ POLO­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¯Â´Ö¸g¨åpolo­m','S','¬õ','290','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,25,(  
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
select '¯Â´Ö¸g¨åpolo­m','M','¬õ','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¬õ','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¬õ','290','32',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¶À','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¶À','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¶À','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¶À','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¥Õ','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¥Õ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¥Õ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¥Õ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ºñ','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ºñ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ºñ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ºñ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ÂÅ','290','21',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ÂÅ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ÂÅ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ÂÅ','290','5',1,2,25,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_k_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¤W¨­Ãþ POLO­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¯Â´Ö¸g¨åpolo­m','S','¬õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,26,(  
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
select '¯Â´Ö¸g¨åpolo­m','M','¬õ','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¬õ','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¬õ','390','32',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¶À','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¶À','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¶À','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¶À','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¥Õ','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¥Õ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¥Õ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¥Õ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ºñ','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ºñ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ºñ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ºñ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ÂÅ','390','21',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ÂÅ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ÂÅ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ÂÅ','390','5',1,2,26,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¤W¨­Ãþ ®a©~ªA
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤ò°é©~®a®M¸Ë','S','ºñ','790','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,27,(  
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
select '¤ò°é©~®a®M¸Ë','M','ºñ','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é©~®a®M¸Ë','L','ºñ','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é©~®a®M¸Ë','XL','ºñ','790','32',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é©~®a®M¸Ë','S','¶Â','790','21',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é©~®a®M¸Ë','M','¶Â','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é©~®a®M¸Ë','L','¶Â','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é©~®a®M¸Ë','XL','¶Â','790','5',1,2,27,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¥~®MÃþ ¦è¸Ë¥~®M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '»´«¬¦è¸Ë¥~®M','S','²LÂÅ','1290','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,28,(  
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
select '»´«¬¦è¸Ë¥~®M','M','²LÂÅ','1290','32',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«¬¦è¸Ë¥~®M','L','²LÂÅ','1290','32',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '»´«¬¦è¸Ë¥~®M','S','ÂÅ','1290','21',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«¬¦è¸Ë¥~®M','M','ÂÅ','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«¬¦è¸Ë¥~®M','L','ÂÅ','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '»´«¬¦è¸Ë¥~®M','S','²`ÂÅ','1290','21',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«¬¦è¸Ë¥~®M','M','²`ÂÅ','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´«¬¦è¸Ë¥~®M','L','²`ÂÅ','1290','5',1,2,28,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¥~®MÃþ ­·¦ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '³s´U­·¦ç¥~®M','S','¦Ç','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,29,(  
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
select '³s´U­·¦ç¥~®M','M','¦Ç','390','32',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '³s´U­·¦ç¥~®M','S','´Ä','390','21',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_color_brown.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³s´U­·¦ç¥~®M','M','´Ä','390','5',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '³s´U­·¦ç¥~®M','S','²`ÂÅ','390','21',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³s´U­·¦ç¥~®M','M','²`ÂÅ','390','5',1,2,29,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_m_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¿Ç¸Ë §ô¤f¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¥J§ô¤f¿Ç','S','²LÂÅ','690','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,30,(  
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
select '¤û¥J§ô¤f¿Ç','M','²LÂÅ','690','32',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥J§ô¤f¿Ç','L','²LÂÅ','690','32',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¥J§ô¤f¿Ç','S','ÂÅ','690','21',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥J§ô¤f¿Ç','M','ÂÅ','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥J§ô¤f¿Ç','L','ÂÅ','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¥J§ô¤f¿Ç','XL','ÂÅ','690','5',1,2,30,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¿Ç¸Ë ªø¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','S','´Ä','590','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,31,(  
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
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','M','´Ä','590','32',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','L','´Ä','590','32',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_brown.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','S','¶Â','590','21',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','M','¶Â','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','L','¶Â','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','S','ºñ','590','21',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','M','ºñ','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '´_¥j REGULAR FIT µLÁ·¥d¨ä¿Ç','L','ºñ','590','5',1,2,31,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/Khaki_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--¨k Å¨­mÃþ ¥ð¶¢Å¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤û¬zµu³SÅ¨­m','S','¥Õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,32,(  
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
select '¤û¬zµu³SÅ¨­m','M','¥Õ','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¥Õ','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','¥Õ','390','32',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','¶Â','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','¶Â','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¶Â','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','¶Â','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','ºñ','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','ºñ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','ºñ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','ºñ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','¦Ç','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','¦Ç','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','¦Ç','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','¦Ç','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤û¬zµu³SÅ¨­m','S','²LÂÅ','390','21',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','M','²LÂÅ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','L','²LÂÅ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤û¬zµu³SÅ¨­m','XL','²LÂÅ','390','5',1,2,32,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/oshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--¨k Å¨­mÃþ °Ó°ÈÅ¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '©ö¾ãµu³SÅ¨­m','S','¥Õ','590','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,33,(  
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
select '©ö¾ãµu³SÅ¨­m','M','¥Õ','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','L','¥Õ','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','XL','¥Õ','590','32',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '©ö¾ãµu³SÅ¨­m','S','¦Ç','590','21',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','M','¦Ç','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','L','¦Ç','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','XL','¦Ç','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '©ö¾ãµu³SÅ¨­m','S','²LÂÅ','590','21',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','M','²LÂÅ','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','L','²LÂÅ','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '©ö¾ãµu³SÅ¨­m','XL','²LÂÅ','590','5',1,2,33,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_m_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--¨k Å¨­mÃþ ªkÄõµ³Å¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¥Õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,34,(  
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
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¥Õ','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¥Õ','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¥Õ','390','32',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¶À','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¶À','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¶À','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¶À','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¬õ','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¬õ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¬õ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¬õ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','ÂÅ','390','21',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','ÂÅ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','ÂÅ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','ÂÅ','390','5',1,2,34,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 



--¨k ¤ºµÛÃþ Äû¤l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'µ³­±²î«¬Äû','S','¥Õ','59','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,35,(  
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
select 'µ³­±²î«¬Äû','S','¦Ç','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)  


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'µ³­±²î«¬Äû','S','¶Â','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'µ³­±²î«¬Äû','S','ÂÅ','59','21',1,2,35,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_m_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 



--¤k ¤W¨­Ãþ POLO­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¯Â´Ö¸g¨åpolo­m','S','¬õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,36,(  
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
select '¯Â´Ö¸g¨åpolo­m','M','¬õ','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¬õ','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¬õ','390','32',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¶À','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¶À','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¶À','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¶À','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¥Õ','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¥Õ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¥Õ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¥Õ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ºñ','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ºñ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ºñ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ºñ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','ÂÅ','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','ÂÅ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','ÂÅ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','ÂÅ','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯Â´Ö¸g¨åpolo­m','S','¶Â','390','21',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','M','¶Â','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','L','¶Â','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯Â´Ö¸g¨åpolo­m','XL','¶Â','390','5',1,2,36,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/polo_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img)


--¤k ¤W¨­Ãþ ®a©~ªA
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¤ò°é±ø¯¾µu¿Ç','S','¬õ','290','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,37,(  
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
select '¤ò°é±ø¯¾µu¿Ç','M','¬õ','290','32',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é±ø¯¾µu¿Ç','L','¬õ','290','32',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é±ø¯¾µu¿Ç','S','¥Õ','290','21',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é±ø¯¾µu¿Ç','M','¥Õ','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é±ø¯¾µu¿Ç','L','¥Õ','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¤ò°é±ø¯¾µu¿Ç','S','ºñ','290','21',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é±ø¯¾µu¿Ç','M','ºñ','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¤ò°é±ø¯¾µu¿Ç','L','ºñ','290','5',1,2,37,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/home_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 



--¤k Å¨­mÃþ °Ó°ÈÅ¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','S','¥Õ','590','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,38,(  
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
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','M','¥Õ','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','L','¥Õ','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','XL','¥Õ','590','32',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','S','¶Â','590','21',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','M','¶Â','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','L','¶Â','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','XL','¶Â','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','S','²LÂÅ','590','21',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_color_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','M','²LÂÅ','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','L','²LÂÅ','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'Pima ´Ö¼u©Êµu³SÅ¨­m','XL','²LÂÅ','590','5',1,2,38,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/shortshirt_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img) 



--¤k Å¨­mÃþ ªkÄõµ³Å¨­m
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¥Õ','390','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,39,(  
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
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¥Õ','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¥Õ','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¥Õ','390','32',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¶À','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¶À','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¶À','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¶À','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_yellow.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¬õ','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¬õ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¬õ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¬õ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_red.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','ÂÅ','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','ÂÅ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','ÂÅ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','ÂÅ','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select 'ªkÄõµ³®æ¯¾Å¨­m','S','¶Â','390','21',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','M','¶Â','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','L','¶Â','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select 'ªkÄõµ³®æ¯¾Å¨­m','XL','¶Â','390','5',1,2,39,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/flannel_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 



--¤k ¥~®MÃþ ¥ð¶¢¥~®M
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¬X³n³s´U¥~®M','S','¯»¬õ','490','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,40,(  
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
select '¬X³n³s´U¥~®M','S','ÂÅ','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¬X³n³s´U¥~®M','S','¥Õ','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¬X³n³s´U¥~®M','S','¶Â','490','21',1,2,40,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/suitcoat_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 



--¤k ¥~®MÃþ ­·¦ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','S','¦Ç','490','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,41,(  
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
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','M','¦Ç','490','32',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','L','¦Ç','490','32',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','S','¥Õ','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','M','¥Õ','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','L','¥Õ','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_white.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','S','¶Â','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','M','¶Â','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','L','¶Â','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','S','¯»¬õ','490','21',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_color_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','M','¯»¬õ','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '§ÜUVÃ¹¯¾±ø¯¾³s´U¥~®M','L','¯»¬õ','490','5',1,2,41,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/windbreaker_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img) 



--¤k ¿Ç¸Ë¸È¸Ë ¤û¥J¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','S','²LÂÅ','790','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,42,(  
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
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','M','²LÂÅ','790','424',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','L','²LÂÅ','790','242',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','S','ÂÅ','790','28',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','M','ÂÅ','790','5',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','L','ÂÅ','790','5',1,2,42,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '¯S¼u¤û¥J¯¶ºÞ¿Ç','S','²`ÂÅ','790','8',1,2,42 ,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','M','²`ÂÅ','790','43',1,2,42,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '¯S¼u¤û¥J¯¶ºÞ¿Ç','L','²`ÂÅ','790','49',1,2,42,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cowpant_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--¤k ¿Ç¸Ë¸È¸Ë ¿Ç
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','S','²LÂÅ','490','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,43,(  
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
select '³n¤û¥J¤E¤À§ô¤f¿Ç','M','²LÂÅ','490','424',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','L','²LÂÅ','490','242',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Sblue.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','S','ÂÅ','490','28',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_color_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','M','ÂÅ','490','5',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','L','ÂÅ','490','5',1,2,43,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_blue.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '³n¤û¥J¤E¤À§ô¤f¿Ç','S','²`ÂÅ','490','8',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','M','²`ÂÅ','490','43',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '³n¤û¥J¤E¤À§ô¤f¿Ç','L','²`ÂÅ','490','49',1,2,43,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/bunched_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--¤k ¤ºµÛÃþ ²M²D¨t¦C
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '»´²D¦Lªá²ÓªÓ±a','S','¯»¬õ','290','45',1,'½Ð¤Å¨Ï¥Îº}¥Õ¾¯¡B¿Ã¥ú¼W¥Õ¾¯¡A¥H§K¯}Ãa¥¬®Æ',2,44,(  
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
select '»´²D¦Lªá²ÓªÓ±a','M','¯»¬õ','290','424',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´²D¦Lªá²ÓªÓ±a','L','¯»¬õ','290','242',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_pink.jpg',
   SINGLE_BLOB) AS img)


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '»´²D¦Lªá²ÓªÓ±a','S','ºñ','290','28',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_color_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´²D¦Lªá²ÓªÓ±a','M','ºñ','290','5',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´²D¦Lªá²ÓªÓ±a','L','ºñ','290','5',1,2,44,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_green.jpg',
   SINGLE_BLOB) AS img) 


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select  '»´²D¦Lªá²ÓªÓ±a','S','²`ÂÅ','290','8',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_color_Dblue.jpg',
   SINGLE_BLOB) AS img) 

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´²D¦Lªá²ÓªÓ±a','M','²`ÂÅ','290','43',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)

insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main)
select '»´²D¦Lªá²ÓªÓ±a','L','²`ÂÅ','290','49',1,2,44,(
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/cool_w_01/picture_main_Dblue.jpg',
   SINGLE_BLOB) AS img)



--¤k ¤ºµÛÃþ Äû¤l
-------------------------------1
insert into production(productName,size,color,price,quantity_in_stock,for_sale,describe,packageNo,categoryId,picture_main,picture_color,picture_model1,picture_model2,picture_model3,picture_model4)
select '¹B°Ê½ïÄû','S','¥Õ','59','25',1,'²`²L¦â½Ð¤À¶}¬~º°',2,45,(  
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
select '¹B°Ê½ïÄû','S','¦Ç','59','21',1,2,45,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_main_gray.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_color_gray.jpg',
   SINGLE_BLOB) AS img)  


insert into production(productName,size,color,price,quantity_in_stock,for_sale,packageNo,categoryId,picture_main,picture_color)
select '¹B°Ê½ïÄû','S','¶Â','59','21',1,2,45,(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_main_black.jpg',
   SINGLE_BLOB) AS img),(  
SELECT * FROM OPENROWSET(
   BULK 'D:/iii/Workspace/SQL/productImages/sock_w_01/picture_color_black.jpg',
   SINGLE_BLOB) AS img) 