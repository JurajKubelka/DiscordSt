accessing - cache
cacheAt: key ifAbsentPut: absentBlock 
	"Return the value at the given key.
	If the key is not included in the receiver store and return the result 
	of evaluating aBlock as the new value."
	^ self cache at: key ifAbsentPut: absentBlock