#include <QtGui/QApplication>
#include <QtOpenGL>
#include "qmlapplicationviewer.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);


    QGLFormat format = QGLFormat::defaultFormat();
    format.setSampleBuffers(false);
    format.setSwapInterval(1);

    QGLWidget *glWidget = new QGLWidget(format);
    glWidget->setAutoFillBackground(false);

    QmlApplicationViewer viewer;
    viewer.setViewport(glWidget);
    viewer.setViewportUpdateMode(QGraphicsView::FullViewportUpdate);
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setAttribute(Qt::WA_OpaquePaintEvent);
    viewer.setAttribute(Qt::WA_NoSystemBackground);
    viewer.setMainQmlFile(QLatin1String("qml/GradientShader/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
