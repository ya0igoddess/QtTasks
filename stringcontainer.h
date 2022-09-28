#ifndef STRINGCONTAINER_H
#define STRINGCONTAINER_H

#include <QObject>
#include <QStack>

class StringContainer : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString strings READ strings NOTIFY stringsChanged)
private:
    QStack<QString> stack;
public:
    explicit StringContainer(QObject *parent = nullptr);
    Q_INVOKABLE void addString(QString string);
    Q_INVOKABLE void removeLast();
    QString strings();

signals:
    void stringsChanged();
};

#endif // STRINGCONTAINER_H
