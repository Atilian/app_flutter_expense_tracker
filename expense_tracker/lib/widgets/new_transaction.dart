import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction({@required this.addNewTransaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      margin: EdgeInsets.all(10),
      shadowColor: Colors.teal,
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w300,
              ),
            ),
            controller: titleInput,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Amount",
              hintStyle: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w300,
              ),
            ),
            controller: amountInput,
          ),
          TextButton(
            onPressed: () {
              addNewTransaction(
                  titleInput.text, double.parse(amountInput.text));
            },
            child: Icon(
              Icons.add,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
