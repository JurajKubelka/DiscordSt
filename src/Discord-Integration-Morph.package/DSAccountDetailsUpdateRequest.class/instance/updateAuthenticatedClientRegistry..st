as yet unclassified
updateAuthenticatedClientRegistry: aDSClientRegistry 
	| clientMorph |
	clientMorph := self morph ensureAuthenticatedClientMorph.
	clientMorph registry: aDSClientRegistry.