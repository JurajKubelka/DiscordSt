visiting
visitDSSendPackagesItem: aDSSendPackagesItem 
	| zipFile |
	zipFile := DSSerializePackagesWithTonelCommand new
		packages: (aDSSendPackagesItem packages collect: #item);
		execute;
		zipFile.
	messageBuilder fileName: 'tonel.zip' fileReference: zipFile.