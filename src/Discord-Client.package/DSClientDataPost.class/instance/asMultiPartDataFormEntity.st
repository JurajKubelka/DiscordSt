converting
asMultiPartDataFormEntity
	| entity part |
	entity := ZnMultiPartFormDataEntity new.
	part := ZnMimePart fieldName: 'payload_json' value: self asDiscordJSONString.
	entity addPart: part.
	self fileParts do: [ :eachPart |
		entity addPart: eachPart ].
	^ entity