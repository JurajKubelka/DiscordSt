visiting
visitDSSendPackagesItem: aDSSendPackagesItem 
	| zipFile |
	zipFile := DSSerializePackagesWithTonelCommand new
		packages: (aDSSendPackagesItem packages collect: #item);
		execute;
		zipFile.
	messageBuilder fileName: 'tonel.zip' fileReference: zipFile.
	attachmentTypes add: (DSSharedData newTonel fileName: 'tonel.zip'; yourself).