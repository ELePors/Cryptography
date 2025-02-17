Extension { #name : #LargePositiveInteger }

{ #category : #'*Cryptography-Core-core' }
LargePositiveInteger >> destroy [
	"Wipe my bytes so that they cannot possibly be discovered."
	1 to: self size do:
		[ : x |
		self 
			byteAt: x
			put: 0 ]
]
