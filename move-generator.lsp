#|
                  ***** move-generator.lsp *****

Generalized recursive minimax routine.

Author: Cassidy Vollmer and John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (move-generator board position player)
		   where board is the current board
		   where position is the position that the player wishes to place their piece
           where player is the player about to place a piece

Returns:  (successors)
           where successors is a list of current-spot values of where
		   the given player could place a piece
|#
(defun move-generator (board player)
	(let ( (successors nil)	; set the successors to nil
			(current-spot 11)	;set the current-spot to the first available spot int game board
		 )
		; loop through all the spots on the board
		(dolist (i board)
			; if the current spot is a - and you can flip pieces to the east
			(cond ((and (string= i "-") (can-flip current-spot player "E" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			;; if the current spot is a - and you can flip pieces to the west
			(cond ((and (string= i "-") (can-flip current-spot player "W" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the north
			(cond ((and (string= i "-") (can-flip current-spot player "N" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the south
			(cond ((and (string= i "-") (can-flip current-spot player "S" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the south-east
			(cond ((and (string= i "-") (can-flip current-spot player "SE" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the south-west
			(cond ((and (string= i "-") (can-flip current-spot player "SW" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the north-west
			(cond ((and (string= i "-") (can-flip current-spot player "NW" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; if the current spot is a - and you can flip pieces to the north-east
			(cond ((and (string= i "-") (can-flip current-spot player "NE" 1))
				; if this is a valid move add current-spot to list of successors
				(setf successors (cons current-spot successors))
				)
			)
			; increment the counter
			(incf current-spot)
		)
		; return from the function
		(return-from move-generator successors)
	)
)
