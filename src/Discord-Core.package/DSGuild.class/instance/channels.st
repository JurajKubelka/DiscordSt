public
channels
	"Return channels registered to this server."

	^ self restApi guildChannelsOf: self