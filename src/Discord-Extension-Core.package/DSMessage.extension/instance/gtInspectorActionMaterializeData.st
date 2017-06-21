*Discord-Extension-Core
gtInspectorActionMaterializeData
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | | result |
				result := self materializeObjectInAWrapper.
				presentation update; selection: result ];
		icon: (self iconNamed: #glamorousAdd);
		condition: [ self isFuelObject ];
		title: 'Inspect the received object'