public
data
	"Get the downloaded data"
	^ data ifNil: [ data := self api ifNotNil: [ :anApi | anApi download: self url ] ]