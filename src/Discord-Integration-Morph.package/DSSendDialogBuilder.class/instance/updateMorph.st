actions
updateMorph
	"Update SendDialogMorph object according to its items object."
	self itemsWithIndexDo: [ :sendItem :index | 
		itemIndex := index.
		sendItem accept: self ]