# Final_project

## Overview

### Professional basketball has looked very different over the past years thanks to the use of data analytics. Data analytics and statistics have improved the way we watch, engage, and root for teams. Not only has it improved the way the viewers experience the game, but it has also improved the way the game is played. Thus, Our group has selected basketball as our project topic because there are important features to the sport where data analytics can bring a deeper understanding to what goes into each game. We will be analyzing trends by year to see if there are any types of players that were more prominent in earlier years that become less prominent. We will use a cluster analysis for our machine learning model to identify which decade a player appeared in based on their metrics.

## Data

### Our database consists of three main sources: season stats spanning from 1950 to 2017, player personal information, and player college information. We have joined the data on player name and from there we will be analyzing key metrics such as player averages, team averages, best seasons, and best players. We will be doing our main analysis of the season stats data source and bringing in the other two for complimentary data analysis. We have divided the data into five different time periods: 1950-1959, 1960-1969, 1970-1985, 1986-1999, and 2000-2017.
![](https://github.com/AliBailoun234/Final_project/blob/main/ERD/ERD.png)

## Machine Learning

### Two Machine Learning exercises were performed on our data. Both of which were used to cluster our data into meaningful buckets. The [first](https://github.com/AliBailoun234/Final_project/blob/Machine-Learning/Machine%20Learning/Machine_Learning_Test.ipynb) used Decade, Position, Assists, and Points to show if there is statistical correlation between a player's decade they played in and their position to their points and assists. Using an elbow curve, we decided to use 7 clusters, and from there we performed a cluster analysis using PCA (shown below). We also used the balanced accuracy score and confusion matrix to show the key takeaways from the clusters. With our balanced accuracy score being 0.07, we can conclude that there is no statistical significance between a players decade and position to their points and assists.
![Cluster](https://github.com/AliBailoun234/Final_project/blob/Machine-Learning/Files/PCA%20Data%20Clustering.png)

## Questions to answer

1. Who are the top 10 players in points, rebounds, and assists over each decade?
2. Is there a correlation between where a player went to college and how they perform?
3. Can a player's height, weight, and position predict their season statistics?
4. Are there types of players that appear in earlier decades that do not appear in later decades?

## Milestones

1. Decided on Basketball as our sport to analyze as well as data sources
2. Created ERD for how we'd like our data to be joined
3. Divided the data into subsets for each team member to begin to create takeaways
4. Began to discuss which aspects of our data would be a good fit for machine learning
5. Decided to use a cluster analysis for our machine learning model

## Technologies

1. SQL
  - Used to import our three tables and join them based on the player's name. The Player and Player_Data tables were joined to the Season_Stats table through a left join
2. Python
  - Used Pandas library to create, transform, and interpret the data
  - StandardScaler and PCA allowed us to create an elbow curve for our cluster analysis
  - Balanced Random Forest Classifier and Balanced Accuracy Score allowed us to show important takeaways
  
## Resources
### [Kaggle: NBA Players Stats Since 1950](https://www.kaggle.com/datasets/drgilermo/nba-players-stats?resource=download&select=player_data.csv)

