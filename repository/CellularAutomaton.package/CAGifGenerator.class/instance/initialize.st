initialization
initialize
	super initialize.
	self 
		stateToColorDict: { 
			#alive -> Color red.
			#dead -> Color black } asDictionary;
		cellExtent: 5@5.