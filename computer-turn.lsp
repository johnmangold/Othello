(defun computer-turn (color)
	(let (
			(temp nil)
			(tempboard (copy-list board))
		 )
	
		(print-board)
		(setf temp (minimax tempboard 0 2 color 0))
		(format t "~a~%" temp)
		(valid-move (car (cadr temp)) color)
	)
)