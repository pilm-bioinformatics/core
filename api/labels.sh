USER=$1
PASS=$2
REPO=$3

# Delete default labels
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/bug"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/duplicate"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/enhancement"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/invalid"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/question"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/wontfix"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/good%20first%20issue"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/help%20wanted"

# Create labels
curl --user "$USER:$PASS" --include --request POST --data '{"name":"project","color":"a2eeef"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"meeting","color":"e4e669"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"question","color":"d876e3"}' "https://api.github.com/repos/$USER/$REPO/labels"
