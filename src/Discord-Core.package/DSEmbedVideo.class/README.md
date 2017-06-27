I represent Discord Embed Video object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-image-structure

{{{
DSEmbedVideo new 
	url: 'http://example.com/movie.avi';
	height: 600;
	width: 800;
	yourself
}}}

or as a part of DSEmbed object

{{{
DSEmbed new 
	videoUrl: 'http://example.com/movie.avi';
	videoHeight: 600;
	videoWidth: 800;
	yourself
}}}
