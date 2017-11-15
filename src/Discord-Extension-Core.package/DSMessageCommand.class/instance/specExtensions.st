extensions
specExtensions
	"Return collection of Spec model extensions that should be added to the DynamicComposableModel instance."
	^ specExtensions ifNil: [ specExtensions := OrderedCollection new ]