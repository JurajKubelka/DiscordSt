*Discord-UI-Brick
gtLiveFor: aView
	<gtView>
	(self hasContent or: [ self hasEmbeds ]) ifFalse: [ ^ aView empty ].
	^ aView explicit 
		title: 'Live';
		priority: 0;
		stencil: [ DSMessageElement new message: self ]