#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams")"

#INSERT TEAMS
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != year ]]
  then
    #INSERT WINNER TEAM
    WINNER_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
    if [[ -z $WINNER_TEAM_ID ]]
    then
      INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
      if [[ $INSERT_TEAM_RESULT = "INSERT 0 1" ]]
      then
        WINNER_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
        echo team insertered: $WINNER
      fi
   
    fi
   
   #INSERT OPPONNET TEAM
    OPPONENT_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
      if [[ $INSERT_TEAM_RESULT = "INSERT 0 1" ]]
      then
        OPPONENT_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
        echo team insertered: $OPPONENT
      fi
    fi

    #INSERT GAME
    INSERT_GAME="$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
    if [[ $INSERT_GAME = "INSERT 0 1" ]]
    then
      echo Teams of game inserted: $WINNER VS $OPPONENT 
    fi
  fi
done
