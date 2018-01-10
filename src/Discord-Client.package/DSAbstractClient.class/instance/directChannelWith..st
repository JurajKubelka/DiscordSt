public - user
directChannelWith: aDSUser
	"Create a new DM channel with a user. Returns a DM channel object."
	<return: #DSDirectMessageChannel>
	^ self restApi directChannelWith: aDSUser