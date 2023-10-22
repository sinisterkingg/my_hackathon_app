import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final double amount;

  Transaction(this.title, this.amount);
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction('Groceries', 50.0),
    Transaction('Gas', 30.0),
    Transaction('Dinner', 60.0),
    Transaction('Clothing', 40.0),
    Transaction('Groceries', 50.0),
    Transaction('Gas', 30.0),
    Transaction('Dinner', 60.0),
    Transaction('Clothing', 40.0),
    Transaction('Groceries', 50.0),
    Transaction('Gas', 30.0),
    Transaction('Dinner', 60.0),
    Transaction('Clothing', 40.0),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transaction History'),
        ),
        body: TransactionList(transactions),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text('\$${transactions[index].amount.toStringAsFixed(2)}'),
            ),
            title: Text(transactions[index].title),
            subtitle: Text(
              'Date: ${DateTime.now().toString()}',
            ),
          ),
        );
      },
    );
  }
}
