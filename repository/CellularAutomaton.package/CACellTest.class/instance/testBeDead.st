tests-accessing
testBeDead
	cell state: #testing.
	
	cell beDead.
	self assert: cell state equals: #dead