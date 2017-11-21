*Discord-Extension-Core
gtInspectorActionMaterializeData
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | | result |
				result := self materializeObjectInAWrapper.
				"presentation update; selection: result" ];
		icon: (self iconNamed: #smallInspectIt);
		condition: [ self isFuel ];
		title: 'Inspect the received object' translated