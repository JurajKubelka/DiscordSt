# Discord.st
An API wrapper for Discord written in Pharo

[![Build Status](https://travis-ci.org/JurajKubelka/DiscordSt.svg?branch=master)](https://travis-ci.org/JurajKubelka/DiscordSt)
[![Build status](https://ci.appveyor.com/api/projects/status/enr9dgwos8ke340m/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/discordst/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/DiscordSt/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/DiscordSt?branch=master)

## Installation

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load.
```

## Examples

### Text Messages

You can send a simple message by executing:

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Hello! I am a Bot executed from Pharo';
	post
```

Or you can add username and avatar information by executing:

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Hello! I am a Bot executed from [Pharo](http://pharo.org)';
	username: 'Pharo Welcome';
	avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
	post
```

![Bot example](assets/img/bot-example.png)

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	username: 'Pharo Welcome';
	avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
	embedTitle: 'Discord Bot Announcement';
	embedDescription: 'Hello! I am a Bot executed from [Pharo](http://pharo.org)';
	embedUrl: 'https://github.com/JurajKubelka/DiscordSt';
	embedColor: Color green;
	embedFooterText: 'Discord API in Pharo';
	embedFooterIconUrl: 'https://discordapp.com/assets/2c21aeda16de354ba5334551a883b481.png';
	post
```

![Bot example](assets/img/embed-object.png)

### Attachments and Images

You can send a file, for example an image:

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Pharo loves Discord';
	fileName: 'pharo-logo.png' 
	bytes: (ZnEasy 
		get: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png') contents;
	post.
```

or a screenshot of a Form object:

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	message: 'Pharo loves Discord';
	fileName: 'help-icon.png' form: Smalltalk ui icons help;
	post.
```

or a screenshot of a Morph object:

```Smalltalk
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	username: 'Pharo Screenshot';
	avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
	fileName: 'screen.png' morph: World;
	post.
```

![Bot example](assets/img/morph-screenshot.png)
