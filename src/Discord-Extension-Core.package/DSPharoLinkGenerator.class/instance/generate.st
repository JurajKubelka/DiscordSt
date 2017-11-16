protocol
generate
	"Generate and return a complete FUEL value, that includes link to download data to Pharo."
	url := self url asZnUrl 
		? (self class fuelQuery -> self fuelValue)
		& (self class idQuery -> self generateId)
		& (self class dataQuery -> self generateData).
	^ self class urlPrefix, url asString, self class urlSuffix