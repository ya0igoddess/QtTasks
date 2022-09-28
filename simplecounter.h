#ifndef SIMPLECOUNTER_H
#define SIMPLECOUNTER_H

#include "qvariant.h"
#include <QObject>

class SimpleCounter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVariant counter READ getCounter NOTIFY counterChanged)
private:
    QVariant counter;
public:
    explicit SimpleCounter(QObject *parent = nullptr);
    Q_INVOKABLE void increment();
    Q_INVOKABLE void toZero();
    QVariant getCounter();
signals:
    void counterChanged();
};

#endif // SIMPLECOUNTER_H
