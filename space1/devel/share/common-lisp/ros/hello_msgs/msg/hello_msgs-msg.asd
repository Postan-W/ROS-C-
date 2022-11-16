
(cl:in-package :asdf)

(defsystem "hello_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Student" :depends-on ("_package_Student"))
    (:file "_package_Student" :depends-on ("_package"))
    (:file "Team" :depends-on ("_package_Team"))
    (:file "_package_Team" :depends-on ("_package"))
  ))