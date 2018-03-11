# DiscordSt

**Discord API.** DiscordSt is a client for [Discord](https://discordapp.com) written in [Pharo](http://pharo.org). It includes subset of the *[public API](https://discordapp.com/developers/docs/intro)* that constantly grows. If you miss any API, please, tell us, open an issue, or make a contribution :-)

**Pharo Integration.** Smalltalk developers know very well that live programming frees developers from the “edit-compile-run” loop and allows people to interact with running programs very easily. The DiscordSt's purpose is to bring Pharo's live experience to developer communications, such as online chat discussions. DiscordSt thus includes a *Pharo integration* that allows you to share Playground code snippets, related source code, screenshots, animated GIFs (screen recording), and system information. All this from Pharo itself as smooth as possible.

DiscordSt, version 0.2.0, is supported in Pharo 6.0, 6.1, and 7.0.

[![Build Status](https://travis-ci.org/JurajKubelka/DiscordSt.svg?branch=master)](https://travis-ci.org/JurajKubelka/DiscordSt)
[![Build status](https://ci.appveyor.com/api/projects/status/enr9dgwos8ke340m/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/discordst/branch/master)
[![Test Status](https://api.bob-bench.org/v1/badgeByUrl?branch=master&hosting=github&ci=travis-ci&repo=JurajKubelka%2FDiscordSt)](https://bob-bench.org/r/gh/JurajKubelka/DiscordSt)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/DiscordSt/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/DiscordSt?branch=master)

## Installation

You can install DiscordSt from Catalog Browser:

![World menu -> Catalog Browser](assets/img/world-menu-catalog.png)
![Catalog Browser](assets/img/catalog-browser.png)

or by executing the following script:

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load.
```

The script above installs a standard Discord client (webhook, bot, user client, and Pharo integration). To install a subset of the standard installation or extra packages, e.g., a Block extension, check [documentation](doc/Installation.md).

## Update

You can update the Discord this script in the World menu / `Communication` / `Update DiscordSt`.

![World menu -> DiscordSt Update](assets/img/world-menu-update.png)

## Documentation

You can watch a video tutorial available on
[YouTube](https://www.youtube.com/watch?v=33kXsOiP6wA). It includes
examples and several use cases. A recent talk on
[YouTube](https://youtu.be/Rvq2iKY7YWQ) is more focused on the Pharo
integration version 0.2.0. Check the talk outline (description) below
the video. Slides for the first talk are available
[here](doc/TechTalk-21-11-2017.pdf), for the second talk [here](doc/Ukrainian_DiscordSt_Talk_09-03-2018.pdf).


For more information about
- Discord API support, check [API documentation](doc/API.md)
- Discord Pharo integration, check [Pharo integration](doc/PharoIntegration.md)
