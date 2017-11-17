menus
menuFor: aBuilder 
	| model method examples |
	model := aBuilder model ifNil: [ ^ self ].
	method := model selectedMethod ifNil: [ ^ self ].
	examples := method gtExamples reject: [ :each | each isNil ].
	examples ifEmpty: [ ^ self ].
	(aBuilder item: #'Share example on Discord')
		parent: #gte;
		keyText: 'e, s' if: Nautilus useOldStyleKeys not;
		action: [ self share: examples ];
		iconName: #glamorousExample.