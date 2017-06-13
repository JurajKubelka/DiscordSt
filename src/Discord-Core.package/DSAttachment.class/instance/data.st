public
data
	"Get the downloaded data"
	^ data ifNil: [ data := self api download: self proxyUrl ]