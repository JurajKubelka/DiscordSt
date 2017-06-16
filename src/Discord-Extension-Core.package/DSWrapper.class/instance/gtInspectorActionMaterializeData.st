gt-inspector-extension
gtInspectorActionMaterializeData
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | | result |
				result := self materialize.
				presentation update; selection: result ];
		icon: (self iconNamed: #glamorousAdd);
		condition: [ self serializedData notNil ];
		title: 'Materialize'