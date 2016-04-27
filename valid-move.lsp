#|
                  ***** valid-move.lsp *****

Checks if a move is valid and flips the pieces.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (valid-move position color)
		   where position is the position that the player wishes to place their piece
           where color is the color of the player who is about to place a piece

Returns:  (successors)
           where successors is a list of current-spot values of where
		   the given player could place a piece
|#
(defun valid-move (position color)
	; change the color from word form to letter form
	(cond
		; if the color is white set color to W
		((string= color "white")
			(setf color "W")
		)
		; if color is black set color to B
		((string= color "black")
			(setf color "B")
		)
	)
	
	(let ((spot position)
		   (copyboard (copy-list *board*)))
		; check west
		(cond
			((string= color "W")
				(when (string= (nth (1- spot) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "W" 1) (flip-pieces copyboard spot color "W" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (1- spot) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "W" 1) (flip-pieces copyboard spot color "W" 1))
				)
			)
		)
		
		; check northwest
		(cond
			((string= color "W")
				(when (string= (nth (- spot 11) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "NW" 1) (flip-pieces copyboard spot color "NW" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (- spot 11) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "NW" 1) (flip-pieces copyboard spot color "NW" 1))
				)
			)
		)
		
		; check north
		(cond
			((string= color "W")
				(when (string= (nth (- spot 10) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "N" 1) (flip-pieces copyboard spot color "N" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (- spot 10) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "N" 1) (flip-pieces copyboard spot color "N" 1))
				)
			)
		)
		
		; check north-east
		(cond
			((string= color "W")
				(when (string= (nth (- spot 9) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "NE" 1) (flip-pieces copyboard spot color "NE" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (- spot 9) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "NE" 1) (flip-pieces copyboard spot color "NE" 1))
				)
			)
		)
		
		; check east
		(cond
			((string= color "W")
				(when (string= (nth (1+ spot) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "E" 1) (flip-pieces copyboard spot color "E" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (1+ spot) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "E" 1) (flip-pieces copyboard spot color "E" 1))
				)
			)
		)
		
		; check south-east
		(cond
			((string= color "W")
				(when (string= (nth (+ spot 11) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "SE" 1) (flip-pieces copyboard spot color "SE" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (+ spot 11) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "SE" 1) (flip-pieces copyboard spot color "SE" 1))
				)
			)
		)
		
		; check south
		(cond
			((string= color "W")
				(when (string= (nth (+ spot 10) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "S" 1) (flip-pieces copyboard spot color "S" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (+ spot 10) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "S" 1) (flip-pieces copyboard spot color "S" 1))
				)
			)
		)
		
		; check south-west
		(cond
			((string= color "W")
				(when (string= (nth (+ spot 9) *board*) "B")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "SW" 1) (flip-pieces copyboard spot color "SW" 1))
				)
			)
			
			((string= color "B")
				(when (string= (nth (+ spot 9) *board*) "W")
					; if flips can be made flip pieces
					(if (can-flip copyboard spot color "SW" 1) (flip-pieces copyboard spot color "SW" 1))
				)
			)
		)
	)
)