#! /usr/bin/bash

# need to install some tools to run this script.
# - sudo apt-get install curl
# - sudo apt install -y jq

echo "--------------- WELLCOME ---------------"

# ask user name
read -p ">> Enter your user: " GITHUB_USER

URL="https://api.github.com/users/"$GITHUB_USER

# get data from request
DATA="?fields="

# request and create JSON
echo ">> getting request..."
curl --request GET $URL$DATA > info.json
CREATED_AT=$(jq '.created_at' info.json)
ID=$(jq '.id' info.json)
echo ">> SUCCEED."
echo

# show information
MESSAGE="Hellow $GITHUB_USER\nYour id is $ID\nAnd your account was created in $CREATED_AT"
# (-e) is just to accept scape sequence
echo -e $MESSAGE

#
DATE=$(date +'%m-%d-%Y')

DIR_NAME="/tmp/$DATE"
FILE_NAME="/tmp/$DATE/saludos.log"

# create the directory
mkdir $DIR_NAME

# check if the directory was created successfully
if [ $? -eq 0 ]; then
  echo ">> Directory was created successfully: $DIR_NAME"
  touch $FILE_NAME
else
  echo ">> Directory already exists: $DIR_NAME."
fi


echo ">> Writing file..."
echo -e $MESSAGE > $FILE_NAME
echo ">> FINISH."
