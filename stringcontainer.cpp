#include "stringcontainer.h"

StringContainer::StringContainer(QObject *parent)
    : QObject{parent}
{
}

Q_INVOKABLE void StringContainer::addString(QString string) {
    this->stack.push(string.toLower());
    emit stringsChanged();
}
Q_INVOKABLE void StringContainer::removeLast() {
    if (!stack.isEmpty())
    this->stack.pop();
    emit stringsChanged();
}
QString StringContainer::strings() {
    QString result = "";
    for (const auto &str : qAsConst(stack))
        result += str + ',';
    if (result.length() > 0) {
        result[0] = result[0].toUpper();
        result.chop(1);
    }
    return result;
}
