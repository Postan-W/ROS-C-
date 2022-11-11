#!/usr/bin/env python
#coding: utf-8
import rospy

if __name__ == '__main__':

    rospy.init_node("hello_ros")#启动节点
    print 'first python script 中文'
    rate = rospy.Rate(3)#1秒3次
    rospy.spin()#为了使节点常驻