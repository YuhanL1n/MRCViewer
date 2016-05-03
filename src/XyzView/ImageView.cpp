#include "ImageView.h"
#define BM_WIDTH 16
#define BM_HEIGHT 16
#define XYZ_BSIZE 6
#define XYZ_GSIZE 6
#define ALL_BORDER (2 * XYZ_BSIZE + XYZ_GSIZE)
#define FRAM_BORDER 3
#define GRAB_LENGTH 7
#define GRAB_WIDTH 3
#define XYZ_TOGGLE_RESOL 0
#define XYZ_TOGGLE_LOCKED 1
#define MAX_SLIDER_WIDTH 100
#define MIN_SLIDER_WIDTH 20
#define NOTNEW -999999999
ImageView::ImageView(util::MrcStack* vi, QWidget* parent, Qt::WindowFlags flags): QMainWindow(parent, flags)
{
setAttribute(Qt::WA_DeleteOnClose);
  setAttribute(Qt::WA_AlwaysShowToolTips);
  setAnimated(false);
  mVi   = vi;
  nx = mVi->Width();
  ny = mVi->Height();
  nz = mVi->Size();
//   qDebug()<<"here";
  cx = 0;
  cy = 0;
  cz = nz/2;
  mZoom = 1;
  mx = nx*mZoom;
  my = ny*mZoom;
  mz = nz*mZoom;
  mXorigin1 = mz + XYZ_BSIZE + XYZ_GSIZE + 2*FRAM_BORDER;
  mYorigin1 = XYZ_BSIZE;
  mXorigin2 = XYZ_BSIZE;
  mYorigin2 = mz + XYZ_BSIZE + XYZ_GSIZE + 2*FRAM_BORDER;
  mWidth = mz+mx+ALL_BORDER+4*FRAM_BORDER;
  mHeight = mz + my + ALL_BORDER +40+4*FRAM_BORDER+20;
  
  //对于过大图像，要定义一个新mzoom值
  if(mHeight > 700 || mWidth > 900){
    int w = mWidth;
    int h = mHeight;
    float d = 0.25;
    while(1){
      if(mZoom>d)
      mZoom -= d;
      else{
	d/=5;
	mZoom-=d;
      }
      mHeight = h*mZoom;
      mWidth = w*mZoom;
      qDebug()<<"window size : "<<mWidth<<"*"<<mHeight;
      if(mHeight <= 900 && mWidth <=1100)
	break;
    }
  mx = nx*mZoom;
  my = ny*mZoom;
  mz = nz*mZoom;
  mXorigin1 = mz + XYZ_BSIZE + XYZ_GSIZE + 2*FRAM_BORDER;
  mYorigin1 = XYZ_BSIZE;
  mXorigin2 = XYZ_BSIZE;
  mYorigin2 = mz + XYZ_BSIZE + XYZ_GSIZE + 2*FRAM_BORDER;
  mWidth = mz+mx+ALL_BORDER+4*FRAM_BORDER;
  mHeight = mz + my + ALL_BORDER +40+4*FRAM_BORDER+20;
  }
  
  m_OpenZoom = mZoom;
  m_RelativeZoom = mZoom/m_OpenZoom;
  wx = mx;
  wy = my;
  wz = mz;
  
  qDebug()<<"mzoom : "<<mZoom;
  resize(mWidth , mHeight);
   mFdatayz = new unsigned char[nz*ny];
  mFdataxz = new unsigned char[nx*nz];
  mFdataxy = new unsigned char[nx*ny];
//   mCurView = -1;
  m_imginfo = new ImgInfo(this);
  m_imginfo->setAttribute(Qt::WA_DeleteOnClose);
  
   LoadImageData();
  CreateActions();
  CreateToolBars();  
  CreateStatusBar();
  CreateXYZView();
  
  m_XSlider->setRange(0 , nx-1);
  m_XSlider->setValue(cx);
  m_YSlider->setRange(0,ny-1);
  m_YSlider->setValue(cy);
  m_ZSlider->setRange(0,nz-1);
  m_ZSlider->setValue(cz);
  qDebug()<<"here";
  connect(m_imginfo , SIGNAL(destroyed(QObject*)) , this , SLOT(close()));
    connect(m_imginfo , SIGNAL(Adjust()) , this , SLOT(On_Adjust()));
    
    QRect rect = QApplication::desktop()->availableGeometry();
  move((rect.width()-mWidth)/2 , (rect.height()-mHeight)/2);
  show();
}
void ImageView::LoadImageData()
{
	qDebug()<<"Load Image Data";
	
	//processbar
	LoadImgWin LoadImgBar;
	LoadImgBar.show();
	LoadImgBar.SetRange(0 , nz);
	QString s = QString("0/%1").arg(nz);
	LoadImgBar.SetLabel(QString("0/%1").arg(nz));
	
	IplImage* iplimage;
	mData = new unsigned char*[nz];
	for(int i=0;i<nz;i++){
		
		LoadImgBar.SetValue(i);
		LoadImgBar.SetLabel(QString("%1/%2").arg(i).arg(nz));
		
		iplimage = mVi->GetIplImage(i);
		
		IplImage* cpy;
		util::CopyToUChar256(iplimage, &cpy, 255, 0);
		GetDataFromIplimage(cpy , &mData[i]);
		
		cvReleaseImage(&cpy);
		cvReleaseImage(&iplimage);
	}
	QString info = QString("Image size : %1*%2\n").arg(nx).arg(ny);
	m_imginfo->AddInfo(info);
	info = QString("Sections : %1\n").arg(nz);
	m_imginfo->AddInfo(info);
	m_imginfo->show();
}
