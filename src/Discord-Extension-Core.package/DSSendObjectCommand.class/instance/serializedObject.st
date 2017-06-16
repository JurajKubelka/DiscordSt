accessing
serializedObject
	^ serializedObject ifNil: [ serializedObject := self serializeObject: self object ]