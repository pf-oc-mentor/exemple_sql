set search_path = users_roles_exemple;


TRUNCATE "USERS" CASCADE;
-- c'est bon!
insert into "USERS" ("Nom", "Prenom")
select distinct r."Nom", r."Prenom" from "DONNEBRUTE" as r;

select * from "USERS";
