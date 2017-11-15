examples
twoRadioButtons
	<gtExample>
	<label: 'A Spec model with two radio buttons.'>
	<script: 'self twoRadioButtons openWithSpec'>
	| model |
	model := DSExtensionRadioButtonsModel new
		addRadioButtonIdentified: #rbOne;
		addRadioButtonIdentified: #rbTwo;
		yourself.
	model rbOne 
		label: 'One';
		activationAction: [ self inform: 'One selected' ].
	model rbTwo 
		label: 'Two';
		activationAction: [ self inform: 'Two selected' ].
	^ model