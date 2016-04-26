#|
                  ***** print-board.lsp *****

Prints the othello board.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (print-board)

Returns:  none
|#
(defun print-board ()
	; loop through 8 times to print the top row of numbers
	(dotimes (i 8)
		; print s space first so everything is formatted
		(when (equal i 0)
			(format t "  ")
		)
		; print the numbers
		(when (< i 7)
			(format t "~a " (1+ i))
		)
		; print the final number
		(when (equal i 7)
			(format t "~a~%" (1+ i))
		)
	)
	; loop through the board
	(dotimes (i (- (length *board*) 10))
		; if its the start of the first row print 1
		(when (equal i 10)
			(format t "1 ")
		)
		; print the values of row 1 of the board
		(when (and (> i 10) (< i 18))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 10) (equal i 18))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the second row print 2
		(when (and (> i 20) (equal i 21))
			(format t "2 ")
		)
		; print the values of row 2 of the board
		(when (and (> i 20) (< i 28))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 20) (equal i 28))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the third row print 3
		(when (and (> i 30) (equal i 31))
			(format t "3 ")
		)
		; print the contents of the 3rd row
		(when (and (> i 30) (< i 38))
			(format t "~a " (nth i *board*))
		)
		; print a new linw
		(when (and (> i 30) (equal i 38))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the fourth row print 4
		(when (and (> i 40) (equal i 41))
			(format t "4 ")
		)
		; print the contents of the 4th row
		(when (and (> i 40) (< i 48))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 40) (equal i 48))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the fifth row print 5
		(when (and (> i 50) (equal i 51))
			(format t "5 ")
		)
		; print the contents of the 5th row
		(when (and (> i 50) (< i 58))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 50) (equal i 58))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the sixth row print 6
		(when (and (> i 60) (equal i 61))
			(format t "6 ")
		)
		; print the contents of the sixth row
		(when (and (> i 60) (< i 68))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 60) (equal i 68))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the seventh row print 7
		(when (and (> i 70) (equal i 71))
			(format t "7 ")
		)
		; print the contents of the 7th row
		(when (and (> i 70) (< i 78))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 70) (equal i 78))
			(format t "~a~%" (nth i *board*))
		)
		; if its the start of the eight row print 8
		(when (and (> i 80) (equal i 81))
			(format t "8 ")
		)
		; print the contents of the 8th row
		(when (and (> i 80) (< i 88))
			(format t "~a " (nth i *board*))
		)
		; print a new line
		(when (and (> i 80) (equal i 88))
			(format t "~a~%" (nth i *board*))
		)
	)
)