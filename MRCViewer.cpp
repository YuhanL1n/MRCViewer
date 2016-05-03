#include "MRCViewer.h"

MRCViewer::MRCViewer()
{
    InitWidget();
    resize(400,400);
    
}

MRCViewer::~MRCViewer()
{}
void MRCViewer::InitWidget()
{
    FileMenu=menuBar()->addMenu("File");
    HelpMenu=menuBar()->addMenu("Help");
    
    OpenFileAction= new QAction(this);
    OpenFileAction->setText("Open");
    OpenRecentAction=new QAction(this);
    connect(OpenFileAction,SIGNAL(triggered(bool)),this,SLOT(OpenFile()));
    OpenRecentAction->setText("Open Recent File");
    FileMenu->addAction(OpenFileAction);
    FileMenu->addAction(OpenRecentAction);

}
void MRCViewer::OpenFile()
{

    FileName= QFileDialog::getOpenFileName(this, tr("open"),windowFilePath(),tr("MRC files (*.mrc *.st)"));
    qDebug()<<FileName;
    MrcReader= new util::MrcStack();
    if(!MrcReader->Open(FileName.toLatin1().data())){
	QMessageBox::warning(NULL , tr("open image") , tr("Can't Open Image File!")  ,QMessageBox::Ok);
	return;
    }
    Window = new XyzWindow(MrcReader,this,0);
    this->hide();
//     cvNamedWindow("1",CV_WINDOW_AUTOSIZE);
//     cvShowImage("image",MrcReader->GetIplImage(0));
//     cvWaitKey(0);
    
}


