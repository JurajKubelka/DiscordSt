I represent Discord Footer Embed object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-footer-structure

{{{
DSEmbedFooter new 
	text: 'Example Company';
	iconUrl: 'http://example.com/icon.png';
}}}

or as a part of DSEmbed

{{{
DSEmbed new 
	footerText: 'Footer text';
	footerIconUrl: 'http://example.com/icon.png';
	yourself
}}}
