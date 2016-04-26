(defun computer-turn (color)
	(let (
			(moves nil)
			(best-score 0)
			(best-choice 0)
			(temp nil)
			(move nil)
		 )
	
		(print-board)
		(setf moves (move-generator (copy-list *board*) color))
		(dolist (pos moves)
			(setf temp (minimax (copy-list *board*) pos 4 color 0))
			(cond
				((> (car temp) best-score)
					(setf best-score (car temp))
					(setf best-choice (car (cadr temp)))
				)
			)
		)
		
		
		(format t "~%The computer's turn was: ~a ~a" (truncate best-choice 10) (mod best-choice 10))
		(valid-move best-choice color)
	)
)