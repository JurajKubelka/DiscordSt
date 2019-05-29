private
downloaderPackages: spec
	spec for: #'common' do: [
		spec			
			package: #'Discord-Downloader' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Integration-Core' 
					#'Discord-Send-Items' #'Discord-Integration-Playground' ) ];
			
			package: #'Discord-Downloader-Tests' with: [ 
				spec requires: #( #'Discord-Downloader' #'Discord-Core-Tests' ) ]
	].