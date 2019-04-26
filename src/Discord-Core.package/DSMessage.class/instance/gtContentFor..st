accessing
gtContentFor: aView
	<gtView>
	(self hasContent or: [ self hasEmbeds ]) ifFalse: [ ^ aView empty ].
	^ aView textEditor
		title: 'Content';
		priority: 1;
		text: [ self printFullMessage ]