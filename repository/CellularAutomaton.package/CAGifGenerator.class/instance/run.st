running
run
	| writer |
	writer := GIFReadWriter on: (FileStream forceNewFileNamed: self file fullName).
	writer loopCount: 0.
	writer delay: self delayBetweenTwoIterations asMilliSeconds / 10. "Requires hundredths of second."
	(1 to: self iterationsCount) do: [ :i |
		writer nextPutImage: (self generateFormFromGrid: self grid).
		grid := grid nextGrid ] displayingProgress: 'Generating GIF.'.
	writer close