I represent Discord Embed Field object that can be send as JSON to a Discord  API.

See documentation at https://discordapp.com/developers/docs/resources/channel#embed-field-structure

{{{
DSEmbedField new 
	name: 'field-one';
	value: 'my value one';
	beInline;
	yourself
}}}

or as a part of DSEmbed object

{{{
DSEmbed new 
	addFieldName: 'field-one' value: 'my value one';
	addInlineFieldName: 'field-two' value: 'ma value two';
	yourself
}}}
