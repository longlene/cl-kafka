(in-package #:cl-kafka-test)

(let ((connection (connect "localhost" 9092)))
  (is (length (topic-names connection)) 2)
  (is (partition-count connection "test") 2))




