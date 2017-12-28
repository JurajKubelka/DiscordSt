accessing - convenience
informationItem
	"Return an information item"
	<return: #DSSendInformationItem>
	^ self collection 
		detect: [ :eachItem | eachItem isInformationItem ]  
		ifFound: [ :anItem | anItem ] 
		ifNone: [ self collection add: DSSendInformationItem new ]