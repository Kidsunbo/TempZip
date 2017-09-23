#-------------------------------------------------
#
# Project created by QtCreator 2017-09-24T00:17:14
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Zip
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Downloads/build-quazip-Desktop_Qt_5_9_1_clang_64bit-Debug/quazip/release/ -lquazip_debug.1.0.0
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Downloads/build-quazip-Desktop_Qt_5_9_1_clang_64bit-Debug/quazip/debug/ -lquazip_debug.1.0.0
else:unix: LIBS += -L$$PWD/../../../Downloads/build-quazip-Desktop_Qt_5_9_1_clang_64bit-Debug/quazip/ -lquazip_debug.1.0.0

INCLUDEPATH += $$PWD/../../../Downloads/quazip-0.7.3/quazip
DEPENDPATH += $$PWD/../../../Downloads/quazip-0.7.3/quazip
