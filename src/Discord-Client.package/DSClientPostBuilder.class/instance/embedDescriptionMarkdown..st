protocol - markdown
embedDescriptionMarkdown: oneArgBlock
	"Build Embed Description using a dedicated Markdown builder.
	Receives a block with one argument. 
	The first argument is a Markdown builder."
	self embedDescription: (oneArgBlock cull: self markdown).