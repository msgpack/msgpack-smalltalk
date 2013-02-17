*MessagePack-Core-converting
asMpMap 
	| dic |
	dic := Dictionary new: self size.
	self keysAndValuesDo: [:k :v | dic at: k put: v].
	^dic