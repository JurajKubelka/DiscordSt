instance creation
hasSessionId
	^ self fieldsAt: #session_id ifPresent: true ifAbsent: false