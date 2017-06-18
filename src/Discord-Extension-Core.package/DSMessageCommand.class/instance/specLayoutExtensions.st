extensions
specLayoutExtensions
	"Return all Spec layout extensions.
	Each extensions is a BlockClosure that can receive three arguments: 
	SpecLayout, DynamicComposableModel, and DSMessageCommand instances."
	^ specLayoutExtensions ifNil: [ specLayoutExtensions := OrderedCollection new ]