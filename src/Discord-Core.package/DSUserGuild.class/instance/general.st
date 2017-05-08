accessing
general
	"Return general channel.
	General channel has the same id as the guild."
	^ self channels detect: #isGeneral