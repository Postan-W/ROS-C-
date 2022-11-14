#!/usr/bin/env python
# coding: utf-8
from PyQt5.QtWidgets import *
from PyQt5.QtCore import *
from PyQt5.QtGui import *
import sys
import rospy
from geometry_msgs.msg import Twist

class MainWindow(QWidget):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.setWindowTitle("小乌龟控制")
        self.resize(400,0)#宽、高。若为0则自适应
        #布局
        layout = QFormLayout()
        self.setLayout(layout)
        #输入框
        self.linear = QLineEdit()
        self.angular = QLineEdit()
        btn = QPushButton("发送")
        layout.addRow('线速度',self.linear)
        layout.addRow('角速度',self.angular)
        layout.addRow(btn)

        #事件
        btn.clicked.connect(self.click_send)
        #创建发布者
        topic_name = "/turtle1/cmd_vel"
        self.publisher = rospy.Publisher(topic_name,Twist,queue_size=10)
    def click_send(self):
        twist = Twist()
        twist.linear.x = float(self.linear.text())
        twist.angular.z = float(self.angular.text())
        self.publisher.publish(twist)

