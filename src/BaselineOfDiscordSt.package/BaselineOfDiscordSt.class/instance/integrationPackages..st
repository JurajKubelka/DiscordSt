private
integrationPackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-Tools' with: [
				"It depends on GT-Inspector and GT-Playground that are standard tools"
				spec 
					preLoadDoIt: #preLoadTonel:;
					requires: #( #'Discord-Core' #'Discord-Tools-UnicodeMemory' ) ];
			package: #'Discord-Tools-Tests' with: [
				spec requires: #( #'Discord-Tools' #'Discord-Tools-UnicodeMemory-Tests' ) ];

			package: #'Discord-Mock' with: [ 
				spec requires: #( #'Discord-Announcements' #'Discord-Core' ) ];
			
			package: #'Discord-Registry-Core' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Client' #'Discord-Mock' ) ];
			
			package: #'Discord-Registry-Core-Tests' with: [ 
				spec requires: #( #'Discord-Registry-Core' ) ];

			package: #'Discord-Send-Items' with: [ 
				spec requires: #( 
					#'Discord-Registry-Core' #'Discord-Tools' #'Discord-WebhookClient' ) ];

			package: #'Discord-Send-Items-Tests' with: [ 
				spec requires: #( #'Discord-Send-Items' ) ];

			package: #'Discord-Integration-Core' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Registry-Core' 
					#'Discord-Tools-UnicodeMemory' ) ];
			
			package: #'Discord-Integration-Morph' with: [ 
				spec requires: #( 
					#'Discord-Announcements' #'Discord-Mock' #'Discord-Registry-Core' 
					#'Discord-Send-Items' #'Discord-Tools' ) ];
			
			package: #'Discord-Integration-Gif' with: [ 
				spec requires: #( #'Discord-Send-Items' #'Discord-Integration-Morph' ) ];

			package: #'Discord-Integration-Morph-Tests' with: [ 
				spec requires: #( #'Discord-Integration-Morph' ) ];
			
			package: #'Discord-Integration-Playground' with: [ 
				spec
					preLoadDoIt: #preLoadPlayground:;
					requires: #( 
						#'Discord-Core' #'Discord-Integration-Core' 
						#'Discord-Integration-Morph' 
						#'Discord-Integration-Gif'
						#'Discord-Send-Items' #'Discord-Tools' ) ]
	].