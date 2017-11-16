enumerating
textChannels
	"Return text channels."
	^ self flattenedChannels select: #isGuildTextChannel