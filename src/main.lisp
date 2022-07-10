(defun ascii-header ()
  (format nil "~{~A~^ | ~}" (make-list 4 :initial-element "Dec  Hex  Oct  C") ))

(defun format-char (c)
  (if (or (> 32 c) (= c 127))
      #\space
      (code-char c)))

(defun format-block (n)
  (format nil "~3d ~4x ~4o  ~c" n n n (format-char n)))

(defun ascii-row (blocks)
  (format nil "~{~A~^ | ~}" (map 'list #'format-block blocks)))

(defun ascii-rows ()
  (let ((rows (loop for i from 0 to 31 collect (list i (+ i 32) (+ i 64) (+ i 96)))))
    (map 'list #'ascii-row rows)))

(defun ascii-table ()
  (format nil "~A~%~{~A~%~}" (ascii-header) (ascii-rows)))

(defun main ()
  (format t "~A" (ascii-table)))
