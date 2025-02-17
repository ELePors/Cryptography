Extension { #name : #String }

{ #category : #'*Cryptography-Core' }
String >> destroy [
	1 
		to: self size
		do: 
			[ : n | 
			self 
				at: n
				put: (Character value: 0) ]
]

{ #category : #'*Cryptography-Core' }
String >> padded: directionSymbol to: length with: char [
	^directionSymbol = #left
		ifTrue: [ self padLeftTo: length with: char ]
		ifFalse: [ self padRightTo: length with: char ]
]
