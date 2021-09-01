import 'package:flutter/material.dart';

import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "id",
      title: "title",
      amount: 50,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id2",
      title: "title2",
      amount: 50,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    setState(() {
      _userTransactions.add(
        Transaction(
          id: "ID" + title + DateTime.now().toString(),
          title: title,
          amount: amount,
          date: DateTime.now(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addNewTransaction: _addNewTransaction),
        TransactionList(transactions: _userTransactions),
      ],
    );
  }
}
