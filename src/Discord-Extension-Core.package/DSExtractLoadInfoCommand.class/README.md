I extract a data from a field in order to download and materialize a serialized object.

The data are stored as a value in a DSEmbedField object.
The extracted information is used by DSLoadCommand that materialize a corresponding object.

Public API and Key Messages

- message: 	set a DSMessage object that has the information about a serialized object
- loadId		return a string that is used by DSLoadCommand
- data		return a string that is used by DSLoadCommand

Internal Representation and Key Implementation Points.

    Instance Variables
	data:		<String>
	loadId:		<String>
	message:	<DSMessage>
