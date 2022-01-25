set search_path = users_roles_exemple;

select * from "DONNEBRUTE";

TRUNCATE "USERS" CASCADE;

-- pas bon!
insert into "USERS" ("Nom", "Prenom")
select r."Nom", r."Prenom" from "DONNEBRUTE" as r;

select * from "USERS";

TRUNCATE "USERS" CASCADE;
-- c'est bon!
insert into "USERS" ("Nom", "Prenom")
select distinct r."Nom", r."Prenom" from "DONNEBRUTE" as r;

select * from "USERS";

TRUNCATE "ROLES" CASCADE;
insert into "ROLES" ("roleName")
select distinct "roleName" from "DONNEBRUTE";

select * from "ROLES";