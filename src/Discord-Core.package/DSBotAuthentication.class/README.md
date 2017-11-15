I represent a bot authentication using token. 

To create such a bot, you need:
- Create a Bot App https://discordapp.com/developers/applications/me
- Copy the Client/Application ID
- Calculate permissions and link to authorize the Bot: https://discordapi.com/permissions.html
- Authorize the Bot

Notice, that the new bot has to connect to Gateway at least once, before sending messages.

See DSBot class to connect as a bot.