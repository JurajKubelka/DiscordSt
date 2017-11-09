accessing
os
	"Return operating system identification"
	<return: #String>
	^ os ifNil: [ os := DSConstants osFamily ]