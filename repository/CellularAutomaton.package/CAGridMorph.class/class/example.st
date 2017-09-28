as yet unclassified
example
	| grid gm |
	grid := CAGrid rows: 50 columns: 50.
	1 to: grid rows do: [ :i | 
		1 to: grid columns do:
			[ :j |
				#(true true false false false false false) atRandom
					ifTrue: [ (grid cellAt: i at: j) beAlive ] ] ].
	grid rules: CAClassicRules new.
	gm := CAGridMorph new
				cellsCount: grid rows * grid columns;
				beForGrid: grid;
				openInWindowLabeled: 'The Game Of Life';
				yourself.
	[ 500
		timesRepeat: [ gm beForGrid: (grid := grid nextGrid).
			250 milliSecond wait ] ] forkNamed: 'GOL'