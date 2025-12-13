-------------------------------------------------------------
-- TABLE: PlayerNotes (Unclustered)
-- Description: Table created to test the unclusterted references and bind
-- it with clustered tables.
-------------------------------------------------------------
-------------------------------------------------------------

CREATE TABLE PlayerNotes (
    NoteID INT NOT NULL,
    PlayerID INT NOT NULL,
    NoteText VARCHAR(300),

    -- Primary Key NONCLUSTERED
    CONSTRAINT PK_PlayerNotes PRIMARY KEY NONCLUSTERED (NoteID),

    -- Foreign Key hacia Players
    CONSTRAINT FK_PlayerNotes_Players 
        FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- Índice adicional para optimizar búsquedas por PlayerID
CREATE NONCLUSTERED INDEX IX_PlayerNotes_PlayerID
    ON PlayerNotes (PlayerID);


-------------------------------------------------------------
-- Initial data for PlayerNotes
-------------------------------------------------------------
INSERT INTO PlayerNotes (NoteID, PlayerID, NoteText)
VALUES 
    (1, 1, 'Player shows good consistency during early rounds.'),
    (2, 2, 'Strong offensive strategy observed in recent matches.'),
    (3, 1, 'Tends to take longer decisions in critical plays.'),
    (4, 2, 'Excellent performance under pressure during finals.'),
    (5, 1, 'Improved tile-counting accuracy in the last session.');
