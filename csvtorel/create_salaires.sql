create table  salaires
     (id_salaire INT not null AUTO_INCREMENT, PRIMARY KEY (id_salaire))
     (SELECT 
        R.Annee, R.Departement, R.Salaire, P.id_personnes 
      FROM
	    RAW R INNER JOIN personnes P 
        ON 
          R.Nom = P.Nom and R.Prenom = P.Prenom
	  );