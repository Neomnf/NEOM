// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NEOM_QT_NEOMADDRESSVALIDATOR_H
#define NEOM_QT_NEOMADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class NEOMAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit NEOMAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** NEOM address widget validator, checks for a valid neom address.
 */
class NEOMAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit NEOMAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // NEOM_QT_NEOMADDRESSVALIDATOR_H
