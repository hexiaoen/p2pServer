cmake_minimum_required(VERSION 2.6)

project (FLAMGINGO_SERVER)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -Wall -O0 -Wno-unused-variable -pthread")


# 推荐使用 CentOS 7.0 及以上系统
# CentOS 7.0 及以上系统默认安装的是mariadb，安装方法
# yum install mariadb-server mariadb mariadb-devel
# CentOS 7.0 以下系统默认安装mysql，安装方法：
# yum install mysql-server mysql mysql-devel


set(net_srcs 
base/AsyncLog.cpp
base/ConfigFileReader.cpp
base/Platform.cpp
base/Timestamp.cpp

net/Acceptor.cpp
net/Buffer.cpp
net/Channel.cpp
net/Connector.cpp
net/EpollPoller.cpp
net/EventLoop.cpp
net/EventLoopThread.cpp
net/EventLoopThreadPool.cpp
net/InetAddress.cpp
net/Poller.cpp
net/ProtocolStream.cpp
net/Sockets.cpp
net/TcpClient.cpp
net/TcpConnection.cpp
net/TcpServer.cpp
net/Timer.cpp
net/TimerQueue.cpp
)


set(utils_srcs
utils/StringUtil.cpp
utils/URLEncodeUtil.cpp
utils/MD5.cpp
utils/DaemonRun.cpp
)

set(srv_srcs
srv/main.cpp
)



add_executable(zolNet ${net_srcs}  ${utils_srcs} ${srv_srcs})
#光包含库目录是没用的，还必须使用TARGET_LINK_LIBRARIES链接该库
TARGET_LINK_LIBRARIES(zolNet)
