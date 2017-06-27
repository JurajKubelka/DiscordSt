ui
specModelWithExtensions
	"Return a basic Spec model, extended by command extensions.
	See DSCommandExtension."
	model := self basicSpecModel.
	self specExtensions do: [ :eachExtension | 
		model assign: eachExtension value to: eachExtension key ].
	self specLayoutExtensions do: [ :eachExtension |
		eachExtension cull: model layout cull: model cull: self ].
	^ model