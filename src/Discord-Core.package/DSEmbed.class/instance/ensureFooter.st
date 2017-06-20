private
ensureFooter
	"Create a footer object if necessary and return it."
	self footer ifNil: [ self footer: self newFooterObject ].
	^ self footer