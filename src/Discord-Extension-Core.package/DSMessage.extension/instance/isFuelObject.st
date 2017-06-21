*Discord-Extension-Core
isFuelObject
	"Return true if any embed field name is FUEL and field value is Object"
	^ self embeds anySatisfy: #isFuelObject