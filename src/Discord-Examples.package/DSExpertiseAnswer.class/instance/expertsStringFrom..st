accessing - computed
expertsStringFrom: expertisePackages 
	^ String streamContents: [ :aStream | 
		aStream << 'You could ask the following developers: ' << String cr << String cr.
		expertisePackages 
			do: [ :eachPackage | 
				aStream << ' `' << eachPackage package << '`' <<String cr.
				eachPackage expertise 
					do: [ :eachExpert | 
						aStream 
							<< '    - ' << eachExpert developer 
							<< ' ' << eachExpert coeficient asInteger asString << '%' ]
					separatedBy: [ aStream << String cr ] ]
			separatedBy: [ aStream << String cr ] ] 