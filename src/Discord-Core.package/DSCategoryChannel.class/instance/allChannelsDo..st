enumerating
allChannelsDo: aBlockClosure 
	"Iterate all (sub-)channels."
	super allChannelsDo: aBlockClosure.
	self subordinateChannels allChannelsDo: aBlockClosure