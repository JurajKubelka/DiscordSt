accessing
contributorsWithDateAndTimes
	"Return associations with DSUser -> DateAndTime objects.
	a DSUser is a contributor that contributed to a discussion at a given time.
	The last DSUser in the collection is the an author of the last message (of that wrapper)."
	^ self info at: #contributors ifAbsentPut: [ OrderedCollection new ]