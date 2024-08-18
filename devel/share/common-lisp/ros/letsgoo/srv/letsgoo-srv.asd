
(cl:in-package :asdf)

(defsystem "letsgoo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "string_length" :depends-on ("_package_string_length"))
    (:file "_package_string_length" :depends-on ("_package"))
  ))