# Discord.st
An API wrapper for Discord written in Pharo

[![Build Status](https://travis-ci.org/JurajKubelka/DiscordSt.svg?branch=master)](https://travis-ci.org/JurajKubelka/DiscordSt)
[![Build status](https://ci.appveyor.com/api/projects/status/enr9dgwos8ke340m/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/discordst/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/DiscordSt/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/DiscordSt?branch=master)

## Examples

You can send a simple message by executing:

```
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Hello! I am a Bot executed from Pharo';
	post
```

Or you can add username and avatar information by executing:

```
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Hello! I am a Bot executed from [Pharo](http://pharo.org)';
	username: 'Pharo Welcome';
	avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
	post
```

![Bot example](assets/img/bot-example.png)
