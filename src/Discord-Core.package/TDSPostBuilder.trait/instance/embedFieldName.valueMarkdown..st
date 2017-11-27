protocol - markdown
embedFieldName: nameString valueMarkdown: oneArgBlock
	"Build Embed Field value using a dedicated Markdown builder.
	Receives a block with one argument that receives the Markdown builder"
	self embedFieldName: nameString value: (oneArgBlock cull: self markdown).