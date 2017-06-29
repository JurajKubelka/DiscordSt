protocol
generate
	"Generate and return a complete FUEL value, that includes link to download data to Pharo."
	url := self url asZnUrl 
		? ('fuel' -> self fuelValue)
		& ('id' -> self generateId)
		& ('data' -> self generateData).
	^ '[Download to Pharo](', url asString, ')'