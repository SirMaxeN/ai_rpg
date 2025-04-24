echo "write commit message: "
read message
echo
echo "your message is: $message"
read -p "Are you sure? (y/n) " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Doing commit..."
   git add .
   git commit -m "$message"
   git push origin master
fi

