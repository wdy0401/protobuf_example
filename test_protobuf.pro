TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    addressbook.pb.cc \


HEADERS += \
    addressbook.pb.h

INCLUDEPATH += e:/include





win32: LIBS += -L$$PWD/install/lib/ -llibprotobuf

INCLUDEPATH += $$PWD/install/include
DEPENDPATH += $$PWD/install/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/install/lib/libprotobuf.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/install/lib/liblibprotobuf.a

#在从源文件编译pb�运行库要设置成多线程DLL模式 也就是MD模式

DISTFILES += \
    addressbook.proto
