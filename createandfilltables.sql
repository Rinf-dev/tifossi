 
 
  CREATE TABLE IF NOT EXISTS focaccia (
    id_focaccia int PRIMARY KEY,
    nom varchar (255),
    prix decimal (5,2)
) ;
truncate table focaccia;
INSERT INTO focaccia
VALUES

(1,'Mozaccia',9.80),
(2,'Gorgonzollaccia',10.80),
(3,'Raclaccia',8.90),
(4,'Emmentalaccia',9.80),
(5,'Tradizione',8.90),
(6,'Hawaienne',11.20),
(7,'Américaine',10.80),
(8,'Paysanne',12.80);






CREATE TABLE IF NOT EXISTS ingredient (
    id_ingredient int PRIMARY KEY,
    nom_ingredient varchar(255)     
);
truncate table ingredient;
INSERT INTO ingredient
VALUES
( 1 , 'Ail' ),
( 2 , 'Ananas' ),
( 3 , 'Artichaut' ),
( 4 , 'Bacon' ),
( 5 , 'Base Tomate' ),
( 6 , 'Base crème' ),
( 7 , 'Champignon' ),
( 8 , 'Chevre' ),
( 9 , 'Cresson' ),
( 10 , 'Emmental' ),
( 11 , 'Gorgonzola' ),
( 12 , 'Jambon cuit' ),
( 13 , 'Jambon fumé' ),
( 14 , 'Oeuf' ),
( 15 , 'Oignon' ),
( 16 , 'Olive noire' ),
( 17 , 'Olive verte' ),
( 18 , 'Parmesan' ),
( 19 , 'Piment' ),
( 20 , 'Poivre' ),
( 21 , 'Pomme de terre' ),
( 22 , 'Raclette' ),
( 23 , 'Salami' ),
( 24 , 'Tomate cerise' ),
( 25 , 'Mozarella' );



CREATE TABLE IF NOT EXISTS boissons (
    id_boissons int PRIMARY KEY,
    nom_boisson varchar (255),
    marque int
);

truncate table boissons;
INSERT INTO boissons
VALUES
( 1 , 'Coca-cola zéro' ,1),
( 2 , 'Coca-cola original',1 ),
( 3 , 'Fanta citron',1 ),
( 4 , 'Capri-sun' , 1 ),
( 5 , 'Pepsi' , 4),
( 6 , 'Pepsi Max Zéro', 4 ),
( 7 , 'Lipton zéro citron' , 4 ),
( 8 , 'Lipton Peach' ,4 ),
( 9 , 'Monster energy ultra gold' , 3 ),
( 10 , 'Monster energy ultra blue' , 3 ),
( 11 , 'Eau de source ' , 2 );





CREATE TABLE IF NOT EXISTS marques (
    id_marque int PRIMARY KEY,
    nom_marque varchar (255)      
);
truncate table marques;
INSERT INTO marques
VALUES
(1 , 'Coca-cola' ),
( 2 , 'Cristalline' ),
( 3 , 'Monster' ),
( 4 , 'Pepsico' );






CREATE TABLE IF NOT EXISTS client (
    id_client int PRIMARY KEY,
    nom varchar (255),
    age int,
    email varchar (255),
    code_postale int     
);
truncate table client;
INSERT INTO client
VALUES
( '0' , 'Georges Sand' ,5, 'georges@gmail.com' , 97400 ),
( '1' , 'Fernand Daudas ',6, 'fernand@gmail.com' , 97201 ),
( '2' , 'Victor Hugo' , 7,'victor@agmail.com' , 75020),
( '3' , 'Alphonse Daudet' ,58, 'alfonse@gmail.com' , 14000);




CREATE TABLE IF NOT EXISTS menu (
    id_menu int PRIMARY KEY,
    nom varchar (255),
    prix decimal (5,2)      
);

truncate table menu;
INSERT INTO menu
VALUES
(1 , 'menu gold' , 20.00 ),
( 2 , 'menu silver ' , 15.00 ),
( 3 , 'Menu bronze' , 10.00),
( 4 , 'menu prolo' , 5.80);




CREATE TABLE IF NOT EXISTS comprend (
    id_focaccia int ,
    id_ingredient int,
    quantite int
);


truncate table comprend;
INSERT INTO comprend
VALUES
(1,5,200),
(1,16,20),
(1,1,20),
(1,18,50),
(1,7,40),
(1,3,20),
(1,1,20),
(1,13,80),
(1,9,20),
(1,25,50),
(2,16,20),
(2,20,1),
(2,18,50),
(2,7,40),
(2,9,20),
(2,11,50),
(2,5,200),
(3,20,1),
(3,18,50),
(3,7,40),
(3,1,20),
(3,9,20),
(3,22,50),
(3,5,200),
(4,15,200),
(4,20,10),
(4,18,50),
(4,7,400),
(4,9,20),
(4,10,50),
(4,6,200),
(5,17,10),
(5,16,10),
(5,20,1),
(5,18,50),
(5,7,80),
(5,12,80),
(5,9,20),
(5,25,50),
(5,5,200),
(6,16,20),
(6,20,10),
(6,18,50),
(6,19,20),
(6,2,40),
(6,4,80),
(6,9,20),
(6,25,50),
(6,5,200),
(7,16,20),
(7,20,1),
(7,18,50),
(7,21,40),
(7,4,80),
(7,9,20),
(7,25,50),
(7,5,200),
(8,14,50),
(8,16,20),
(8,20,1),
(8,18,50),
(8,7,40),
(8,3,20),
(8,1,20),
(8,13,80),
(8,21,80),
(8,9,20),
(8,8,50),
(8,6,200);



CREATE TABLE IF NOT EXISTS achete (
    id_achete int PRIMARY KEY,
   date_achat date 
         
);


CREATE TABLE IF NOT EXISTS appartient (
    id_appartient int PRIMARY KEY 
        
);


CREATE TABLE IF NOT EXISTS estconstitute (
    id_constitute int PRIMARY KEY 
         
);


CREATE TABLE IF NOT EXISTS contient (
    id_contient int PRIMARY KEY
        
);