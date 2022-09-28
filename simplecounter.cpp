#include "simplecounter.h"

SimpleCounter::SimpleCounter(QObject *parent)
    : QObject{parent}
{
    this->counter.setValue(0);
}

Q_INVOKABLE void SimpleCounter::increment() {
    this->counter.setValue(counter.toInt() + 1);
    emit counterChanged();
}
Q_INVOKABLE void SimpleCounter::toZero() {
    this->counter.setValue(0);
    emit counterChanged();
}

QVariant SimpleCounter::getCounter() {
    return this->counter;
}
