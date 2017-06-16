private
createHumanReadableGraphicalRepresentation
	"Create a human readable graphical representation of an object.
	It should be a morph object that represents the window, e.g., debugger, or inspector."
	self morph: (World submorphs detect: [ :aMorph | aMorph model == self morphModel ] ifNone: nil).
	