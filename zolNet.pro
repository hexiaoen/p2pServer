
CONFIG += c++11
#CONFIG -= app_bundle



# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    srv/main.cpp \
    base/AsyncLog.cpp \
    base/ConfigFileReader.cpp \
    base/CountDownLatch.cpp \
    base/Platform.cpp \
    base/Timestamp.cpp \
    net/Acceptor.cpp \
    net/Buffer.cpp \
    net/Channel.cpp \
    net/Connector.cpp \
    net/EpollPoller.cpp \
    net/EventLoop.cpp \
    net/EventLoopThread.cpp \
    net/EventLoopThreadPool.cpp \
    net/InetAddress.cpp \
    net/Poller.cpp \
    net/ProtocolStream.cpp \
    net/Sockets.cpp \
    net/SelectPoller.cpp\
    net/TcpClient.cpp \
    net/TcpConnection.cpp \
    net/TcpServer.cpp \
    net/Timer.cpp \
    net/TimerQueue.cpp \
    utils/DaemonRun.cpp \
    utils/MD5.cpp \
    utils/StringUtil.cpp \
    utils/URLEncodeUtil.cpp
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target





HEADERS += \
    base/AsyncLog.h \
    base/ConfigFileReader.h \
    base/CountDownLatch.h \
    base/Platform.h \
    base/RAIIWrapper.h \
    base/Singleton.h \
    base/Timestamp.h \
    net/Acceptor.h \
    net/Buffer.h \
    net/Callbacks.h \
    net/Channel.h \
    net/Connector.h \
    net/Endian.h \
    net/EpollPoller.h \
    net/EventLoop.h \
    net/EventLoopThread.h \
    net/EventLoopThreadPool.h \
    net/InetAddress.h \
    net/Poller.h \
    net/ProtocolStream.h \
    net/Sockets.h \
    net/SelectPoller.h\
    net/TcpClient.h \
    net/TcpConnection.h \
    net/TcpServer.h \
    net/Timer.h \
    net/TimerId.h \
    net/TimerQueue.h \
    utils/DaemonRun.h \
    utils/MD5.h \
    utils/StringUtil.h \
    utils/URLEncodeUtil.h


contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_EXTRA_LIBS = \
        $$PWD/lib/libgnustl_shared.so
}

