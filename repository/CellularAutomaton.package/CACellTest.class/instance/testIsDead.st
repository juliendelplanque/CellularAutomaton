tests-testing
testIsDead
	cell beAlive.
	self deny: cell isDead.
	cell beDead.
	self assert: cell isDead