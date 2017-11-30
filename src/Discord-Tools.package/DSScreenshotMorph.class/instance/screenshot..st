accessing
screenshot: aMorph
	self assert: [ aMorph isMorph ] description: 'A Morph is expected.'.
	screenshot := aMorph.
	self changed: #name with: aMorph.