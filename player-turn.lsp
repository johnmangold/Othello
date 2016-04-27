#|
                  ***** player-turn.lsp *****

Handle the players turn.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (player-turn color)
          where color is the color of the player

Returns:  none

Functions Called:	(print-board)
					 prints the current position of the board
					 
					(valid-move pos color)
					 checks to make sure that the move given is valid
|#
(defun player-turn (color)
	(let ((move nil)		; set move to nil
		  (row nil)			; set row to nil
		  (col nil)			; set col to nil
		  (pos nil)			; set pos to nil
		  (board-copy nil)	; set board-copy to nil
		 )
		 ; print the board and ask for the players move
		(print-board)
		(format t "~%Please enter your move [row col]: ")
		; read in the move and downcase it
		(setf move (read-line))
		(setf move (string-downcase move))
		; check if the player wants to forfeit their move
		(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
		; get the row and column values
		(setf row (parse-integer move :end 1))
		(setf col (parse-integer move :start 2))
		; make sure the values are between 1 and 8
		(cond
			((or (< row 1) (< col 1) (> row 8) (> col 8))
				;print invalid move and tell ground rules
				(loop do
					(format t "That move is invalid.~%")
					(format t "Row and column cannot be lower than one or higher than 8.~%")
					; ask for a new move and read it in
					(format t "~%Please enter your move [row col]: ")
					(setf move (read-line))
					(setf move (string-downcase move))
					; check if player wants to forfeit their move
					(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
					; get the row and column values
					(setf row (parse-integer move :end 1))
					(setf col (parse-integer move :start 2))
				while (or (< row 1) (< col 1) (> row 8) (> col 8)))
			)
		)
		; set the position and copy the board
		(setf pos (list row col))
		(setf board-copy (copy-list *board*))
		
		;validate the move and flip pieces as needed
		(valid-move (+ (* (car pos) 10) (cadr pos)) color)
		
		;if no moves happened say invalid move and ask for new position
		;do this until a valid move happens or user forfeits turn
		(cond
			((equal *board* board-copy)
				(loop do
					; print information about moves
					(format t "This move is invalid.~%")
					(format t "Your move must capture at least one opposing piece.~%")
					; ask for a new move and read it in and downcase it
					(format t "Please enter your move: ")
					(setf move (read-line))
					(setf move (string-downcase move))
					; check if the player wants to forfeit
					(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
					; set the row and column values
					(setf row (parse-integer move :end 1))
					(setf col (parse-integer move :start 2))
					; check to make sure that the row and columns are on the board
					(when (or (< row 1) (< col 1) (> row 8) (> col 8))
						(loop do
							; print information about invalid move
							(format t "That move is invalid.~%")
							(format t "Row and column cannot be lower than one or higher than 8.~%")
							; ask for a new move, read it in and downcase it
							
							(format t "~%Please enter your move [row col]: ")
							(setf move (read-line))
							(setf move (string-downcase move))
							; check if the player wants to forfeit their move
							(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
							; set the row and column values
							(setf row (parse-integer move :end 1))
							(setf col (parse-integer move :start 2))
						while (or (< row 1) (< col 1) (> row 8) (> col 8)))
					)
					; set position and make sure move is valid
					(setf pos (list row col))
					(valid-move (+ (* (car pos) 10) (cadr pos)) color)
				while (equal *board* board-copy))
			)
		)
	)
)