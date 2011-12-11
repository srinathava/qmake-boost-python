TEMPLATE = lib

CONFIG += plugin

INCLUDEPATH += /usr/include/boost /usr/include/python2.7

DEFINES += BOOST_PYTHON_DYNAMIC_LIB
LIBS += -L/usr/local/lib -L/usr/lib/python2.7 -lpython2.7 -lboost_python

SOURCES += *.cpp

# Python wants the library name to be hello.so when we import hello.
QMAKE_PRE_LINK = rm -f hello.so
QMAKE_POST_LINK = ln -s libhello.so hello.so
QMAKE_DISTCLEAN += hello.so

TARGET = hello
