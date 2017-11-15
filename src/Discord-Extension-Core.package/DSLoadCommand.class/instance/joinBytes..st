private
joinBytes: collectionOfByteArray 
	"Return merged bytes in one ByteArray object."
	^ ByteArray 
		new: (collectionOfByteArray sum: #size)
		streamContents: [ :aStream | 
			collectionOfByteArray do: [ :eachByteArray | aStream nextPutAll: eachByteArray ] ]