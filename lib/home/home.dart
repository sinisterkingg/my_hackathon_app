import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_hackathon_app/addmoney/addmoney.dart';
import 'package:my_hackathon_app/buy/buy.dart';
import 'package:my_hackathon_app/sell/sell.dart';
import 'package:my_hackathon_app/setting/setting.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Home(),
            ));
          },
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
        ),
        backgroundColor: Color(0xFFf6fff8),
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Handle the button click here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
                print('Settings button clicked');
              },
            ),
            SizedBox(
              width: 10,
            ),
          ],
          title: Text('Green Idea'),
        ),
        body: _buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq),
              label: 'Trad',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return HomeListView();
      case 1:
        return SearchListView();
      case 2:
        return FavoritesListView();
      default:
        return HomeListView();
    }
  }
}

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // First Text
                    Text(
                      '#697698',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),

                    // Second Text
                    Text(
                      '1 Unit Project',
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddMoney()));
                            print("BUY STAKE");
                          },
                          child: Text('BUY STAKE'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors
                                .green), // Set the button background color to green
                          ),
                        ),

                        // Right button
                        ElevatedButton(
                          onPressed: () {
                            // Handle right button click
                            print("Rs. 6000");
                          },
                          child: Text('Rs. 20100'),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 20, // Adjust the top position as needed
                  right: 20, // Adjust the right position as needed
                  child: CircularProgressIndicator(
                    value: 0.4,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // First Text
                    Text(
                      '#697699',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),

                    // Second Text
                    Text(
                      '3 Unit Project',
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddMoney()));
                            print("BUY STAKE");
                          },
                          child: Text('BUY STAKE'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors
                                .green), // Set the button background color to green
                          ),
                        ),

                        // Right button
                        ElevatedButton(
                          onPressed: () {
                            // Handle right button click
                            print("Rs. 12000");
                          },
                          child: Text('Rs. 60300'),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 20, // Adjust the top position as needed
                  right: 20, // Adjust the right position as needed
                  child: CircularProgressIndicator(
                    value: 0.8,
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 60,
        ),

        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // First Text

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Left button with adjusted size
                        Container(
                          width: 150,
                          height: 100, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle left button click
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddMoney(),
                                ),
                              );
                              print("Amounts : 6000");
                            },
                            child: Text('Amounts : 6000'),
                          ),
                        ),
                        // Right button with adjusted size
                        Container(
                          width: 150,
                          height: 100, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle right button click
                              print("Chips : 2.0");
                            },
                            child: Text('Chips : 2.0'),
                          ),
                        ),
                      ],
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

class SearchListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  '#566545',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                CupertinoPageScaffold(
                  child: TimerCountdown(
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                      Duration(
                        days: 7,
                        hours: 6,
                        minutes: 25,
                        seconds: 45,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sell()));
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .red), // Set the button background color to green
                      ),
                    ),

                    // Right button
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  '#566567',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                CupertinoPageScaffold(
                  child: TimerCountdown(
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                      Duration(
                        days: 2,
                        hours: 6,
                        minutes: 12,
                        seconds: 25,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Left button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sell()));
                        // Handle left button click
                        print("Sell");
                      },
                      child: Text('Sell'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .red), // Set the button background color to green
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  '#675645',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                CupertinoPageScaffold(
                  child: TimerCountdown(
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                      Duration(
                        days: 3,
                        hours: 20,
                        minutes: 30,
                        seconds: 34,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Buy()));
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .green), // Set the button background color to green
                      ),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  '#675668',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                CupertinoPageScaffold(
                  child: TimerCountdown(
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                      Duration(
                        days: 5,
                        hours: 14,
                        minutes: 27,
                        seconds: 34,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Buy()));
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .green), // Set the button background color to green
                      ),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                // First Text
                Text(
                  '#675665',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                CupertinoPageScaffold(
                  child: TimerCountdown(
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                      Duration(
                        days: 5,
                        hours: 14,
                        minutes: 27,
                        seconds: 34,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Right button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Buy()));
                        // Handle right button click
                        print("Buy");
                      },
                      child: Text('Buy'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .green), // Set the button background color to green
                      ),
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

class FavoritesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // First Text
                Text(
                  'You have purchased : 3 coins.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'Amount has deducted : 201 rs.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Text(
                  'Date and Time : 21/10/2023. 10:05:30 PM',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // First Text
                Text(
                  'You have purchased : 6 coins.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'Amount has deducted : 402 rs.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Text(
                  'Date and Time : 21/10/2023. 10:02:30 PM',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Adjust the circular value as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // First Text
                Text(
                  'You have purchased : 3 coins.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                // Second Text
                Text(
                  'Amount has deducted : 201 rs.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  'Date and Time : 21/10/2023. 09:30:55 AM',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),

        // Add more cards or other widgets here
      ],
    );
  }
}
