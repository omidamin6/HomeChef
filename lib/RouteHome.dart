import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authenticator.dart';
import 'MyHomePage.dart';
import 'CardCreator.dart';
import 'dart:io';
import 'dart:ui';

class RouteHome extends StatelessWidget {
  static const String routeName = '/LoginButton';
  @override
  var myHeader = 'Josue\'s Paella';
  var mySub = 'Chef Josue Pena';
  var myImage = 'assets/images/paella.jpeg';
  var myDescript =
      'An Authentic Spanish paella recipie takes you to Spain\'s Basque Region';
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    TextStyle style2 = TextStyle(
        fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white);
    TextStyle titleStyle = TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20, right: 10),
                  width: 350,
                  //MediaQuery.of(context).size.width ,
                  height: 295,
                  child: Card(
                      elevation: 18.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Text("Today's Recommended Dish",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Container(
                            height: 200,
                            child: Image.asset(
                              'assets/images/carne.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Get the grill going for chef John's Carne Asada",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          )
                        ],
                      ))),
              Container(
                  width: 350,
                  height: 400,
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: buildCard(myHeader, mySub, myImage, myDescript))
            ],
          ),
        ),
        appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.settings));
              },
            ),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Text(
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              "HomeChef",
            )),
        endDrawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_fire_department_outlined),
                  title: Text('Trending'),
                ),
                ListTile(
                  leading: Icon(Icons.set_meal_outlined),
                  title: Text('Healthy'),
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined),
                  title: Text('On a Budget'),
                ),
                ListTile(
                    leading: Icon(Icons.school_outlined),
                    title: Text('Beginner Friendly')),
                ListTile(
                    leading: Icon(Icons.favorite_border_outlined),
                    title: Text('Special Occasion')),
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Short and Quick'),
                ),
                ListTile(
                    leading: Icon(Icons.airplane_ticket_outlined),
                    title: Text('By Region'))
              ],
            )),

        // Right hand drawer
        drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('Profile And Account'),
                ),
                ListTile(
                  leading: Icon(Icons.lock_outline),
                  title: Text('Privacy'),
                ),
                ListTile(
                  leading: Icon(Icons.notifications_outlined),
                  title: Text('Notifications'),
                ),
                ListTile(
                  leading: Icon(Icons.thumb_up),
                  title: Text('Liked Videos'),
                ),
                ListTile(
                  leading: Icon(Icons.playlist_play_outlined),
                  title: Text('Playlists'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                  onTap: () {
                    AlertDialog myAlert = AlertDialog(
                      title: Text('Are you sure you want to log out?'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text('Cancel')),
                        TextButton(
                          onPressed: () async {
                            var result = await Authenticator().logout();
                            if (result) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/login', (route) => false);
                            }
                          },
                          child: Text('OK'),
                        )
                      ],
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return myAlert;
                        });
                  },
                )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.black),
                  label: 'Discover'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book, color: Colors.black),
                  label: 'My Portfolio')
            ]));
    /*Text(
          'Recommended',
          textAlign: TextAlign.left,
          style: style),
        );*/
  }
}
