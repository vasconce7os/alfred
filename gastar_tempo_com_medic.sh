!#/bin/bash

echo "clearnig port 9000"
sudo ps -ef | sudo grep php-fpm | sudo grep -v grep | sudo awk '{print $2}' | sudo xargs kill

echo "Opening atom..."
atom ~/public_html/newSaudeSystem

echo "Opening eclipse..."
/home/vasconcelos/eclipse/jee-latest-released/eclipse/eclipse -data $HOME/eclipse-workspace/ &

echo "Starting JavaScript on back-end..."
node ~/public_html/newSaudeSystem/medicsystem-web/src/index.js &

echo "Opening Firefox Browser"
firefox localhost:9000 &
