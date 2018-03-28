private - children
updateEnabledOfChildren
	"Update isEnabled of all direct children."
	self basicChildren do: [ :each | each isEnabled: self isSelectedAndEnabled ]