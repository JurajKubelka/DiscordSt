accessing
imageForm
	"Get an Form object (image) representing the Debugger window (Morph)."
	^ imageForm ifNil: [ imageForm := self morph ifNotNil: #imageForm ]