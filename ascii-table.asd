(defsystem "ascii-table"
  :version "0.1.0"
  :author "Rune Andreas Nielsen"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Displays an ASCII table."
  :build-operation "program-op"
  :build-pathname "dist/ascii-table"
  :entry-point "ascii-table:main")
