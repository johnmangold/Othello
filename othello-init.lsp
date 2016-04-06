(defun othello-init ()
	(let (board)
		(setf board (list - - - - - - - - 
							- - - - - - - -
							- - - - - - - -
							- - - W B - - -
							- - - B W - - -
							- - - - - - - -
							- - - - - - - -
							- - - - - - - -)
		)
		
		(return-from othello-init board)
	)
)