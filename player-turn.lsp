(defun player-turn (color)
	(let ((move nil)
		  (row nil)
		  (col nil)
		  (pos nil)
		  (board-copy nil)
		 )
		 
		(print-board)
		(format t "~%Please enter your move: ")
		(setf move (read-line))
		(setf move (string-downcase move))
		(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
		(setf row (parse-integer move :end 1))
		(setf col (parse-integer move :start 2))
		
		(cond
			((or (< row 1) (< col 1) (> row 8) (> col 8))
				;print invalid move and tell ground rules
				(loop do
					(format t "That move is invalid.~%")
					(format t "Row and column cannot be lower than one or higher than 8.~%")
					(format t "~%Please enter your move: ")
					(setf move (read-line))
					(setf move (string-downcase move))
					(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
					(setf row (parse-integer move :end 1))
					(setf col (parse-integer move :start 2))
				while (or (< row 1) (< col 1) (> row 8) (> col 8)))
			)
		)
		
		(setf pos (list row col))
		(setf board-copy (copy-list *board*))
		
		;validate the move and flip pieces as needed
		(valid-move pos color)
		
		;if no moves happened say invalid move and ask for new position
		;do this until a valid move happens or user forfeits turn
		(cond
			((equal *board* board-copy)
				(loop do
					(format t "This move is invalid.~%")
					(format t "Your move must capture at least one opposing piece.~%")
					(format t "Please enter your move: ")
					(setf move (read-line))
					(setf move (string-downcase move))
					(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
					(setf row (parse-integer move :end 1))
					(setf col (parse-integer move :start 2))
					(when (or (< row 1) (< col 1) (> row 8) (> col 8))
						(loop do
							(format t "That move is invalid.~%")
							(format t "Row and column cannot be lower than one or higher than 8.~%")
							(format t "~%Please enter your move: ")
							(setf move (read-line))
							(setf move (string-downcase move))
							(if (or (equal move "f") (equal move "forfeit")) (return-from player-turn nil))
							(setf row (parse-integer move :end 1))
							(setf col (parse-integer move :start 2))
						while (or (< row 1) (< col 1) (> row 8) (> col 8)))
					)
					(setf pos (list row col))
					(valid-move pos color)
				while (equal *board* board-copy))
			)
		)
	)
)