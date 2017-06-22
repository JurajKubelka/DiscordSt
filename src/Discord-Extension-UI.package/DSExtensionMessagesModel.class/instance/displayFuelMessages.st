private
displayFuelMessages
	"Display all messages in the list"
	self listModel filteringBlock: [ :messages | messages fuels ]