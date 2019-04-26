accessing
gtImageFor: aView
	<gtView>
	self hasImageAttachments ifFalse: [ ^ aView empty ].
	^ aView explicit
		title: 'Image';
		priority: 2;
		stencil: [ self imageAttachments first asForm asElement ]