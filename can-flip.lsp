(defun can-flip (board position color direction)
	;need a check to make sure it doesn't go off the board.
	;not sure this recursion works.  might run forever.
	;also need to add depth check so you can't place next to your own piece.
	(cond
		((string= color "W")
			;n
			(cond
				((string= direction "N")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (- position 8) color direction))
					)
				)
				
				((string= direction "NW")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (- position 9) color direction))
					)
				)
				
				((string= direction "W")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (1- position) color direction))
					)
				)
				
				((string= direction "SW")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (+ position 7) color direction))
					)
				)
				
				((string= direction "S")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (+ position 8) color direction))
					)
				)
				
				((string= direction "SE")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (+ position 9) color direction))
					)
				)
				
				((string= direction "E")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (1+ position) color direction))
					)
				)
				
				((string= direction "NE")
					(cond
						((string= (nth position board) "-") nil)
						((string= (nth position board) color) t)
						(t (can-flip board (- position 7) color direction))
					)
				)
			)
			
			;add the option if color is "B"
			;not sure it's necessary since the checks we have are:
			;blank space, same color, off board (implement this), or default to check further
		)
	)
)