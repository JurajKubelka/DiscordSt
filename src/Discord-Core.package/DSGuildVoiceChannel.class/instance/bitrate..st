accessing
bitrate: integer
	"Set the the bitrate (in bits) of the voice channel.
	Present only in voice type channels."
	^ self fieldsAt: 'bitrate' put: integer