private - adding
addWebhookMorph
	| morph |
	morph := self newWebhookMorph.
	self addMorphBack: morph.
	^ morph