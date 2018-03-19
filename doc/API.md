## API documentation

### Authentication

Authenticating with the Discord can be done in one of three ways:

- Using a Webhook URL gained by creating a Webhook bot.
- Using a bot token gained by registering a bot
- Using a user email and password credentials (notice that you should
not use a user account to connect bots)

### Webhook

[Webhooks](https://discordapp.com/developers/docs/resources/webhook#webhook-resource)
are a low-effort way to post messages to channels in Discord. They do
not require a bot user or authentication to use. They cannot read
messages from a channel.

A typical example is being informed about GitHub repository
changes. This case does not require extra resources, is [supported
directly by Discord](https://gist.github.com/jagrosh/5b1761213e33fc5b54ec7f6379034a22).

### Bot

Other option is creating a bot. Such account, Discord calls it *apps*,
can be used for chatbots that can read and write messages and manage
associated serves and channels.

To create a bot, check following steps:
- Create a Bot App https://discordapp.com/developers/applications/me
- Copy the Client/Application ID
- Calculate permissions and click on a link to authorize the Bot: https://discordapi.com/permissions.html

Remember that the new Bot has to connect to
[Gateway](https://discordapp.com/developers/docs/topics/gateway) at
least once, before sending messages. Gateways are Discord's form of
real-time communication over secure WebSockets. Clients receive
events and data over the gateway they are connected to and send data
over the REST API.

### User Client

The third option to connect to Discord within Pharo is by using a user
account, email and password. **Notice that using such account to connect
bots is strictly prohibited. You should not use your user account to
automate login and other operations!**

## Examples

Examples are divided into three sections:

- [Webhook](Webhook.md)
- [Bot](Bot.md)
- User Client Note: this documentation is missing. You can find examples on `DSClient` class side.

For more examples, please, check the class sides of the corresponding classes. We use [GT-Examples](https://github.com/feenkcom/gtoolkit-examples) to document the source code.
