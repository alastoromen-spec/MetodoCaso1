/* ===========================================================
   MÉTODO CASO U2 - TORNEO DOMINO BASE DE DATOS
   DDL 
   Author: Juan Ricardo Medina Castellanos
   =========================================================== */

-------------------------------------------------------------
-- TABLE: Players
-------------------------------------------------------------
CREATE TABLE Players (
    PlayerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(120) NOT NULL,
    SkillLevel VARCHAR(50) NOT NULL CHECK (SkillLevel IN ('Beginner', 'Intermediate', 'Advanced'))
    
);
GO
-------------------------------------------------------------
-- TABLE: Registrations
-------------------------------------------------------------
CREATE TABLE Registrations (
    RegistrationID INT IDENTITY(1,1) PRIMARY KEY,
    PlayerID INT NOT NULL,
    RegistrationDate DATE NOT NULL DEFAULT GETDATE(),

    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);
GO
-------------------------------------------------------------
-- TABLE: Matches
-------------------------------------------------------------
CREATE TABLE Matches (
    MatchID INT IDENTITY(1,1) PRIMARY KEY,
    Player1ID INT NOT NULL,
    Player2ID INT NOT NULL,
    RoundNumber INT NOT NULL CHECK (RoundNumber > 0),

    -- Foreign Keys
    FOREIGN KEY (Player1ID) REFERENCES Players(PlayerID),
    FOREIGN KEY (Player2ID) REFERENCES Players(PlayerID),

    -- Prevent a player from being assigned as both participants
    CHECK (Player1ID <> Player2ID)
);
GO