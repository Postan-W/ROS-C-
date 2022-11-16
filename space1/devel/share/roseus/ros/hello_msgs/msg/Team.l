;; Auto-generated. Do not edit!


(when (boundp 'hello_msgs::Team)
  (if (not (find-package "HELLO_MSGS"))
    (make-package "HELLO_MSGS"))
  (shadow 'Team (find-package "HELLO_MSGS")))
(unless (find-package "HELLO_MSGS::TEAM")
  (make-package "HELLO_MSGS::TEAM"))

(in-package "ROS")
;;//! \htmlinclude Team.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hello_msgs::Team
  :super ros::object
  :slots (_name _leader _introduction _location _members ))

(defmethod hello_msgs::Team
  (:init
   (&key
    ((:name __name) "")
    ((:leader __leader) (instance hello_msgs::Student :init))
    ((:introduction __introduction) (instance std_msgs::String :init))
    ((:location __location) (instance geometry_msgs::Pose :init))
    ((:members __members) (let (r) (dotimes (i 0) (push (instance hello_msgs::Student :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _leader __leader)
   (setq _introduction __introduction)
   (setq _location __location)
   (setq _members __members)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:leader
   (&rest __leader)
   (if (keywordp (car __leader))
       (send* _leader __leader)
     (progn
       (if __leader (setq _leader (car __leader)))
       _leader)))
  (:introduction
   (&rest __introduction)
   (if (keywordp (car __introduction))
       (send* _introduction __introduction)
     (progn
       (if __introduction (setq _introduction (car __introduction)))
       _introduction)))
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:members
   (&rest __members)
   (if (keywordp (car __members))
       (send* _members __members)
     (progn
       (if __members (setq _members (car __members)))
       _members)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; hello_msgs/Student _leader
    (send _leader :serialization-length)
    ;; std_msgs/String _introduction
    (send _introduction :serialization-length)
    ;; geometry_msgs/Pose _location
    (send _location :serialization-length)
    ;; hello_msgs/Student[] _members
    (apply #'+ (send-all _members :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; hello_msgs/Student _leader
       (send _leader :serialize s)
     ;; std_msgs/String _introduction
       (send _introduction :serialize s)
     ;; geometry_msgs/Pose _location
       (send _location :serialize s)
     ;; hello_msgs/Student[] _members
     (write-long (length _members) s)
     (dolist (elem _members)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; hello_msgs/Student _leader
     (send _leader :deserialize buf ptr-) (incf ptr- (send _leader :serialization-length))
   ;; std_msgs/String _introduction
     (send _introduction :deserialize buf ptr-) (incf ptr- (send _introduction :serialization-length))
   ;; geometry_msgs/Pose _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; hello_msgs/Student[] _members
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _members (let (r) (dotimes (i n) (push (instance hello_msgs::Student :init) r)) r))
     (dolist (elem- _members)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hello_msgs::Team :md5sum-) "013e89f64a6eee989d320d356cdbd74c")
(setf (get hello_msgs::Team :datatype-) "hello_msgs/Team")
(setf (get hello_msgs::Team :definition-)
      "string name
Student leader
std_msgs/String introduction
geometry_msgs/Pose location
Student[] members
================================================================================
MSG: hello_msgs/Student
string name
int32 age
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :hello_msgs/Team "013e89f64a6eee989d320d356cdbd74c")


