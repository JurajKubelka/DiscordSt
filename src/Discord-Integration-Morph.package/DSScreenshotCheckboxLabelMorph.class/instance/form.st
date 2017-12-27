accessing
form
	"Return a Form that should be previewed.
	If there is not a Form to preview, return nil."
	<return: #form or: nil>
	^ self getFormSelector 
		ifNotNil: [ self model perform: self getFormSelector ]