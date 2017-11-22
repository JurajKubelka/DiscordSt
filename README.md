# Discord.st

An API wrapper for [Discord](https://discordapp.com) written in [Pharo](http://pharo.org).

[![Build Status](https://travis-ci.org/JurajKubelka/DiscordSt.svg?branch=master)](https://travis-ci.org/JurajKubelka/DiscordSt)
[![Build status](https://ci.appveyor.com/api/projects/status/enr9dgwos8ke340m/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/discordst/branch/master)
[![Test Status](https://api.bob-bench.org/v1/badgeByUrl?branch=master&hosting=github&ci=travis-ci&repo=JurajKubelka%2FDiscordSt)](https://bob-bench.org/r/gh/JurajKubelka/DiscordSt)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/DiscordSt/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/DiscordSt?branch=master)

## Installation

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load.
```

The script above installs all but UI packages. For more options, see [documentation](doc/Installation.md).

## Documentation

You can watch a video tutorial available on
[YouTube](https://www.youtube.com/watch?v=33kXsOiP6wA). It includes
examples and several use cases. Check the talk outline (description) below the video. Slides are available [here](doc/TechTalk-21-11-2017.pdf).

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
account, email and password. Notice that using such account to connect
bots is strictly prohibited.

## Examples

Examples are divided into three sections:

- [Webhook](doc/Webhook.md)
- [Bot](doc/Bot.md)
- [User Client](doc/UserClient.md)
