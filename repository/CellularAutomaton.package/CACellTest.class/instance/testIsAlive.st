tests-testing
testIsAlive
	cell beDead.
	self deny: cell isAlive.
	cell beAlive.
	self assert: cell isAlive