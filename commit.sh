YELLOW="\033[1;33m"
GREY="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"
NO_COLOR="\033[0m"

echo "Write commit message: "
read message
echo
echo "Your message is: $message"
echo -e "Are you sure? (${GREEN}y${NO_COLOR}/${RED}n${NO_COLOR}) "
read -p "" -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo -e "${BLUE}Doing commit...${NO_COLOR}"
   echo
   echo
   git add .
   echo
   git commit -m "$message"
   echo
   git push origin master
   echo
   echo 
   echo -e "${GREEN}All done${NO_COLOR}"
else
echo
echo
echo -e "${RED}Commit abort${NO_COLOR}"
fi
echo

