#include "PertCalculator.h"
#include <QDebug>
#include <QQmlApplicationEngine>


void PERTCalculator::setValues(double number, double mostLikelyEstimate, double minEstimate, double pessimisticEstimate)
{
	this->number = number;
	this->pessimisticEstimate = pessimisticEstimate;
	this->mostLikelyEstimate = mostLikelyEstimate;
	this->minEstimate = minEstimate;

	avgLaborIntesity += number * getAverageEstimate();
	totalSquareDeviation += number * pow(getAverageSquareDeviation(), 2);
}

double PERTCalculator::getAverageEstimate()
{
	return (pessimisticEstimate + 4 * mostLikelyEstimate + minEstimate) / 6;
}

double PERTCalculator::getAverageSquareDeviation() {
	
	return (pessimisticEstimate - minEstimate) / 6;
}

double PERTCalculator::getAverageLaborIntensity() {

	return avgLaborIntesity;
}

double PERTCalculator::getTotalSquardDeviaton()
{
	return sqrt(totalSquareDeviation);
}

double PERTCalculator::getTotalLaborIntensity()
{
	return avgLaborIntesity + 2 * sqrt(totalSquareDeviation);
}

void PERTCalculator::clear()
{
	avgLaborIntesity = 0;
	totalSquareDeviation = 0;
}
