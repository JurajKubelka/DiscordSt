I represent Discord Embed Provider object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-provider-structure

{{{
DSEmbedProvider new 
	name: 'Pharo';
	url: 'http://example.com/icon.png';
	yourself
}}}

or as a part of DSEmbed object

{{{
DSEmbed new 
	providerName: 'Pharo';
	providerUrl: 'http://example.com/icon.png';
	yourself
}}}
