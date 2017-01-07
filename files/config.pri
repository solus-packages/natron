boost: LIBS += -lboost_serialization
expat: LIBS += -lexpat
expat: PKGCONFIG -= expat
pyside {
        PKGCONFIG -= pyside
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)/QtCore
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)/QtGui
        INCLUDEPATH += $$system(pkg-config --variable=includedir QtGui)
        LIBS += -lpyside-python2.7
}