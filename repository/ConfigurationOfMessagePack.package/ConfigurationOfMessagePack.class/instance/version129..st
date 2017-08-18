versions
version129: spec 
	<version: '1.2.9' imports: #('1.2.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #development.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-MasashiUmezawa.40';
			package: 'MessagePackTest' with: 'MessagePackTest-MasashiUmezawa.17' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-MasashiUmezawa.10'].