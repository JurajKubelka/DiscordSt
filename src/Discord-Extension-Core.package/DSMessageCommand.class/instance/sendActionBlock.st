private
sendActionBlock
	"Return a block closure that is executed when Send button is pressed."
	^ [ :aModel | self storeInputs: aModel; send ]