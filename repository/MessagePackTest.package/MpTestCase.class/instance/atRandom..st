private
atRandom: integer
	"For portability"
	^ (MpPortableUtil default randomClass new next * integer) truncated + 1