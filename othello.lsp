#|




|#

;---------------Global variables----------------------
(defvar *BOARD*)
(defvar *PLAYER*)

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
	
	(setf *PLAYER* (string-downcase player))
	
	(when (not (or (string= *PLAYER* "white") (string= *PLAYER* "black")))
	(format t "Usage: clisp othello.lsp [Black or White]~%")
	(format t "You must specify whether you wish to be either White or Black.~%")
	(return)
)
	
	(setf *BOARD* (othello-init))
	(print-board)
)

(when (equal (length *ARGS*) 0)
	(format t "Usage: clisp othello.lsp [Black or White]~%")
	(return)
)

(setf *PLAYER* (string-downcase (first *ARGS*)))
(when (not (or (string= *PLAYER* "white") (string= *PLAYER* "black")))
	(format t "Usage: clisp othello.lsp [Black or White]~%")
	(format t "You must specify whether you wish to be either White or Black.~%")
	(return)
)

(othello *PLAYER*)