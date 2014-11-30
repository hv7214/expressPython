#-------------------------------------------------
#
# Project created by QtCreator 2014-11-22T18:40:41
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


TARGET = expressPython
TEMPLATE = app

SOURCES += main.cpp\
        UI/mainview.cpp \
    CodeEditor/pythonsyntaxhighlighter.cpp \
    CodeEditor/codeeditor.cpp \
    Features/snippets.cpp \
    PythonAccess/emb.cpp \
    PythonAccess/pythonworker.cpp

HEADERS  += UI/mainview.h \
    CodeEditor/pythonsyntaxhighlighter.h \
    CodeEditor/codeeditor.h \
    Features/snippets.h \
    PythonAccess/emb.h \
    PythonAccess/pythonworker.h

FORMS    += UI/mainview.ui

QMAKE_CXXFLAGS += -std=c++11 -Wpedantic

RESOURCES += \
    PyRunResources.qrc

RC_FILE = WindowsResources/win_rsrc.rc


win32: LIBS += -L$$PWD/../Python34/libs/ -lpython34

INCLUDEPATH += $$PWD/../Python34/include
DEPENDPATH += $$PWD/../Python34/include

OTHER_FILES +=
