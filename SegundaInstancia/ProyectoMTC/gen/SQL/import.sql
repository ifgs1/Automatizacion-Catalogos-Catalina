INSERT INTO Empresa (id,nombre,direccion,email,telefono,descripcion,urlImagen) VALUES (1,'Carulla','Cra 85 # 15 -56','carulla@gmail.com','4567897','Supermercado Mayorista','http://www.revistalabarra.com.co/guia/files/logo/3222.jpg');
INSERT INTO Catalogo (id,nombre) VALUES (1,'Catalogo de Productos');
INSERT INTO Categoria (id,nombre,catalogo_id) VALUES (1,'Comidas',1);
INSERT INTO Producto (id,nombre,precio,imagen,categoria_id) VALUES (1,'Jamon Pietran',12000,'http://www.elgranjamon.es/noticias/wp-content/uploads/2010/04/jamon-cocido.jpg',1);
INSERT INTO Producto (id,nombre,precio,imagen,categoria_id) VALUES (2,'Queso Mozarella',8000,'http://www.ar.all.biz/img/ar/catalog/21620.jpeg',1);
INSERT INTO Categoria (id,nombre,catalogo_id) VALUES (2,'Bebidas',1);
INSERT INTO Producto (id,nombre,precio,imagen,categoria_id) VALUES (3,'Jugo de Naranja',6500,'http://www.dietapaleo.org/wp-content/uploads/2013/03/jugo-de-naranja.jpg',2);
INSERT INTO Producto (id,nombre,precio,imagen,categoria_id) VALUES (4,'Pepsi',4000,'http://www.oberholtzer-creative.com/visualculture/wp-content/uploads/2009/01/pepsi_can.jpg',2);
 