tests-accessing
testBeAlive
	cell state: #testing.
	
	cell beAlive.
	self assert: cell state equals: #alive