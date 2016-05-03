#ifndef MRCViewer_H
#define MRCViewer_H

#include <QtGui>
#include <QtGui/QMainWindow>
#include <QtGui/QLabel>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QAction>
#include <QtGui/QDialog>
#include <QtGui/QApplication>
#include <QtCore/QByteArray>
#include <QFile>
#include <QFileInfo>
#include <QString>
#include <QtCore/qcoreapplication.h>
#include <mrcimg/mrc2img.h>
#include "XyzView/XyzWindow.h"
#include "XyzView/ImageView.h"
using namespace util;
class MRCViewer : public QMainWindow
{
    Q_OBJECT

public:
    MRCViewer();
    virtual ~MRCViewer();

private:
    QWidget *MainWidget;
    QMenu *FileMenu;
    QMenu *HelpMenu;
    QAction *OpenFileAction;
    QAction *OpenRecentAction;
    
    QString FileName;
    
    MrcStack *MrcReader;
    XyzWindow *Window;
    void InitWidget();
    
private slots:
    void OpenFile();
};


#endif // MRCViewer_H
