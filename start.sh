if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ccadmin1/EvaMaria3 /EvaMaria3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria3
fi
cd /EvaMaria3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
