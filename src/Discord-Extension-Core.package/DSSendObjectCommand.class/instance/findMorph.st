utility
findMorph
	"Find a Morph window as a graphical representation of serialized data, 
	e.g., debugger, or inspector."
	^ self findInspector ifNil: [ self findPaneInspector ifNil: [ self findPlayground ifNil: [ super findMorph ] ] ]