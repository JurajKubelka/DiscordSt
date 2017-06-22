I represent a Spec UI model.
I know how to display a list of Radio buttons.
Tha radio buttons are all in one radio group.
The default Spec layout is all radio buttons in one row.

Public API and Key Messages

- addRadioButtonIdentified: 		- add a radio button to the model list
- layout: 							- set a custom Spec layout

{{{
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
model openWithSpec.
}}}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	group:		<RadioButtonGroup>
