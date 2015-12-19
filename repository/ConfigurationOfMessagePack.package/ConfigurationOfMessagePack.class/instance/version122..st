versions
version122: spec 
	<version: '1.2.2' imports: #('1.2.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #development.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-MasashiUmezawa.34';
			package: 'MessagePackTest' with: 'MessagePackTest-MasashiUmezawa.12' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-MU.5'].