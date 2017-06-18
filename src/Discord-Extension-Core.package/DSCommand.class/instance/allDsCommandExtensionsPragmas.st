accessing
allDsCommandExtensionsPragmas
	"Return pragmas that registers the command extensions."
	^ Pragma allNamed: #dsCommandExtensions from: self class to: DSCommand