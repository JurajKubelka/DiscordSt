enumerating
channelSatisfying: conditionBlock 
	"Return a channel that satisfy the condition."
	<return: #DSChannel>
	^ DSDetectChannelCommand new
		channels: self channels;
		satisfiedBy: conditionBlock;
		execute;
		satisfyingChannel.