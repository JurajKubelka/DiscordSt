utility
takeScreenshot
	"Set a screenshot of a graphical representation of serialized data, 
	e.g., debugger, or inspector"
	self findMorph ifNotNil: [ :aMorph | 
		self wrapper screenshot: aMorph imageForm ]