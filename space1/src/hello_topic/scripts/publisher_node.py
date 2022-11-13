#!/usr/env/bin python
# coding: utf-8
import rospy
from std_msgs.msg import String

if __name__ == '__main__':
    rospy.init_node('publisher_node')

    topic_name = 'hello'
    publisher = rospy.Publisher(topic_name,String,queue_size=100)#topic名称、数据类型、消息大小

    count = 0
    rate = rospy.Rate(4)#一秒4次。下面调用sleep的时候，相当于让程序sleep了1/4秒的时间才继续执行
    while not rospy.is_shutdown():
        msg = String()
        msg.data = 'hello topic {}'.format(count)
        publisher.publish(msg)
        rate.sleep()
        count += 1
