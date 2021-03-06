versions
version130: spec 
	<version: '1.3.0' imports: #('1.3.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #development.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-MasashiUmezawa.41';
			package: 'MessagePackTest' with: 'MessagePackTest-MasashiUmezawa.17' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-MasashiUmezawa.12'].
	spec for: #pharo do: [
		spec 
			package: 'MessagePack-Pharo-Core' with: 'MessagePack-Pharo-Core-MasashiUmezawa.1'].