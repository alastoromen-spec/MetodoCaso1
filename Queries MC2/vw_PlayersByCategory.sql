/* ===========================================================
   VIEW: vw_PlayersByCategory
   Description: Display players in a particular category
   =========================================================== */
CREATE OR ALTER VIEW vw_PlayersByCategory AS
SELECT 
	FullName, SkillLevel

FROM
	Players
WHERE 
	SkillLevel = 'INTERMEDIATE';