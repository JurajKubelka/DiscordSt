converting
asMultiPartDataFormEntity
	| entity |
	entity := ZnMultiPartFormDataEntity new.
	self fields keysAndValuesDo: [ :key :value | | part |
		part := ZnMimePart fieldName: key value: value.
		entity addPart: part ].
	self fileParts do: [ :part |
		entity addPart: part ].
	^ entity