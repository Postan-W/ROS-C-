// Generated by gencpp from file hello_msgs/Student.msg
// DO NOT EDIT!


#ifndef HELLO_MSGS_MESSAGE_STUDENT_H
#define HELLO_MSGS_MESSAGE_STUDENT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello_msgs
{
template <class ContainerAllocator>
struct Student_
{
  typedef Student_<ContainerAllocator> Type;

  Student_()
    : name()
    , age(0)  {
    }
  Student_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef int32_t _age_type;
  _age_type age;





  typedef boost::shared_ptr< ::hello_msgs::Student_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_msgs::Student_<ContainerAllocator> const> ConstPtr;

}; // struct Student_

typedef ::hello_msgs::Student_<std::allocator<void> > Student;

typedef boost::shared_ptr< ::hello_msgs::Student > StudentPtr;
typedef boost::shared_ptr< ::hello_msgs::Student const> StudentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_msgs::Student_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_msgs::Student_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello_msgs::Student_<ContainerAllocator1> & lhs, const ::hello_msgs::Student_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello_msgs::Student_<ContainerAllocator1> & lhs, const ::hello_msgs::Student_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello_msgs::Student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_msgs::Student_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_msgs::Student_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_msgs::Student_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_msgs::Student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_msgs::Student_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_msgs::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83da5ca00b8e049b0559653a472c88a5";
  }

  static const char* value(const ::hello_msgs::Student_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83da5ca00b8e049bULL;
  static const uint64_t static_value2 = 0x0559653a472c88a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_msgs::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_msgs/Student";
  }

  static const char* value(const ::hello_msgs::Student_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_msgs::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int32 age\n"
;
  }

  static const char* value(const ::hello_msgs::Student_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_msgs::Student_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Student_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_msgs::Student_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_msgs::Student_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<int32_t>::stream(s, indent + "  ", v.age);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_MSGS_MESSAGE_STUDENT_H
