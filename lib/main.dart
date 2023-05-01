import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => InstagramProfilePage();
}

class InstagramProfilePage extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Row(
              children: [
                Icon(Icons.lock_open),
                SizedBox(
                  width: 8.0,
                ),
                Text("ali_muhammad800"),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box_rounded),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Profile picture and name
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'data:data:image/jpeg;base64,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'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '26',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Text(
                              '662',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Text(
                              '425',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 10),
            // Followers, following and posts count
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ali Muhammad',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 10),
                      Text(
                        'developer jawan pakistan',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Do something when button 1 is pressed.
                      },
                      child: Text('Edit Profile '),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 170.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Do something when button 1 is pressed.
                      },
                      child: Text('Share Profile '),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // width: 10.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Do something when button 1 is pressed.
                    },
                    child: Icon(Icons.add),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            TabBar(controller: _tabController, tabs: [
              Tab(
                icon: Icon(Icons.grid_view),
              ),
              Tab(
                icon: Icon(Icons.video_collection_rounded),
              ),
              Tab(
                icon: Icon(Icons.person_outline),
              ),
            ]),
            Container(
              height: 500,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Nothing Here",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Nothing Here",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front_rounded),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.grey,
            label: '',
          ),
        ],
      ),
    ));
  }
}
