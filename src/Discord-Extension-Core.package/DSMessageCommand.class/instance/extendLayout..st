extensions
extendLayout: aBlock
	"Add a Spec layout extensions.
	The BlockClosure argument can receive three arguments: 
	SpecLayout, DynamicComposableModel, and DSMessageCommand instances."
	^ self specLayoutExtensions add: aBlock