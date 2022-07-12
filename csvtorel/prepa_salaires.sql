SELECT 
   R.Annee, R.Departement, R.Salaire, P.id_personnes 
FROM
   RAW R INNER JOIN personnes P 
   ON 
     R.Nom = P.Nom and R.Prenom = P.Prenom