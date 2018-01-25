visiting
visitDSSendPackagesItem: aDSSendPackagesItem 
	| zipFile selectedPackages |
	selectedPackages := aDSSendPackagesItem packages 
		select: #isSelected thenCollect: #item.
	selectedPackages ifEmpty: [ ^ self ].
	zipFile := DSSerializePackagesWithTonelCommand new
		packages: selectedPackages;
		execute;
		zipFile.
	messageBuilder fileName: 'tonel.zip' fileReference: zipFile.
	attachmentTypes add: (DSSharedData newTonel fileName: 'tonel.zip'; yourself).