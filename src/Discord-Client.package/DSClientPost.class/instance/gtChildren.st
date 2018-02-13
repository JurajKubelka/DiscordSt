gt-inspector-extension
gtChildren
	"Return children to display in a GT-Inspector tree view.
	Subclasses are encouradged to override it."
	^ self embed ifNil: [ #() ] ifNotNil: [ :anEmbed | Array with: anEmbed ]