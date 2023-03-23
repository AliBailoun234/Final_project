# Final_project

## Overview

Professional basketball has looked very different over the past years thanks to the use of data analytics. Data analytics and statistics have improved the way we watch, engage, and root for teams. Not only has it improved the way the viewers experience the game, but it has also improved the way the game is played. Thus, Our group has selected basketball as our project topic because there are important features to the sport where data analytics can bring a deeper understanding to what goes into each game. We will be analyzing trends by year to see if there are any types of players that were more prominent in earlier years that become less prominent. We will use a cluster analysis for our machine learning model to identify which decade a player appeared in based on their metrics.

## Data

Our database consists of three main sources: season stats spanning from 1950 to 2017, player personal information, and player college information. We have joined the data on player name and from there we will be analyzing key metrics such as player averages, team averages, best seasons, and best players. We will be doing our main analysis of the season stats data source and bringing in the other two for complimentary data analysis. We have divided the data into five different time periods: 1950-1959, 1960-1969, 1970-1985, 1986-1999, and 2000-2017.
![](https://github.com/AliBailoun234/Final_project/blob/main/ERD/ERD.png)

## Machine Learning

The Machine Learning exercises performed on our data were used to cluster our data into meaningful buckets. We used key numeric fields such as Field Goals, Two Pointers, Free Throws, Assists, and Points to show if there is statistical correlation to a player's position. Using an elbow curve (shown below), we decided to use 5 clusters, and from there we performed a cluster analysis using PCA (shown below). We will continue to examine our data and test other fields to determine where the best correlation occurs.
![Elbow Curve](https://github.com/AliBailoun234/Final_project/blob/main/Files/Elbow%20Curve.png)
![Cluster](https://github.com/AliBailoun234/Final_project/blob/main/Files/PCA%20Data%20Clustering.png)

## Questions to answer

1. Who are the top 10 players in points, rebounds, and assists over each decade?
2. Is there a correlation between where a player went to college and how they perform?
3. Can a player's height, weight, and position predict their season statistics?
4. Are there types of players that appear in earlier decades that do not appear in later decades?


## Results

1. Our group divided the data into five different time periods. We wanted to figure out the top 10 playrers in points, rebounds, and assists over each decade. This question can be solved by using same process in each decade. Let's use 1960-1969 as an example to show the process and results here.  Key points are listed as below.

   * Groupby 'Player'
   * Sort value by 'PTS','TRB' and 'AST'
   * Visualization
  
* During 1960 to 1969, the top 10 players in points are Wilt Chamberlain, Oscar Robertson, Elgin Baylor, Walt Bellamy, Jerry West, Hal Greer, Bailey Howell, Sam Jones, Richie Guerin and Bob Boozer.
![](https://github.com/AliBailoun234/Final_project/blob/main/Files/Total%20points.png)

* During 1960 to 1969, the top 10 players in rebounds are Wilt Chamberlain, Bill Russell, Walt Bellamy, Elgin Baylor, Jerry Lucas, Bailey Howell, Johnny Green, Ray Scott, Nate Thurmond and Bob Pettit.
![](https://github.com/AliBailoun234/Final_project/blob/main/Files/Rebounds.png)

* During 1960 to 1969, the top 10 players in assists are Oscar Robertson, Guy Rodgers, Wilt Chamberlain, Lenny Wilkens, Richie Guerin, Bill Russell, Jerry West, Hal Greer, Elgin Baylor, and K.C. Jones.
![](https://github.com/AliBailoun234/Final_project/blob/main/Files/Assists.png)

## Tableau

### We utilized Tableau to show our main takeaways such as top players for assists and points and top teams for points and assists across the decades.

![](https://github.com/AliBailoun234/Final_project/blob/main/Files/Tableau%20Dashboard.png)

## Milestones

1. Decided on Basketball as our sport to analyze as well as data sources
2. Created ERD for how we'd like our data to be joined
3. Divided the data into subsets for each team member to begin to create takeaways
4. Began to discuss which aspects of our data would be a good fit for machine learning
5. Decided to use a cluster analysis for our machine learning model
6. Compared Decade and Position to Assists, and Points to find determine if a statistically significant correlation exists
7. Seperated the data into seven clusters because of the associated elbow curve and ran a cluster analysis
8. Determined there was no statistically significant correlation between Decade and Position to Assists and Points

## Technologies

1. SQL
  - Used to import our three tables and join them based on the player's name. The Player and Player_Data tables were joined to the Season_Stats table through a left join
2. Python
  - Used Pandas library to create, transform, and interpret the data
  - StandardScaler and PCA allowed us to create an elbow curve for our cluster analysis
3. Tableau
  - We plan to use Tableau to display our analysis and tell the story of basketball statistics over the years
  
## Resources
### [Kaggle: NBA Players Stats Since 1950](https://www.kaggle.com/datasets/drgilermo/nba-players-stats?resource=download&select=player_data.csv)

