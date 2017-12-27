execute
execute
	self packages: DSPackages new.
	self classes do: [ :eachClass | | package |
		package := eachClass package.
		self packages 
			detect: [ :eachPackage | eachPackage item = package ]
			ifFound: [ :aPackage | 
				aPackage addClassSelection: (DSClassSelection new
					item: eachClass;
					isSelected: true;
					yourself) ]
			ifNone: [ | selection | 
				selection := DSPackageSelection new 
					item: package;
					"isSelected: true;"
					addClassSelection: (DSClassSelection new
						item: eachClass;
						isSelected: true;
						yourself);
					yourself.
				self packages addLast: selection ] ].
	packages sort: [ :a :b | a item name < b item name ].
	packages do: [ :eachPackage | 
		eachPackage classes sort: [ :a :b | a item name < b item name ] ].