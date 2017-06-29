initialization
initializeCommandToTestSetFileName
	"Set a mandatory information to a command instance
	in order to successfully proceed setFileName message."
	| aCompiledMethod aReceiver aSender aMethodContext aSession aProcess |
	aCompiledMethod := Rectangle >> #rightCenter.
	aReceiver := 100@100 corner: 200@200.
	aSender := nil.
	aMethodContext := Context 
		sender: aSender 
		receiver: aReceiver 
		method: aCompiledMethod arguments: #().
	aProcess := Process forContext: aMethodContext priority: Processor userBackgroundPriority.
	aSession := aProcess 
		newDebugSessionNamed: 'Testing stack' 
		startedAt: aMethodContext.
	window := Smalltalk tools debugger new openOn: aSession.
	command debugger: window model.