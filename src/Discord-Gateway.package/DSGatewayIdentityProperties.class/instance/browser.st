accessing
browser
	"Return browser identification"
	<return: #String>
	^ browser ifNil: [ browser := DSConstants userAgent ]