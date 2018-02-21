actions
preLoadZincComponents: aSpecLoader
	"Load a patch to be able to extend GT-Playground with actions."
	Gofer it
		smalltalkhubUser: 'SvenVanCaekenberghe' project: 'ZincHTTPComponents';
		configurationOf: 'ZincHTTPComponents';
		loadBleedingEdge.