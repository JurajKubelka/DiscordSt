private
attachSerializedObject
	| data |
	data := self serializedWrappedObject.
	self client 
		fileName: self fileName bytes: data;
		sendTo: self channel.