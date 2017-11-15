public
data
	"Get the downloaded data"
	^ data ifNil: [ data := self restApi ifNotNil: [ :anApi | anApi download: self url ] ]