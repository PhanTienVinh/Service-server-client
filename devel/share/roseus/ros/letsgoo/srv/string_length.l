;; Auto-generated. Do not edit!


(when (boundp 'letsgoo::string_length)
  (if (not (find-package "LETSGOO"))
    (make-package "LETSGOO"))
  (shadow 'string_length (find-package "LETSGOO")))
(unless (find-package "LETSGOO::STRING_LENGTH")
  (make-package "LETSGOO::STRING_LENGTH"))
(unless (find-package "LETSGOO::STRING_LENGTHREQUEST")
  (make-package "LETSGOO::STRING_LENGTHREQUEST"))
(unless (find-package "LETSGOO::STRING_LENGTHRESPONSE")
  (make-package "LETSGOO::STRING_LENGTHRESPONSE"))

(in-package "ROS")





(defclass letsgoo::string_lengthRequest
  :super ros::object
  :slots (_chuoi ))

(defmethod letsgoo::string_lengthRequest
  (:init
   (&key
    ((:chuoi __chuoi) "")
    )
   (send-super :init)
   (setq _chuoi (string __chuoi))
   self)
  (:chuoi
   (&optional __chuoi)
   (if __chuoi (setq _chuoi __chuoi)) _chuoi)
  (:serialization-length
   ()
   (+
    ;; string _chuoi
    4 (length _chuoi)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _chuoi
       (write-long (length _chuoi) s) (princ _chuoi s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _chuoi
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chuoi (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass letsgoo::string_lengthResponse
  :super ros::object
  :slots (_do_dai ))

(defmethod letsgoo::string_lengthResponse
  (:init
   (&key
    ((:do_dai __do_dai) 0)
    )
   (send-super :init)
   (setq _do_dai (round __do_dai))
   self)
  (:do_dai
   (&optional __do_dai)
   (if __do_dai (setq _do_dai __do_dai)) _do_dai)
  (:serialization-length
   ()
   (+
    ;; int64 _do_dai
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _do_dai
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _do_dai (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _do_dai) (= (length (_do_dai . bv)) 2)) ;; bignum
              (write-long (ash (elt (_do_dai . bv) 0) 0) s)
              (write-long (ash (elt (_do_dai . bv) 1) -1) s))
             ((and (class _do_dai) (= (length (_do_dai . bv)) 1)) ;; big1
              (write-long (elt (_do_dai . bv) 0) s)
              (write-long (if (>= _do_dai 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _do_dai s)(write-long (if (>= _do_dai 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _do_dai
#+(or :alpha :irix6 :x86_64)
      (setf _do_dai (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _do_dai (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass letsgoo::string_length
  :super ros::object
  :slots ())

(setf (get letsgoo::string_length :md5sum-) "148848fbe5e0d609428b32ee03f3c854")
(setf (get letsgoo::string_length :datatype-) "letsgoo/string_length")
(setf (get letsgoo::string_length :request) letsgoo::string_lengthRequest)
(setf (get letsgoo::string_length :response) letsgoo::string_lengthResponse)

(defmethod letsgoo::string_lengthRequest
  (:response () (instance letsgoo::string_lengthResponse :init)))

(setf (get letsgoo::string_lengthRequest :md5sum-) "148848fbe5e0d609428b32ee03f3c854")
(setf (get letsgoo::string_lengthRequest :datatype-) "letsgoo/string_lengthRequest")
(setf (get letsgoo::string_lengthRequest :definition-)
      "string chuoi
---
int64 do_dai
")

(setf (get letsgoo::string_lengthResponse :md5sum-) "148848fbe5e0d609428b32ee03f3c854")
(setf (get letsgoo::string_lengthResponse :datatype-) "letsgoo/string_lengthResponse")
(setf (get letsgoo::string_lengthResponse :definition-)
      "string chuoi
---
int64 do_dai
")



(provide :letsgoo/string_length "148848fbe5e0d609428b32ee03f3c854")


