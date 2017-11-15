printing
printFullMessageOn: aTextStream 
	self title ifNotNil: [ :string | aTextStream << string << String crlf ].
	self description ifNotNil: [ :string | aTextStream << string << String crlfcrlf ].
	self fields do: [ :eachField | 
		eachField printFullMessageOn: aTextStream.
		aTextStream << String crlf ].
	self footer ifNotNil: [ :aFooter | 
		aFooter printFullMessageOn: aTextStream ]