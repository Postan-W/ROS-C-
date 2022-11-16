#!/usr/bin/env python
# coding: utf-8
import rospy
from hello_msgs.msg import Team,Student

if __name__ == '__main__':
    rospy.init_node('team_pub')

    topic_name = 'team'
    publisher = rospy.Publisher(topic_name,Team,queue_size=100)#topic名称、数据类型、发布缓冲区大小

    count = 0
    """
    这个频率是指运行上一次loop.sleep()到下一次loop.sleep()之间保持的时间，通常情况下，代码运行速度比设定的频率要快，
    所以如果运行到下一次loop.sleep()后未达到0.02s（以1/50Hz为例），则会开始休眠，等到0.02s后再执行下一句程序
    """
    rate = rospy.Rate(4)
    while not rospy.is_shutdown():
        msg = Team()
        msg.name = "team {}".format(count)
        msg.leader.age = count
        msg.leader.name = "leader {}".format(count)

        msg.introduction.data = "intro {}".format(count)
        msg.location.position.x = float(count)
        for i in range(3):
            stu = Student()
            stu.name = "member {}".format(i)
            stu.age = i
            msg.members.append(stu)
        publisher.publish(msg)
        rate.sleep()
        count += 1