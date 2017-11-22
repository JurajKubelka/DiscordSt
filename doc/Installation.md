## Installation

Standard baseline script loads webhook, bot, and client packages, including test cases, examples, and extensions (IDE integrations).

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load.
```

### All Packages

The following script loads all source code, including graphical extensions (Brick/Bloc).

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load: #all.
```

### Webhook

The following script loads Webhook packages including test cases. You can use option `#'src-webhook'` to exclude test cases.

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load: #webhook.
```

### Bot and User Client

The following script loads Bot and User Client packages including test cases. You can use option `#'src-client` to exclude test cases.

```Smalltalk
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load: #client.
```
