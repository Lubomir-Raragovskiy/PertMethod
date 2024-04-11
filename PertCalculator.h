
#pragma once
#include <qobject.h>

class QQmlApplicationEngine;

class PERTCalculator : public QObject {

        
    Q_OBJECT


private:
    QQmlApplicationEngine* engine;
    double number;
    double pessimisticEstimate;
    double mostLikelyEstimate;
    double minEstimate;

    double avgLaborIntesity = 0;
    double totalSquareDeviation = 0;


public:
    Q_INVOKABLE void setValues(double number, double mostLikelyEstimate, double minEstimate, double pessimisticEstimate);

    Q_INVOKABLE double getAverageEstimate();

    Q_INVOKABLE double getAverageSquareDeviation();

    Q_INVOKABLE double getAverageLaborIntensity();
    Q_INVOKABLE double getTotalSquardDeviaton();
    Q_INVOKABLE double getTotalLaborIntensity();

    Q_INVOKABLE void clear();
};



