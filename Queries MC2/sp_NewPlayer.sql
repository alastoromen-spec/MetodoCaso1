/* ===========================================================
   Store Procedure: sp_NewPlayer
   Description: To be executed every time a new player joins the tournament
   =========================================================== */


CREATE PROCEDURE sp_NewPlayer (
    IN p_Name VARCHAR (120) NOT NULL,
    IN P_SkillLevel VARCHAR (120) NOT NULL
    )
BEGIN
--Declaration of variables
    DECLARE v_PlayerID INT;

--Insert new player into table Players
    INSERT INTO Players (Name, SkillLevel)
    Values (p_Name, P_SkillLevel)

--Get ID of new player
    set v_PlayerID = LAST_INSERT_ID();

--Insert player into table Registrations
    INSERT INTO Registrations (PlayerID, RegistrationDate)
    VALUES (v_PlayerID, CURDATE());

--Return ID of registered player
    SELECT v_PlayerID AS PlayerID;

END;





(FullName, SkillLevel)
VALUES ('Carlos Buendia', 'Intermediate'),
       ('Jose Callejas', 'Advanced');
GO

-------------------------------------------------
-- Register player entries
-- Note: Assumes PlayerID = 1 and 2 already exist
-------------------------------------------------
INSERT INTO Registrations (PlayerID)
VALUES (1), (2);
GO

-------------------------------------------------
-- Register a match between both players
-- Round 1 of the tournament
-------------------------------------------------
INSERT INTO Matches (Player1ID, Player2ID, RoundNumber)
VALUES (1, 2, 1);
GO