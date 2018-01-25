adding
addName: nameString value: valueString
	"Add new information to the collection"
	^ self add: (DSSendInformation new name: nameString; value: valueString; yourself)