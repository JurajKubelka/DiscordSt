gt-inspector-extension
gtChildren
	^ { self image. self thumbnail. self footer } reject: [ :each | each isNil ]  