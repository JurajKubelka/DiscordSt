accessing
items: anObject
	"Set a collection of items to display."
	self rootItem: (self class rootItemFor: anObject).
	self addSourceToRootItem.
	self expandAll.
	