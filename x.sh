# use curl everytime to fetch code so no need to deploy everytime just restart

## Bot Setup
git clone https://github.com/xdwtf/MERGE-BOT bot
cp -r bot/helpers bot/assets bot/bot.py bot/config.py ./

#worker
python3 bot.py
