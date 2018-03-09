private
brickPackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-UI-Brick' with: [ 
				spec requires: #( #'Brick' #'Discord-Core' ) ]
	].