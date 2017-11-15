public
data
	"Get the downloaded data"
	^ data
		ifNil: [ data := DSDownloadCommand new 
				url: self url;
				execute;
				contents ]