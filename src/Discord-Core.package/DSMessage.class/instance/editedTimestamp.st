accessing
editedTimestamp
	"Get when this message was edited (or nil if never)."
	^ self fieldsAt: 'edited_timestamp'