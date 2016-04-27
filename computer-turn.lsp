(defun computer-turn (color)
	(let (
			(temp nil)
			(tempboard (copy-list *board*))
		 )
	
		(print-board)
		(setf temp (minimax *board* 0 4 color 0))
		(cond
			((null (car (cadr temp)))
				(format t "~%Computer cannot move.~%")
				(return-from computer-turn nil)
			)
		)
		(format t "~%Computer's move is: ~a ~a~%" (truncate (car (cadr temp)) 10) (mod (car (cadr temp)) 10))
		(valid-move (car (cadr temp)) color)
	)
)