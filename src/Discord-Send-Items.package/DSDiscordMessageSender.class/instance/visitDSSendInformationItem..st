as yet unclassified
visitDSSendInformationItem: aDSSendInformationItem 
	aDSSendInformationItem infos do: [ :eachInfo | 
		messageBuilder embedInlineFieldName: eachInfo name value: eachInfo value ].