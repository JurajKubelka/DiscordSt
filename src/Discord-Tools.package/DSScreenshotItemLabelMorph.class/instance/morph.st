accessing
morph
	"Return a morph that should be previewed.
	If there is not a morph to preview, return nil."
	<return: #Morph or: nil>
	^ self getMorphSelector 
		ifNotNil: [ self model perform: self getMorphSelector ]