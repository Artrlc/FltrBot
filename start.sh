if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Artrlc/FltrBot.git /FltrBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FltrBot
fi
cd /FltrBot
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
