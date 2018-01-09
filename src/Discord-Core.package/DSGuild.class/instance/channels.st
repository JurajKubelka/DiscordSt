accessing
channels
	"Return channels registered to this server."
	^ channels ifNil: [ channels := self restApi channelsInGuild: self ]