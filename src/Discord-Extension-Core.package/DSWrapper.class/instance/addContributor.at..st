adding
addContributor: aDSUser at: aDateAndTime
	"The last contributor is the last user who published the message.
	The previous users published related message before."

	^ self contributorsWithDateAndTimes addLast: aDSUser -> aDateAndTime