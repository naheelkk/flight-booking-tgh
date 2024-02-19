// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      title: 'Flight App',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Book\nNew\nFlights",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 25,
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/download.jpg'),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('New York')
                      ],
                    ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 390,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text(
                        'San Francisco International Airport',
                        style: TextStyle(color: Colors.white),
                      ),
                      minVerticalPadding: 20,
                      subtitle: Text(
                        'SFO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_outward, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 390,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text(
                        'JFK International Airport',
                        style: TextStyle(color: Colors.white),
                      ),
                      minVerticalPadding: 20,
                      subtitle: Text(
                        'JFK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_downward_outlined,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 390,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: Text('Return',
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  subtitle: Text('ONE WAY',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              SizedBox(
                                  width: 8), // Add some space between ListTiles
                              Expanded(
                                child: ListTile(
                                  title: Text('Class',
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  subtitle: Text('Business',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              'Date',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            subtitle: Text(
                              '05 June 2025',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              'Passengers',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            subtitle: Text(
                              '01',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade600,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.remove_circle,
                                  color: Colors.grey.shade600,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Searching');
                  },
                  child: ListTile(
                    title: Text(
                      'Search Flights',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
