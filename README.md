# Discord.st
An API wrapper for Discord written in Pharo

[![Build Status](https://travis-ci.org/JurajKubelka/DiscordSt.svg?branch=master)](https://travis-ci.org/JurajKubelka/DiscordSt)
[![Build status](https://ci.appveyor.com/api/projects/status/enr9dgwos8ke340m/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/discordst/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/DiscordSt/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/DiscordSt?branch=master)

## Examples

```
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/webhook-id/webhook-token';
	message: 'Hello! I am a Bot executed from Pharo';
	post
```
