#!/usr/bin/env python
# coding: utf-8
from PyQt5.QtWidgets import *
import sys
import rospy
from window import MainWindow

if __name__ == '__main__':
    rospy.init_node("turtle_control")
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())