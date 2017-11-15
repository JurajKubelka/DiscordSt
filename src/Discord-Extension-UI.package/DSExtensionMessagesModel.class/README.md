I represent a Spec UI model.
I know how to display a list of Discord messages in a list.
The list can be filtered (All / FUEL).

Public API and Key Messages

- messages: 		- set a list of messages to display 

{{{
"An empty list"
DSExtensionMessagesModel new
	messages: DSMessages new;
	openWithSpec.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	listModel:		<FastTableModel>
	toolbarModel:		<DSExtensionRadioButtonsModel>
