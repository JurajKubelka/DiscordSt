as yet unclassified
openTonelArchive
	| memory repository |
	memory := FileSystem memory.
	ZipArchive new 
		readFrom: self data readStream;
		extractAllTo: memory root.
	repository := TonelRepository new directory: memory root.
	repository morphicOpen.