// Auto-generated. Do not edit!

// (in-package letsgoo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class string_lengthRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chuoi = null;
    }
    else {
      if (initObj.hasOwnProperty('chuoi')) {
        this.chuoi = initObj.chuoi
      }
      else {
        this.chuoi = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type string_lengthRequest
    // Serialize message field [chuoi]
    bufferOffset = _serializer.string(obj.chuoi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type string_lengthRequest
    let len;
    let data = new string_lengthRequest(null);
    // Deserialize message field [chuoi]
    data.chuoi = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.chuoi);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'letsgoo/string_lengthRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbe62d19da0c1d56ccd80c3bbb57c844';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string chuoi
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new string_lengthRequest(null);
    if (msg.chuoi !== undefined) {
      resolved.chuoi = msg.chuoi;
    }
    else {
      resolved.chuoi = ''
    }

    return resolved;
    }
};

class string_lengthResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.do_dai = null;
    }
    else {
      if (initObj.hasOwnProperty('do_dai')) {
        this.do_dai = initObj.do_dai
      }
      else {
        this.do_dai = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type string_lengthResponse
    // Serialize message field [do_dai]
    bufferOffset = _serializer.int64(obj.do_dai, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type string_lengthResponse
    let len;
    let data = new string_lengthResponse(null);
    // Deserialize message field [do_dai]
    data.do_dai = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'letsgoo/string_lengthResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3920ef61934e1d7324d841a8607eb6a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 do_dai
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new string_lengthResponse(null);
    if (msg.do_dai !== undefined) {
      resolved.do_dai = msg.do_dai;
    }
    else {
      resolved.do_dai = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: string_lengthRequest,
  Response: string_lengthResponse,
  md5sum() { return '148848fbe5e0d609428b32ee03f3c854'; },
  datatype() { return 'letsgoo/string_length'; }
};
