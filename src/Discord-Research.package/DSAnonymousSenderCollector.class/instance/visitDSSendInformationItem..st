visiting
visitDSSendInformationItem: aDSSendInformationItem 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'information selected: ';
		nextPutAll: aDSSendInformationItem isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSSendInformationItem isEnabled asString;
		cr.
	self increaseIndent.
	aDSSendInformationItem infos do: [ :eachInfo | | printedInfo |
		printedInfo := ((eachInfo name = 'Pharo') or: [ eachInfo name = 'OS' ])
			ifTrue: [ eachInfo printString ]
			ifFalse: [ 'Info: ', eachInfo name asString, ' value: ', eachInfo value hash asString ].
		stream 
			nextPutAll: self indentString;
			nextPutAll: printedInfo;
			nextPutAll: ', selected: ';
			nextPutAll: eachInfo isSelected asString;
			cr ].
	self decreaseIndent.