

  /*requete 1*/
 /*list des noms de focaccia par ordre croissant*/

select nom from focaccia order by nom;



  /*requete 2*/
   /*total des ingredients*/ 


   SELECT count(*) as combien_d_ingredients  FROM `ingredient`;



/*requete 3*/
/*Prix moyen des focaccias*/ 

SELECT AVG(prix) as prix_moyen from focaccia;


/*requete 4*/
/*Liste des boissons avec marques trié par nolm de boisson*/ 

SELECT boissons.nom_boisson AS Drink, marques.nom_marque AS Brand
FROM boissons
JOIN marques ON boissons.marque = marques.id_marque order by Drink;



/*requete 5*/
/*Liste des ingredients pour une raclacia*/ 

SELECT 
  comprend.id_focaccia AS focaccia,  
  comprend.id_ingredient AS n_ingredient, 
  ingredient.nom_ingredient AS nom_ingredient
FROM comprend
JOIN ingredient ON comprend.id_ingredient = ingredient.id_ingredient
where id_focaccia=3
;



/*requete 6*/
/*nombre d'ingredient par focaccia*/ 

SELECT 
  comprend.id_focaccia AS ref_focaccia, focaccia.nom as Plat ,
  count(comprend.id_ingredient) AS combien_ing
FROM comprend 
join focaccia on comprend.id_focaccia= focaccia.id_focaccia
group by comprend.id_focaccia, focaccia.nom
order by combien_ing desc 
;


/*requete 7*/
/* n'afficher que celle avec le max d'ingredients*/ 

SELECT 
  comprend.id_focaccia AS ref_focaccia, focaccia.nom as Plat ,
  count(comprend.id_ingredient) AS combien_ing
FROM comprend 
join focaccia on comprend.id_focaccia= focaccia.id_focaccia
group by comprend.id_focaccia, focaccia.nom
order by combien_ing desc 
limit 1
;


/*requete 8*/
/* Liste des ofcacciass qui contiennent de l'ail*/ 

SELECT 
  comprend.id_focaccia AS focaccia,  
  focaccia.nom AS Nom,
  ingredient.nom_ingredient AS nom_ingredient
FROM comprend
JOIN focaccia ON comprend.id_focaccia = focaccia.id_focaccia
JOIN ingredient ON comprend.id_ingredient = ingredient.id_ingredient
WHERE comprend.id_ingredient = 1;


/*requete 9*/
/* Liste des ingredients inutilisés*/ 

SELECT 
  ingredient.nom_ingredient AS nom_ingredient, 
  COUNT(comprend.id_focaccia) AS combien
FROM ingredient
LEFT JOIN comprend ON comprend.id_ingredient = ingredient.id_ingredient
GROUP BY ingredient.nom_ingredient
HAVING combien=0;


/*requete 10*/
/* Liste des focaccia ne contenant pas des champignons*/ 

SELECT nom 
FROM focaccia
WHERE id_focaccia NOT IN (
  SELECT id_focaccia
  FROM comprend
  WHERE id_ingredient = 7
);


