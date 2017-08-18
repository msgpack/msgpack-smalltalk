testing
testPackUnpackTimestamp64
	"self debug: #testPackUnpackTimestamp64"
	| packed unpacked secondsAndNanos |
	packed := (self unixEpochTimestamp + 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 0.
	self assert: secondsAndNanos last = 10.
	
	packed := self max32Timestamp messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 32).
	self assert: secondsAndNanos last = 0.
	
	packed := (self max32Timestamp - 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = ((1 << 32) -1).
	self assert: secondsAndNanos last = 999999990.
	
	packed := (self max32Timestamp + 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 32).
	self assert: secondsAndNanos last = 10.
	
	packed := (self max32Timestamp + 90 seconds + 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = ((1 << 32) + 90).
	self assert: secondsAndNanos last = 10.
	
	packed := (self max64Timestamp - 1 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = ((1 << 34) - 1).
	self assert: secondsAndNanos last = 999999999.
	
	