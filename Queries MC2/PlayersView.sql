/* ===========================================================
   VIEW: vw_MatchDetails
   Description: Provides a unified and readable view of all
                matches, including player names and skill levels
   =========================================================== */

CREATE VIEW vw_MatchDetails AS 
SELECT 
    m.MatchID,
    m.RoundNumber,

    p1.PlayerID AS Player1ID,
    p1.FullName AS Player1Name,
    p1.SkillLevel AS Player1Skill,

    p2.PlayerID AS Player2ID,
    p2.FullName AS Player2Name,
    p2.SkillLevel AS Player2Skill
FROM Matches m
JOIN Players p1 ON m.Player1ID = p1.PlayerID
JOIN Players p2 ON m.Player2ID = p2.PlayerID;
