public - user
directMessageWith: aDSUser
	"Create a new DM channel with a user. Returns a DM channel object."
	<return: #DSDirectMessageChannel>
	^ self subclassResponsibility