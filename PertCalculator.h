
#pragma once
#include <qobject.h>

class QQmlApplicationEngine;

class PERTCalculator : public QObject {

    Q_OBJECT
        

public slots:

    void onCalculate();

private:
    QQmlApplicationEngine* engine;

};