(defun computer-turn (color)
	(let (
			(temp nil)
			(tempboard (copy-list *board*))
		 )
	
		(print-board)
		(setf temp (minimax *board* 0 4 color 0))
		(format t "~a~%" temp)
		(format t "Computer's move was: ~a ~a~%" (truncate (car (cadr temp)) 10) (mod (car (cadr temp)) 10))
		(valid-move (car (cadr temp)) color)
	)
)