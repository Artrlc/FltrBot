if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sanchit0102/MARATHI_FLTR.git /MARATHI_FLTR
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MARATHI_FLTR
fi
cd /MARATHI_FLTR
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
