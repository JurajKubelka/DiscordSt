private
attachSerializedObject
	| data |
	self flag: #remove.
	self shouldNotImplement.
	data := self serializedWrappedObject.
	data size > DSUtility discordAttachmentLimit 
		ifTrue: [ self splitSerializedData: data ]
		ifFalse: [ self client 
			fileName: self fileName bytes: data ].