accessing
device
	"Return device identification"
	<return: #String>
	^ device ifNil: [ device := DSConstants deviceVersion ]