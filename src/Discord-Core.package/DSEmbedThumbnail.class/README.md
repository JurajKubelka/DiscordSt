I represent Discord Embed Thumbnail object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-thumbnail-structure

{{{
DSEmbedThumbnail new 
	url: 'http://example.com/icon.png';
	height: 512;
	width: 512;
	yourself
}}}

or as a part of DSEmbed object

{{{
DSEmbed new 
	thumbnailUrl: 'http://example.com/icon.png';
	thumbnailHeight: 512;
	thumbnailWidth: 512;
	yourself
}}}
