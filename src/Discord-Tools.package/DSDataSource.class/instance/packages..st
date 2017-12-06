accessing
packages: aDSSelection 
	"Set a collection of packages to display."
	self rootItem: (self class rootItemFor: aDSSelection).
	self addSourceToRootItem.
	self expandAll.
	