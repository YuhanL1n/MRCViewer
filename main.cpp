#include <QtGui/QApplication>
#include "MRCViewer.h"


int main(int argc, char** argv)
{
    QApplication app(argc, argv);
    MRCViewer mrcviewer;
    mrcviewer.show();
    return app.exec();
}
