instance creation
rows: rows columns: columns
	^ self new
		matrix: (Matrix rows: rows columns: columns);
		allCellsDead;
		yourself