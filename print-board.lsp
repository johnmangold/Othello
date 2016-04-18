(defun print-board ()
	(dotimes (i 8)
		(when (equal i 0)
			(format t "  ")
		)
		
		(when (< i 7)
			(format t "~a " (1+ i))
		)
		
		(when (equal i 7)
			(format t "~a~%" (1+ i))
		)
	)
	
	(dotimes (i (- (length *board*) 10))
		(when (equal i 10)
			(format t "1 ")
		)
		
		(when (and (> i 10) (< i 18))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 10) (equal i 18))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 20) (equal i 21))
			(format t "2 ")
		)
		
		(when (and (> i 20) (< i 28))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 20) (equal i 28))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 30) (equal i 31))
			(format t "3 ")
		)
		
		(when (and (> i 30) (< i 38))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 30) (equal i 38))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 40) (equal i 41))
			(format t "4 ")
		)
		
		(when (and (> i 40) (< i 48))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 40) (equal i 48))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 50) (equal i 51))
			(format t "5 ")
		)
		
		(when (and (> i 50) (< i 58))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 50) (equal i 58))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 60) (equal i 61))
			(format t "6 ")
		)
		
		(when (and (> i 60) (< i 68))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 60) (equal i 68))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 70) (equal i 71))
			(format t "7 ")
		)
		
		(when (and (> i 70) (< i 78))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 70) (equal i 78))
			(format t "~a~%" (nth i *board*))
		)
		
		(when (and (> i 80) (equal i 81))
			(format t "8 ")
		)
		
		(when (and (> i 80) (< i 88))
			(format t "~a " (nth i *board*))
		)
		
		(when (and (> i 80) (equal i 88))
			(format t "~a~%" (nth i *board*))
		)
	)
)