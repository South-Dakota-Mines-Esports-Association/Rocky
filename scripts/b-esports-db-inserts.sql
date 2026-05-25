use HARDROCKER_ESPORTS;

-- INSERT DATA FOR GAME TABLE
INSERT INTO GAME (GameID, Name, Logo) VALUES (1, 'League of Legends', "");
INSERT INTO GAME (GameID, Name, Logo) VALUES (2, 'Valorant', "");
INSERT INTO GAME (GameID, Name, Logo) VALUES (3, 'Overwatch 2', "");

-- INSERT DATA FOR MEMBERS TABLE
INSERT INTO MEMBERS (StudentID, FirstName, LastName, EmailAddress, DiscordUserID, DiscordUsername, AcademicYear) VALUES
(1001, 'John', 'Doe', 'j.doe@university.edu', '123456789', 'jdoe_lol', 'Junior'),
(1002, 'Jane', 'Smith', 'j.smith@university.edu', '987654321', 'jane_val', 'Sophomore'),
(1003, 'Michael', 'Brown', 'm.brown@university.edu', '456123789', 'm_brown', 'Senior'),
(1004, 'Emily', 'Davis', 'e.davis@university.edu', '789456123', 'emilyd', 'Freshman'),
(1005, 'Chris', 'Wilson', 'c.wilson@university.edu', '321654987', 'cwilson', 'Grad'),
(1006, 'Sarah', 'Miller', 's.miller@university.edu', '654987321', 'sarahm', 'Junior'),
(1007, 'David', 'Moore', 'd.moore@university.edu', '987321654', 'dmoore', 'Sophomore'),
(1008, 'Jessica', 'Taylor', 'j.taylor@university.edu', '147258369', 'jtay', 'Senior'),
(1009, 'Daniel', 'Anderson', 'd.anderson@university.edu', '369147258', 'dan_a', 'Freshman'),
(1010, 'Matthew', 'Thomas', 'm.thomas@university.edu', '258369147', 'matthew_t', 'Grad'),
(1011, 'Ashley', 'Jackson', 'a.jackson@university.edu', '963852741', 'ajack', 'Junior'),
(1012, 'Joshua', 'White', 'j.white@university.edu', '741852963', 'jwhite', 'Sophomore'),
(1013, 'Amanda', 'Harris', 'a.harris@university.edu', '852741963', 'aharris', 'Senior'),
(1014, 'Brandon', 'Martin', 'b.martin@university.edu', '159357456', 'brand_m', 'Freshman'),
(1015, 'Stephanie', 'Thompson', 's.thompson@university.edu', '357456159', 'steph_t', 'Grad'),
(1016, 'Andrew', 'Garcia', 'a.garcia@university.edu', '951753456', 'andrew_g', 'Sophomore'),
(1017, 'Elizabeth', 'Martinez', 'e.martinez@university.edu', '456789123', 'liz_m', 'Junior'),
(1018, 'Kevin', 'Robinson', 'k.robinson@university.edu', '789123456', 'kevrob', 'Freshman'),
(1019, 'Brian', 'Clark', 'b.clark@university.edu', '321654987', 'bclark', 'Senior'),
(1020, 'Nicole', 'Rodriguez', 'n.rodriguez@university.edu', '654987321', 'nrodri', 'Junior');

-- INSERT DATA FOR EVENT TABLE
INSERT INTO EVENT (EventID, Name, StartTime, EndTime, Location) VALUES
(1, 'Spring Regional Championship', '2026-04-10 09:00:00', '2026-04-12 18:00:00', 'Student Union Main Hall');

-- INSERT DATA FOR MATCHES TABLE
INSERT INTO MATCHES (MatchID, StartTime) VALUES
(1, '2026-04-10 10:00:00'),
(2, '2026-04-10 14:00:00'),
(3, '2026-04-11 11:00:00');

-- INSERT DATA FOR TEAM TABLE (3 Teams)
INSERT INTO TEAM (TeamID, Name, Wins, Losses, Ties, Season, GameID) VALUES
(1, 'Varsity LoL', 5, 2, 0, '2025', 1),
(2, 'Valorant Gold', 3, 4, 1, '2025', 2),
(3, 'Overwatch Titans', 4, 3, 0, '2025', 3);

-- INSERT DATA FOR MEMBER_GAME (Linking members to games)
INSERT INTO MEMBER_GAME (StudentID, GameID, Username, `Rank`) VALUES
(1001, 1, 'TopLaneGod', 'Diamond II'),
(1002, 2, 'JettMain', 'Ascendant 1'),
(1003, 1, 'JungleCarry', 'Platinum I'),
(1004, 1, 'MidGap', 'Gold III'),
(1005, 1, 'AdcPlayer', 'Master'),
(1006, 2, 'SupportFlex', 'Diamond I'),
(1007, 2, 'Controller', 'Immortal II'),
(1008, 2, 'Duelist', 'Platinum II'),
(1009, 2, 'Sentinel', 'Gold I'),
(1010, 2, 'EntryFrag', 'Diamond III'),
(1011, 3, 'TankMain', 'Diamond III'),
(1012, 3, 'DPSFlex', 'Master'),
(1013, 3, 'Support', 'Grandmaster'),
(1014, 3, 'OffTank', 'Platinum I'),
(1015, 3, 'Projectile', 'Diamond II'),
(1016, 1, 'SubTop', 'Gold II'),
(1017, 1, 'SubJgl', 'Silver I'),
(1018, 2, 'R6Player', 'Gold I'),
(1019, 3, 'FlexSupport', 'Platinum III'),
(1020, 1, 'CasualPlayer', 'Iron IV');

-- INSERT DATA FOR TEAM_MEMBER (Linking members to teams)
-- Team 1: Varsity LoL (GameID 1)
INSERT INTO TEAM_MEMBER (StudentID, TeamID, Role) VALUES
(1001, 1, 'Captain'),
(1003, 1, 'Player'),
(1004, 1, 'Player'),
(1005, 1, 'Player'),
(1016, 1, 'Sub'),
(1017, 1, 'Coach');

-- Team 2: Valorant Gold (GameID 2)
INSERT INTO TEAM_MEMBER (StudentID, TeamID, Role) VALUES
(1002, 2, 'Captain'),
(1006, 2, 'Player'),
(1007, 2, 'Player'),
(1008, 2, 'Player'),
(1009, 2, 'Player'),
(1010, 2, 'Sub');

-- Team 3: Overwatch Titans (GameID 3)
INSERT INTO TEAM_MEMBER (StudentID, TeamID, Role) VALUES
(1013, 3, 'Captain'),
(1011, 3, 'Player'),
(1012, 3, 'Player'),
(1014, 3, 'Player'),
(1015, 3, 'Player');

-- Members 1018, 1019, 1020 are unaffiliated with teams for this scenario

-- INSERT DATA FOR MEMBER_EVENT
INSERT INTO MEMBER_EVENT (StudentID, EventID) VALUES
(1001, 1), (1002, 1), (1003, 1), (1011, 1), (1013, 1);

-- INSERT DATA FOR GAME_EVENT
INSERT INTO GAME_EVENT (GameID, EventID) VALUES
(1, 1), (2, 1), (3, 1);

-- INSERT DATA FOR TEAM_MATCH_PERFORMANCE
INSERT INTO TEAM_MATCH_PERFORMANCE (TeamID, MatchID, Score) VALUES
(1, 1, 2), (2, 1, 1), 
(1, 2, 0), (3, 2, 2),
(2, 3, 2), (3, 3, 1);
