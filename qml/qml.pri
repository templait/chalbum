VPATH += $$PWD

DISTFILES=main.qml Settings.qml MainWindow.qml ActionController.qml PersonDelegate.qml \
    $$PWD/DialogContainer.qml \
    $$PWD/ShowDialog.qml \
    $$PWD/Binder.qml \
    $$PWD/PeopleView.qml

include(./components/components.pri)
include(./Forms/Forms.pri)
