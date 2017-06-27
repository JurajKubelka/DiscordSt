private
populateMenuFor: aDSMessage in: aMenuMorph 
	"Dynamic menu"
	| menuGroup |
	menuGroup := MenuGroupModel new.
	aDSMessage isFuelObject ifTrue: [ 
		menuGroup addMenuItem: (MenuItemModel new
			name: 'Inspect';
			action: [ aDSMessage materializeObjectInAWrapper inspect ];
			yourself) ].
	aDSMessage isFuelStack ifTrue: [ 
		menuGroup addMenuItem: (MenuItemModel new
			name: 'Debug';
			action: [ aDSMessage openInDebugger ];
			yourself) ].
	menuGroup addMenuItem: (MenuItemModel new
			name: 'Display relevat messages';
			action: [ self displayRelevantMessages: aDSMessage ];
			yourself).
	menuGroup buildWithSpec do: [ :eachMenuItem |
		aMenuMorph addMenuItem: eachMenuItem ].
	^ aMenuMorph