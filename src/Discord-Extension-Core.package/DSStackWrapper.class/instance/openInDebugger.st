protocol
openInDebugger
	"Open the serialized stack in a debugger."
	| session |
	session := Processor activeProcess 
		newDebugSessionNamed: 'External stack' 
		startedAt: self materialize.
	Smalltalk tools debugger openOn: session withFullView: true.