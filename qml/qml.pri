VPATH += $$PWD

DISTFILES=main.qml Settings.qml MainWindow.qml ActionController.qml \
    $$PWD/DialogContainer.qml \
    $$PWD/ShowDialog.qml \
    $$PWD/Binder.qml \
    $$PWD/PeopleView.qml

include(./components/components.pri)
include(./forms/forms.pri)
