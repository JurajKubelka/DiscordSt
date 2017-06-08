testing
hasSessionId
	^ self fieldsAt: #session_id ifPresent: [ :value | true ] ifAbsent: false