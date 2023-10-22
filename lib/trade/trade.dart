import 'package:flutter/material.dart';

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trad'),
        ),
        body: Center(
          child: MyListView(),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  'This is the first text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'This is the second text.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                    ),

                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Add more cards or other widgets here
      ],
    );
  }
}
