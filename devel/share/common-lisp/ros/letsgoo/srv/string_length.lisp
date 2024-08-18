; Auto-generated. Do not edit!


(cl:in-package letsgoo-srv)


;//! \htmlinclude string_length-request.msg.html

(cl:defclass <string_length-request> (roslisp-msg-protocol:ros-message)
  ((chuoi
    :reader chuoi
    :initarg :chuoi
    :type cl:string
    :initform ""))
)

(cl:defclass string_length-request (<string_length-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <string_length-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'string_length-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name letsgoo-srv:<string_length-request> is deprecated: use letsgoo-srv:string_length-request instead.")))

(cl:ensure-generic-function 'chuoi-val :lambda-list '(m))
(cl:defmethod chuoi-val ((m <string_length-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgoo-srv:chuoi-val is deprecated.  Use letsgoo-srv:chuoi instead.")
  (chuoi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <string_length-request>) ostream)
  "Serializes a message object of type '<string_length-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chuoi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chuoi))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <string_length-request>) istream)
  "Deserializes a message object of type '<string_length-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chuoi) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chuoi) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<string_length-request>)))
  "Returns string type for a service object of type '<string_length-request>"
  "letsgoo/string_lengthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_length-request)))
  "Returns string type for a service object of type 'string_length-request"
  "letsgoo/string_lengthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<string_length-request>)))
  "Returns md5sum for a message object of type '<string_length-request>"
  "148848fbe5e0d609428b32ee03f3c854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'string_length-request)))
  "Returns md5sum for a message object of type 'string_length-request"
  "148848fbe5e0d609428b32ee03f3c854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<string_length-request>)))
  "Returns full string definition for message of type '<string_length-request>"
  (cl:format cl:nil "string chuoi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'string_length-request)))
  "Returns full string definition for message of type 'string_length-request"
  (cl:format cl:nil "string chuoi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <string_length-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'chuoi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <string_length-request>))
  "Converts a ROS message object to a list"
  (cl:list 'string_length-request
    (cl:cons ':chuoi (chuoi msg))
))
;//! \htmlinclude string_length-response.msg.html

(cl:defclass <string_length-response> (roslisp-msg-protocol:ros-message)
  ((do_dai
    :reader do_dai
    :initarg :do_dai
    :type cl:integer
    :initform 0))
)

(cl:defclass string_length-response (<string_length-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <string_length-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'string_length-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name letsgoo-srv:<string_length-response> is deprecated: use letsgoo-srv:string_length-response instead.")))

(cl:ensure-generic-function 'do_dai-val :lambda-list '(m))
(cl:defmethod do_dai-val ((m <string_length-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgoo-srv:do_dai-val is deprecated.  Use letsgoo-srv:do_dai instead.")
  (do_dai m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <string_length-response>) ostream)
  "Serializes a message object of type '<string_length-response>"
  (cl:let* ((signed (cl:slot-value msg 'do_dai)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <string_length-response>) istream)
  "Deserializes a message object of type '<string_length-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'do_dai) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<string_length-response>)))
  "Returns string type for a service object of type '<string_length-response>"
  "letsgoo/string_lengthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_length-response)))
  "Returns string type for a service object of type 'string_length-response"
  "letsgoo/string_lengthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<string_length-response>)))
  "Returns md5sum for a message object of type '<string_length-response>"
  "148848fbe5e0d609428b32ee03f3c854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'string_length-response)))
  "Returns md5sum for a message object of type 'string_length-response"
  "148848fbe5e0d609428b32ee03f3c854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<string_length-response>)))
  "Returns full string definition for message of type '<string_length-response>"
  (cl:format cl:nil "int64 do_dai~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'string_length-response)))
  "Returns full string definition for message of type 'string_length-response"
  (cl:format cl:nil "int64 do_dai~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <string_length-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <string_length-response>))
  "Converts a ROS message object to a list"
  (cl:list 'string_length-response
    (cl:cons ':do_dai (do_dai msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'string_length)))
  'string_length-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'string_length)))
  'string_length-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_length)))
  "Returns string type for a service object of type '<string_length>"
  "letsgoo/string_length")