instance creation
newAuthenticatedClientMorph
	^ DSServerChannelListMorph new
		vResizing: #shrinkWrap;
		yourself