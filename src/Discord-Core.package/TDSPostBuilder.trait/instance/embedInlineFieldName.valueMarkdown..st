protocol - markdown
embedInlineFieldName: nameString valueMarkdown: oneArgBlock
	"Build inlined Embed Field value using a dedicated Markdown builder.
	Receives a block with one argument that receives the Markdown builder"
	self embedInlineFieldName: nameString value: (oneArgBlock cull: self markdown).