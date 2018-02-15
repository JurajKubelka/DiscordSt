private
dataHashString
	| converterClass originalMarkdown |
	converterClass := DSPharoLinkV2Converter.
	originalMarkdown := converterClass urlPrefix, 
		(converterClass defaultUrl ? (converterClass dataQuery -> self data)) asString, 
		converterClass urlSuffix.
	^ originalMarkdown hash asString