/********************************************************************************************/
/*********************** BEGINNING OF THE EXERCISES *****************************************/
/********************************************************************************************/

---- 1.) what are all the projects that use javascript
-- SELECT 
-- project.name as Project, tech.name AS tech_used
-- FROM 
-- tech
-- INNER JOIN
-- project_uses_tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- INNER JOIN
-- project
-- ON
-- project.id = project_uses_tech.project_id
-- WHERE
-- tech_id = 3;

------2.) whate are all the technologies used by tghe personal website
-- SELECT 
-- project.name as Project, tech.name AS tech_used
-- FROM 
-- tech
-- INNER JOIN
-- project_uses_tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- INNER JOIN
-- project
-- ON
-- project.id = project_uses_tech.project_id
-- WHERE
-- project_id = 4;

------3.) Perform a left outer join from the tech table to the project uses tech table - which techs has np associated project
-- SELECT tech.name AS TechName, project_uses_tech.project_id AS ProjectID 
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id 
-- WHERE project_id is NULL;


----4.) based on the previous query, get the count of the number of techs used by each project
-- SELECT tech.name AS TechName, COUNT(*)
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- GROUP BY TECH.NAME;


----5.) PERFORM A LEFT OUTER JOIN FROM THE PROJECT TABLE TO THE PROJECT_USES_TECH TABLE - WHICH PROJECTS HAS NO ASSOCIATED TECH
-- SELECT project.name AS Project_Name, project_uses_tech.tech_id AS Tech_ID 
-- FROM project
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- WHERE tech_id is NULL;


------6.) BASED ON THE PREVIOUS QUERY, GET THE COUNT OF THE NUMBER OF PROJECTS THAT USE EACH TECH
-- SELECT PROJECT.name AS PROJECT_Name, COUNT(*)
-- FROM PROJECT
-- LEFT OUTER JOIN project_uses_tech
-- ON PROJECT.id = project_uses_tech.PROJECT_id
-- GROUP BY PROJECT.NAME;

------7.) LIST ALL PROJECTS ALONG WITH EACH TEHCNOLOGY USED BY IT. YOU WILL NEED TO DO A THREE--WAY JOIN.
-- SELECT
-- project.name, tech.name
-- FROM
-- project
-- INNER JOIN
-- project_uses_tech
-- ON
-- project.id = project_uses_tech.project_id
-- INNER JOIN
-- tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- ORDER BY
-- project.name;


-----8.) 