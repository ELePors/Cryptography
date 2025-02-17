Extension { #name : #SocketStream }

{ #category : #'*Cryptography-Core-Core' }
SocketStream >> peekInBufferForAll: aString [
	"Answer whether or not the inbuffer in the receiver
	contains aString. If a match is made answer true. 
	We use findString:startingAt: to avoid copying."
	self receiveAvailableData.
	^(inBuffer findString: aString) > 0
		
]
