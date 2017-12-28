accessing
allAvailableExtensions
	"Return instances of all available command extensions for a particular command.
	Methods that define the pragma should not have arguments.
	Each method should return a collection of the command extensions."
	^ self allDsCommandExtensionsPragmas flatCollect: [ :eachPragma | 
		self perform: eachPragma methodSelector ] as: OrderedCollection