accessing
permissionOverwrites: array
	"Set an array of overwrite objects"
	^ self fieldsAt: 'permission_overwrites' put: array