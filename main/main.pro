include(../include.pri)
#include(../include_test.pri)

TEMPLATE = app
CONFIG += windows


TARGET = main
SOURCES += main.cpp \
    windows/MainWindow.cpp
#INCLUDEPATH += ../common ..
#LIBS += -L../common -lcommon

#SOURCES += ../mainwindow.cpp

#HEADERS += ../mainwindow.hpp

#FORMS    += ../mainwindow.ui \
#    ../wybormodelu.ui

FORMS += \
    windows/MainWindow.ui

HEADERS += \
    windows/MainWindow.hpp

