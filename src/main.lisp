(defparameter +header+
  (format nil "~{~A~^ | ~}" (make-list 4 :initial-element "Dec  Hex  Oct  C") ))

(defparameter +table-rows+
  (loop for i from 0 to 31
        collect (list i (+ i 32) (+ i 64) (+ i 96))))

(defun format-display-char (x)
  (if (or (> 32 x) (= x 127))
      #\SPACE
      (code-char x)))

(defun format-block (x)
  (format nil "~3d ~4x ~4o  ~c" x x x (format-display-char x)))

(defun create-row (blocks)
  (format nil "~{~A~^ | ~}" (map 'list #'format-block blocks)))

(defun ascii-table ()
  (format nil "~A~%~{~A~%~}" +header+ (map 'list #'create-row +table-rows+)))

(defun main ()
  (format t "~A~%" (ascii-table)))
