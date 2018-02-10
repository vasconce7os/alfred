!#/bin/bash
echo "Hello World"
echo "Opening atom..."
atom ~/public_html/newSaudeSystem

echo "Opening eclipse..."
/home/vasconcelos/eclipse/jee-latest-released/eclipse/eclipse -data $HOME/eclipse-workspace/ &

echo "Starting JavaScript on back-end..."
node ~/public_html/newSaudeSystem/medicsystem-web/src/index.js &

echo "Opening Firefox Browser"
firefox localhost:9000 &
