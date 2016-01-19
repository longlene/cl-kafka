(asdf:defsystem #:cl-kafka
  :description "Describe cl-kafka here"
  :author "yehohanan7@gmail.com"
  :serial t
  :depends-on (#:dexador
               #:uuid
               #:usocket
               #:cl-json
               #:bordeaux-threads)
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "lambda")
                 (:file "primitives")
                 (:file "composite")
                 (:file "messages")
                 (:file "cl-kafka")))))

(asdf:defsystem #:cl-kafka-test
  :description "Tests"
  :author "yehohanan7@gmail.com"
  :serial t
  :depends-on (#:cl-kafka #:prove)
  :defsystem-depends-on (#:prove-asdf)
  :components ((:module "test"
                :components
                ((:test-file "package")
                 (:test-file "cl-kafka-test")
                 (:test-file "run-tests"))))
  :perform (test-op :after (op c)
                    (funcall (intern #. (string :run) :prove) c)))

