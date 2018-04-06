printing
printFullMessageOn: aTextStream 
	self title ifNotNil: [ :string | aTextStream << string << String crlf ].
	self description ifNotNil: [ :string | aTextStream << string << String crlfcrlf ].
	self image ifNotNil: [ :anEmbedImage | 
		aTextStream << 'Image: ' << anEmbedImage url asString << String crlf ].
	self fields do: [ :eachField | 
		aTextStream withAttribute: TextEmphasis italic do: [ 
			eachField printFullMessageOn: aTextStream.
			aTextStream << String crlf ] ].
	self footer ifNotNil: [ :aFooter | 
		aFooter printFullMessageOn: aTextStream ]