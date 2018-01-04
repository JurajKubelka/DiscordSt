announcement handling
pragmaChanged: aPragmaAnnouncement
	"New Pragma added or updated. We should updated corresponding registry."
	self pragmaRemoved: aPragmaAnnouncement.
	self addRegistryFromPragma: aPragmaAnnouncement pragma.