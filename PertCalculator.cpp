#include "PertCalculator.h"
#include <QDebug>
#include <QQmlApplicationEngine>


void PERTCalculator::setValues(float number, float mostLikelyEstimate, float minEstimate, float pessimisticEstimate)
{
	this->number = number;
	this->pessimisticEstimate = pessimisticEstimate;
	this->mostLikelyEstimate = mostLikelyEstimate;
	this->minEstimate = minEstimate;

	avgLaborIntesity += number * getAverageEstimate();
	totalSquareDeviation += number * pow(getAverageSquareDeviation(), 2);
}

float PERTCalculator::getAverageEstimate()
{
	return (pessimisticEstimate + 4 * mostLikelyEstimate + minEstimate) / 6;
}

float PERTCalculator::getAverageSquareDeviation() {
	
	return (pessimisticEstimate - minEstimate) / 6;
}

float PERTCalculator::getAverageLaborIntensity() {

	return avgLaborIntesity;
}

float PERTCalculator::getTotalSquardDeviaton()
{
	return sqrt(totalSquareDeviation);
}

float PERTCalculator::getTotalLaborIntensity()
{
	return avgLaborIntesity + 2 * sqrt(totalSquareDeviation);
}

void PERTCalculator::clear()
{
	avgLaborIntesity = 0;
	totalSquareDeviation = 0;
}
