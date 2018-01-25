converting
pathFromString: aString
	| normalized |
	"Normalize both / to \ to the current one (so it works both on Unix and Windows)"
	normalized := aString copy
		replaceAll: WindowsStore delimiter with: self delimiter;
		replaceAll: UnixStore delimiter with: self delimiter.
	^ super pathFromString: normalized