utility
findMorph
	"Find a Morph window as a graphical representation of serialized data, 
	e.g., debugger, or inspector."
	^ World submorphs detect: [ :aMorph | aMorph model == self morphModel ] ifNone: nil.