#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "PertCalculator.h"





int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    PERTCalculator calculator;
    engine.rootContext()->setContextProperty("Calculator", &calculator);

    engine.load(QUrl(QStringLiteral("qrc:/qt/qml/pertmethod/main.qml")));
    if (engine.rootObjects().isEmpty()) {

        qWarning() << engine.catchError().toString();

        return -1;
    }

   

    //QObject::connect(engine.rootObjects().first(), SIGNAL(calculate()), &calculator, SLOT(onCalculate()));


    return app.exec();
}
