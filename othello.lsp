#|




|#

;---------------Global variables----------------------

;----------load needed files here---------------------
(load 'othello-init)
(load 'print-board)




;------------------functions--------------------------

(defun othello (player)
	(when (null player)
		(format t "Usage from interpreter: (othello [Black or White])~%")
		(format t "Please call the program appropriately.~%")
		(return)
	)
	
	(when (not (or (string= player "white") (string= player "black")))
		(format t "Usage: clisp othello.lsp [Black or White]~%")
		(format t "You must specify whether you wish to be either White or Black.~%")
		(return)
	)
		
	(let ((board (othello-init)))
		(print-board board)
	)
)

(when (equal (length *ARGS*) 0)
	(format t "Usage: clisp othello.lsp [Black or White]~%")
	(return)
)

(let ((player (string-downcase (first *ARGS*))))
	(when (not (or (string= player "white") (string= player "black")))
		(format t "Usage: clisp othello.lsp [Black or White]~%")
		(format t "You must specify whether you wish to be either White or Black.~%")
		(return)
	)

	(othello player)
)