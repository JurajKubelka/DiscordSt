asserting
assertMembers: aCollection includesFileName: aString 
	self 
		assert: (aCollection anySatisfy: [ :eachMember | eachMember fileName = aString ])
		description: [ 'ZIP Members does not include "', aString asString, '"' ]