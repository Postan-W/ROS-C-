#!/usr/bin/env python
# coding: utf-8
import rospy
from std_msgs.msg import String

def topic_callback(msg):
    print msg

if __name__ == '__main__':
    rospy.init_node("subscriber_node")
    topic_name = "/hello"
    subscriber = rospy.Subscriber(topic_name,String,topic_callback)

    rospy.spin()#阻塞主线程，订阅是异步的，在子线程中执行，如果主线程结束，那么子线程也会结束
