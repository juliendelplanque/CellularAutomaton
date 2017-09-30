tests-setting
testAllCellsDead
	grid do: [ :cell |
		self assert: cell isDead ].
	
	grid do: [ :cell | cell beAlive ].
	
	grid do: [ :cell |
		self assert: cell isAlive ].
	
	grid allCellsDead.
	
	grid do: [ :cell |
		self assert: cell isDead ].