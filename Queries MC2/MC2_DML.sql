/* =============================================
   MÉTODO CASO U2 - TORNEO DOMINO BASE DE DATOS
   DML 
   Author: Juan Ricardo Medina Castellanos
   ============================================= */

-------------------------------------------------
-- Insert sample players
-------------------------------------------------
INSERT INTO Players (FullName, SkillLevel)
VALUES ('Roberto Díaz', 'Intermediate'),
       ('Mario Castillo', 'Advanced');
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