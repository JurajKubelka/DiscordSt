tests - basic
testUnixTimeInMilliSecondsMappingFor
	| result jsonResult jsonString |
	"'2017-11-09T11:41:09.769-03:00' asDateAndTime asUnixTime"
	jsonString := '1510238469769'.
	result := self read: jsonString as: #UnixTimeInMilliSeconds mappedTo: #unixTimeInMilliSecondsMappingFor:.
	self assert: result class equals: DateAndTime.
	self assert: result equals: '2017-11-09T11:41:09.769-03:00' asDateAndTime.
	jsonResult := self write: result as: #UnixTimeInMilliSeconds mappedTo: #unixTimeInMilliSecondsMappingFor:.
	self assert: jsonResult equals: jsonString.