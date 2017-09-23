#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <quazip.h>
#include <JlCompress.h>
#include <QFileDialog>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    ui->lineEdit->setText(QFileDialog::getOpenFileName(this,"zip file","/","zip file (*.zip)"));
    QuaZip file(ui->lineEdit->text());
    file.open(QuaZip::mdUnzip);
    for(int i = 0;i!=file.getEntriesCount();i++){
        ui->textBrowser->setText(ui->textBrowser->toPlainText()+file.getCurrentFileName()+"\n");
        file.goToNextFile();
    }

}

void MainWindow::on_pushButton_2_clicked()
{
    ui->lineEdit_2->setText(QFileDialog::getExistingDirectory(this,"dir","/"));
}

void MainWindow::on_pushButton_3_clicked()
{
    JlCompress::extractFiles(ui->lineEdit->text(),JlCompress::getFileList(ui->lineEdit->text()),ui->lineEdit_2->text());
    QMessageBox::information(this,"info","Done");
}
