
#pragma once
#include <qobject.h>

class QQmlApplicationEngine;

class PERTCalculator : public QObject {

        
    Q_OBJECT


private:
    QQmlApplicationEngine* engine;
    float number;
    float pessimisticEstimate;
    float mostLikelyEstimate;
    float minEstimate;

    float avgLaborIntesity = 0;
    float totalSquareDeviation = 0;


public:
    Q_INVOKABLE void setValues(float number, float mostLikelyEstimate, float minEstimate, float pessimisticEstimate);

    Q_INVOKABLE float getAverageEstimate();

    Q_INVOKABLE float getAverageSquareDeviation();

    Q_INVOKABLE float getAverageLaborIntensity();
    Q_INVOKABLE float getTotalSquardDeviaton();
    Q_INVOKABLE float getTotalLaborIntensity();

    Q_INVOKABLE void clear();
};



