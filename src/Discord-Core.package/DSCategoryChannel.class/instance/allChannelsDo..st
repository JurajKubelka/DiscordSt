enumerating
allChannelsDo: aBlockClosure 
	"Iterate all (sub-)channels."
	self subordinateChannels allChannelsDo: aBlockClosure