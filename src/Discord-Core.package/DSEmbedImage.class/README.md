I represent Discord Embed Image object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-image-structure

{{{
DSEmbedImage new 
	url: 'http://example.com/icon.png';
	height: 512;
	width: 512;
	yourself
}}}

or as a part of DSEmbed object

{{{
DSEmbed new 
	imageUrl: 'http://example.com/icon.png';
	imageHeight: 512;
	imageWidth: 512;
	yourself
}}}
