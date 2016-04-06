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
	
	(dotimes (i (length *BOARD*))
		(when (equal i 0)
			(format t "1 ")
		)
		
		(when (< i 7)
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (equal i 7)
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 7) (equal i 8))
			(format t "2 ")
		)
		
		(when (and (> i 7) (< i 15))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 7) (equal i 15))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 15) (equal i 16))
			(format t "3 ")
		)
		
		(when (and (> i 15) (< i 23))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 15) (equal i 23))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 23) (equal i 24))
			(format t "4 ")
		)
		
		(when (and (> i 23) (< i 31))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 23) (equal i 31))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 31) (equal i 32))
			(format t "5 ")
		)
		
		(when (and (> i 31) (< i 39))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 31) (equal i 39))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 39) (equal i 40))
			(format t "6 ")
		)
		
		(when (and (> i 39) (< i 47))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 39) (equal i 47))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 47) (equal i 48))
			(format t "7 ")
		)
		
		(when (and (> i 47) (< i 55))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 47) (equal i 55))
			(format t "~a~%" (nth i *BOARD*))
		)
		
		(when (and (> i 55) (equal i 56))
			(format t "8 ")
		)
		
		(when (and (> i 55) (< i 63))
			(format t "~a " (nth i *BOARD*))
		)
		
		(when (and (> i 55) (equal i 63))
			(format t "~a~%" (nth i *BOARD*))
		)
	)
)