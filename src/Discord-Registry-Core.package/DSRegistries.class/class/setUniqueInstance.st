private
setUniqueInstance
	"The Singleton registries listen to method changes and updates its items."
	uniqueInstance := self new.
	collector := PragmaCollector filter: [:prg | prg keyword = 'registryOrder:'].
	collector reset.
	collector when: PragmaAdded, PragmaUpdated send: #pragmaChanged: to: self.
	collector when: PragmaRemoved send: #pragmaRemoved: to: self.
	collector collected do: [ :eachPragma | 
		self addRegistryFromPragma: eachPragma ].