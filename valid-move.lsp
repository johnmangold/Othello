(defun valid-move (position color)
	;this works.  also, can-flip works.
	;need to write flip pieces and call if can-flip returns true.
	(let ((spot (+ (* (car position) 10) (cadr position))))
		;check left
		(cond
			((string= color "white")
				(when (string= (nth (1- spot) *board*) "B")
					;direction west
					;check for flipability
					(if (can-flip spot color "W" 1) (flip-pieces spot color "W" 1))
					;flip pieces 
				)
			)
			
			((string= color "black")
				(when (string= (nth (1- spot) *board*) "W")
					;direction west
					;check for flipability
					(if (can-flip spot color "W" 1) (flip-pieces spot color "W" 1))
					;flip pieces
				)
			)
		)
		
		;check diagonal up left
		(cond
			((string= color "white")
				(when (string= (nth (- spot 11) *board*) "B")
					;direction northwest
					;check for flipability
					(if (can-flip spot color "NW" 1) (flip-pieces spot color "NW" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 11) *board*) "W")
					;direction northwest
					;check for flipability
					(if (can-flip spot color "NW" 1) (flip-pieces spot color "NW" 1))
					;flip pieces
				)
			)
		)
		
		;check up
		(cond
			((string= color "white")
				(when (string= (nth (- spot 10) *board*) "B")
					;north
					;check for flipability
					(if (can-flip spot color "N" 1) (flip-pieces spot color "N" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 10) *board*) "W")
					;north
					;check for flipability
					(if (can-flip spot color "N" 1) (flip-pieces spot color "N" 1))
					;flip pieces
				)
			)
		)
		
		;check diagonal up right
		(cond
			((string= color "white")
				(when (string= (nth (- spot 9) *board*) "B")
					;northeast
					;check for flipability
					(if (can-flip spot color "NE" 1) (flip-pieces spot color "NE" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 9) *board*) "W")
					;northeast
					;check for flipability
					(if (can-flip spot color "NE" 1) (flip-pieces spot color "NE" 1))
					;flip pieces
				)
			)
		)
		
		;check right
		(cond
			((string= color "white")
				(when (string= (nth (1+ spot) *board*) "B")
					;east
					;check for flipability
					(if (can-flip spot color "E" 1) (flip-pieces spot color "E" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (1+ spot) *board*) "W")
					;east
					;check for flipability
					(if (can-flip spot color "E" 1) (flip-pieces spot color "E" 1))
					;flip pieces
				)
			)
		)
		
		;check diagonal down right
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 11) *board*) "B")
					;southeast
					;check for flipability
					(if (can-flip spot color "SE" 1) (flip-pieces spot color "SE" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 11) *board*) "W")
					;southeast
					;check for flipability
					(if (can-flip spot color "SE" 1) (flip-pieces spot color "SE" 1))
					;flip pieces
				)
			)
		)
		
		;check down
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 10) *board*) "B")
					;south
					;check for flipability
					(if (can-flip spot color "S" 1) (flip-pieces spot color "S" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 10) *board*) "W")
					;south
					;check for flipability
					(if (can-flip spot color "S" 1) (flip-pieces spot color "S" 1))
					;flip pieces
				)
			)
		)
		
		;check diagonal down left
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 9) *board*) "B")
					;southwest
					;check for flipability
					(if (can-flip spot color "SW" 1) (flip-pieces spot color "SW" 1))
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 9) *board*) "W")
					;southwest
					;check for flipability
					(if (can-flip spot color "SW" 1) (flip-pieces spot color "SW" 1))
					;flip pieces
				)
			)
		)
	)
)