// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  'assets/images/image.jpg'), // Replace with your image
            ),
            SizedBox(height: 16.0),
            Text(
              'Ariful islam',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Developer',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'we love coding.',
              style: TextStyle(fontSize: 16.0),
            ),
            ListTile(
              title: Text(
                "arifulislam7670@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // Note: Same code is applied for the TextFormField as well
                            const TextField(
                              decoration: InputDecoration(
                                label: Text('Name'),
                                enabledBorder: OutlineInputBorder(
                                    //<-- SEE HERE
                                    ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                label: Text('number'),
                                enabledBorder: OutlineInputBorder(
                                    //<-- SEE HERE
                                    ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Contact with me"),
                ))
          ],
        ),
      ),
    );
  }
}
