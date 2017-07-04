utility
findInspector
	^ World submorphs detect: [ :e | e model class = GTInspector and: [ e model entity = self morphModel ] ] ifNone: nil