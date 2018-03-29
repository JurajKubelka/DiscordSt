private
groups: spec
	spec for: #'common' do: [
		spec			
			"Webhook"
			group: #'src-webhook' with: #( #'Discord-WebhookClient' );
			group: #'tests-webhook' with: #( #'Discord-WebhookClient-Tests' );
			group: #'webhook' with: #( #'src-webhook' #'tests-webhook' );
			
			"Bot App and User Client"
			group: #'src-client' with: #( #'Discord-Client' );
			group: #'tests-client' with: #( #'Discord-Client-Tests' );
			group: #'client' with: #( #'src-client' #'tests-client' );
			
			"core"
			group: #'src-core' with: #( #'src-webhook' #'src-client' );
			group: #'tests-core' with: #( #'tests-webhook' #'tests-client' );
			group: #'core' with: #( #'src-core' #'tests-core' );

			"world menu"
			group: #'ui-worldmenu' with: #( #'Discord-WorldMenu' );

			"Downloader"
			group: #'src-downloader' with: #( #'Discord-Downloader' #'Discord-Research' );

			"Integration - UI - Morphic" 
			group: #'integration-rubric' with: #( #'Discord-Integration-Rubric' #'Discord-Research' );
			group: #'integration-calypso' with: #( #'Discord-Integration-Calypso' #'Discord-Research' );
			group: #'integration-playground' with: #( 
				#'Discord-Integration-Playground' #'Discord-Research' );
			group: #'src-ui-morphic' with: [ 
				spec 
					preLoadDoIt: #mayRequireCalypso: ];
			group: #'tests-ui-morphic' with: #( 
				#'src-ui-morphic'
				#'tests-core'
				#'Discord-Tools-Tests'
				#'Discord-Downloader-Tests' #'Discord-Integration-Morph-Tests'
				#'Discord-Send-Items-Tests' #'Discord-Registry-Core-Tests' );
			group: #'ui-morphic' with: #( #'src-ui-morphic' #'tests-ui-morphic' );

			"UI - Brick"
			group: #'src-ui-brick' with: #( #'Discord-UI-Brick' );
			group: #'tests-ui-brick' with: #( #'src-ui-brick' );
			group: #'ui-brick' with: #( #'src-ui-brick' #'tests-ui-brick' );
			
			"light options (no Bloc/Brick)"
			group: #'src-light' with: #( 
				#'src-core' #'src-ui-morphic' #'src-downloader' );
			group: #'tests-light' with: #( 
				#'tests-core' #'tests-ui-morphic' );
			group: #'light' with: #( #'src-light' #'tests-light' );
			
			"full (all packages including Bloc/Brick) options"
			group: #'src-full' with: #( #'src-light' #'src-ui-brick' #'src-downloader' );
			group: #'tests-full' with: #( #'tests-light' );
			group: #'full' with: #( #'src-full' #'tests-full' );
			
			"default"
			group: #'default' with: #( #'light' #'tests' );
			group: #'tests' with: #( #'tests-light' );

			"all - without legacy code"
			group: #'all' with: #( #'full' #'tests-full' )
	].