; Auto-generated. Do not edit!


(cl:in-package hello_msgs-msg)


;//! \htmlinclude Team.msg.html

(cl:defclass <Team> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (leader
    :reader leader
    :initarg :leader
    :type hello_msgs-msg:Student
    :initform (cl:make-instance 'hello_msgs-msg:Student))
   (introduction
    :reader introduction
    :initarg :introduction
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (members
    :reader members
    :initarg :members
    :type (cl:vector hello_msgs-msg:Student)
   :initform (cl:make-array 0 :element-type 'hello_msgs-msg:Student :initial-element (cl:make-instance 'hello_msgs-msg:Student))))
)

(cl:defclass Team (<Team>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Team>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Team)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_msgs-msg:<Team> is deprecated: use hello_msgs-msg:Team instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_msgs-msg:name-val is deprecated.  Use hello_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'leader-val :lambda-list '(m))
(cl:defmethod leader-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_msgs-msg:leader-val is deprecated.  Use hello_msgs-msg:leader instead.")
  (leader m))

(cl:ensure-generic-function 'introduction-val :lambda-list '(m))
(cl:defmethod introduction-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_msgs-msg:introduction-val is deprecated.  Use hello_msgs-msg:introduction instead.")
  (introduction m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_msgs-msg:location-val is deprecated.  Use hello_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'members-val :lambda-list '(m))
(cl:defmethod members-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_msgs-msg:members-val is deprecated.  Use hello_msgs-msg:members instead.")
  (members m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Team>) ostream)
  "Serializes a message object of type '<Team>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leader) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'introduction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'members))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'members))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Team>) istream)
  "Deserializes a message object of type '<Team>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leader) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'introduction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'members) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'members)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hello_msgs-msg:Student))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Team>)))
  "Returns string type for a message object of type '<Team>"
  "hello_msgs/Team")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Team)))
  "Returns string type for a message object of type 'Team"
  "hello_msgs/Team")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Team>)))
  "Returns md5sum for a message object of type '<Team>"
  "013e89f64a6eee989d320d356cdbd74c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Team)))
  "Returns md5sum for a message object of type 'Team"
  "013e89f64a6eee989d320d356cdbd74c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Team>)))
  "Returns full string definition for message of type '<Team>"
  (cl:format cl:nil "string name~%Student leader~%std_msgs/String introduction~%geometry_msgs/Pose location~%Student[] members~%================================================================================~%MSG: hello_msgs/Student~%string name~%int32 age~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Team)))
  "Returns full string definition for message of type 'Team"
  (cl:format cl:nil "string name~%Student leader~%std_msgs/String introduction~%geometry_msgs/Pose location~%Student[] members~%================================================================================~%MSG: hello_msgs/Student~%string name~%int32 age~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Team>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leader))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'introduction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'members) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Team>))
  "Converts a ROS message object to a list"
  (cl:list 'Team
    (cl:cons ':name (name msg))
    (cl:cons ':leader (leader msg))
    (cl:cons ':introduction (introduction msg))
    (cl:cons ':location (location msg))
    (cl:cons ':members (members msg))
))
