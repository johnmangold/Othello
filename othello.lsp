#|




|#

;---------------Global variables----------------------
(defvar *BOARD*)

;----------load needed files here---------------------






;------------------functions--------------------------

(defun othello (player)
	(when (null player)
		(format t "Usage from command line: clisp othello.lsp [Black or White]~%")
		(format t "Usage from interpreter: (othello [Black or White])~%")
		(format t "Please call the program appropriately.~%")
		(return)
	)
)