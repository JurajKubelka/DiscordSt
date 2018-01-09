enumerating
allChannelsDo: oneArgBlock 
	"Iterates over all channels, including those inside of category channels."
	^ self do: [ :eachChannel | eachChannel allChannelsDo: oneArgBlock ]