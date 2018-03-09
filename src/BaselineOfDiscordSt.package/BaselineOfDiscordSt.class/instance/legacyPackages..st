private
legacyPackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-Tools-UnicodeMemory';
			package: #'Discord-Tools-UnicodeMemory-Tests' with: [ 
				spec
					requires: #( #'Discord-Tools-UnicodeMemory' ) ];

			package: #'Discord-Extension-Core' with: [
				spec 
					requires: #( #'Discord-Client' #'Discord-Tools' ) ];
			package: #'Discord-Extension-Core-Tests' with: [
				spec requires: #( #'Discord-Extension-Core' #'Discord-Core-Tests' #'Discord-Tools-Tests' ). ];
			package: #'Discord-Extension-UI' with: [
				spec requires: #( #'Discord-Extension-Core' ). ];
			package: #'Discord-Extension-UI-Tests' with: [
				spec requires: #( #'Discord-Extension-UI' ). ];

			package: #'Discord-Extension-Expertise' with: [
				spec requires: #( #'NeoJSON' ). ];
			package: #'Discord-Extension-Expertise-Tests' with: [
				spec requires: #( #'Discord-Extension-Expertise' ). ];
			
			package: #'Discord-Examples' with: [
				spec requires: #( 
					#'Discord-WebhookClient' #'Discord-Extension-Expertise' 
					#'Discord-Client' #'Discord-Announcements' "GT-Inspector" ). ]

	].