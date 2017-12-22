actions
updateMorph
	"Update SendDialogMorph object according to its items object."
	self itemsDo: [ :sendItem | sendItem accept: self ]