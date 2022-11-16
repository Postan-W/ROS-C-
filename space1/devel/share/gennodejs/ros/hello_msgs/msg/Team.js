// Auto-generated. Do not edit!

// (in-package hello_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Student = require('./Student.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Team {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.leader = null;
      this.introduction = null;
      this.location = null;
      this.members = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('leader')) {
        this.leader = initObj.leader
      }
      else {
        this.leader = new Student();
      }
      if (initObj.hasOwnProperty('introduction')) {
        this.introduction = initObj.introduction
      }
      else {
        this.introduction = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('members')) {
        this.members = initObj.members
      }
      else {
        this.members = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Team
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [leader]
    bufferOffset = Student.serialize(obj.leader, buffer, bufferOffset);
    // Serialize message field [introduction]
    bufferOffset = std_msgs.msg.String.serialize(obj.introduction, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [members]
    // Serialize the length for message field [members]
    bufferOffset = _serializer.uint32(obj.members.length, buffer, bufferOffset);
    obj.members.forEach((val) => {
      bufferOffset = Student.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Team
    let len;
    let data = new Team(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [leader]
    data.leader = Student.deserialize(buffer, bufferOffset);
    // Deserialize message field [introduction]
    data.introduction = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [members]
    // Deserialize array length for message field [members]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.members = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.members[i] = Student.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += Student.getMessageSize(object.leader);
    length += std_msgs.msg.String.getMessageSize(object.introduction);
    object.members.forEach((val) => {
      length += Student.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_msgs/Team';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '013e89f64a6eee989d320d356cdbd74c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Team(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.leader !== undefined) {
      resolved.leader = Student.Resolve(msg.leader)
    }
    else {
      resolved.leader = new Student()
    }

    if (msg.introduction !== undefined) {
      resolved.introduction = std_msgs.msg.String.Resolve(msg.introduction)
    }
    else {
      resolved.introduction = new std_msgs.msg.String()
    }

    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Pose.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Pose()
    }

    if (msg.members !== undefined) {
      resolved.members = new Array(msg.members.length);
      for (let i = 0; i < resolved.members.length; ++i) {
        resolved.members[i] = Student.Resolve(msg.members[i]);
      }
    }
    else {
      resolved.members = []
    }

    return resolved;
    }
};

module.exports = Team;
