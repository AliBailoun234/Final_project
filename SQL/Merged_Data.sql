CREATE TABLE Season_Stats (
	Year int,
	Player varchar(100),
	Pos varchar(5),
	Age int,
	Tm varchar(5),
	G int,
	TSp decimal,
	FTr decimal,
	OWS decimal,
	DWS decimal,
	WS decimal,
	FG int,
	FGA int,
	FGp decimal,
	TwoP int,
	TwoPA int,
	TwoPp decimal,
	eFGp decimal,
	FT decimal,
	FTA int,
	FTp decimal,
	AST int,
	PF int,
	PTS int
);
CREATE TABLE Players (
	Player varchar(100),
	height int,
	weight int,
	college varchar(100),
	born int,
	birth_city varchar(100),
	birth_state varchar(100)
);
CREATE TABLE player_data (
	name varchar(100),
	year_start int,
	year_end int,
	position varchar(5),
	height int,
	weight int,
	brith_date date,
	college varchar(100)
);

SELECT Players.Player,
Players.height, Players.weight, Players.college, 
Players.born, Players.birth_city, Players.birth_state,
player_data.year_start, player_data.year_end, player_data.position
INTO Players_full
FROM Players
Left Join player_data
ON Players.Player = player_data.name;

Select Season_Stats.Year, Season_Stats.Player, Season_Stats.Pos, Season_Stats.Age,
	Season_Stats.Tm, Season_Stats.G, Season_Stats.TSp, Season_Stats.FTr,
	Season_Stats.OWS, Season_Stats.DWS, Season_Stats.WS, Season_Stats.FG,
	Season_Stats.FGA, Season_Stats.FGp, Season_Stats.TwoP, Season_Stats.TwoPA,
	Season_Stats.TwoPp, Season_Stats.eFGp, Season_Stats.FT, Season_Stats.FTA,
	Season_Stats.FTp, Season_Stats.AST, Season_Stats.PF, Season_Stats.PTS,
	Players_full.height, Players_full.weight, Players_full.college, Players_full.born,
	Players_full.birth_city, Players_full.birth_state,
	Players_full.year_start, Players_full.year_end
INTO Merged_Data
FROM Season_Stats
Left Join Players_full
ON Season_Stats.Player = Players_full.Player;

SELECT * FROM Merged_Data
