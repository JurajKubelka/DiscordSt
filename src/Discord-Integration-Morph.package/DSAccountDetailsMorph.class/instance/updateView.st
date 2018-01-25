updating
updateView
	"Update view according to new registry state."
	self registry accept: (DSAccountDetailsUpdateRequest new
		morph: self;
		yourself)