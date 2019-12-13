cmake_minimum_required(VERSION 2.6)

project (FLAMGINGO_SERVER)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -Wall -O0 -Wno-unused-variable -pthread")


# �Ƽ�ʹ�� CentOS 7.0 ������ϵͳ
# CentOS 7.0 ������ϵͳĬ�ϰ�װ����mariadb����װ����
# yum install mariadb-server mariadb mariadb-devel
# CentOS 7.0 ����ϵͳĬ�ϰ�װmysql����װ������
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
#�������Ŀ¼��û�õģ�������ʹ��TARGET_LINK_LIBRARIES���Ӹÿ�
TARGET_LINK_LIBRARIES(zolNet)