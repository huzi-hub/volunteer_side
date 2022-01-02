// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volunteer_side/volunteer_dashboard.dart';

import 'EditProfile.dart';
import 'Login.dart';
import 'MyHeaderDrawer.dart';

class VolunteerAppbar extends StatefulWidget {
  final volunteerId;
  final username;
  VolunteerAppbar(this.username, this.volunteerId);
  @override
  _VolunteerAppbarState createState() => _VolunteerAppbarState();
}

class _VolunteerAppbarState extends State<VolunteerAppbar> {
  var currentPage = DrawerSections.volunteer_dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.volunteer_dashboard) {
      container = Voluntter_Home(widget.username, widget.volunteerId);
    } else if (currentPage == DrawerSections.myprofile) {
      container = EditProfile();
      // } else if (currentPage == DrawerSections.donations) {
      //   container = DonartionHistory(widget.ngo_Id);
      // } else if (currentPage == DrawerSections.settings) {
      // container = ChangePassword(
      //     widget.password, widget.email, widget.storage, widget.ngo_Id);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0.1,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
          child: Text("E-Donation"),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 15,
          ),
          child: Column(
            // shows the list of menu drawer
            children: [
              menuItem(1, "My Profile", Icons.image,
                  currentPage == DrawerSections.myprofile ? true : false),
              menuItem(2, "Donations", Icons.dashboard,
                  currentPage == DrawerSections.donations ? true : false),
              Divider(),
              menuItem(3, "Settings", Icons.settings_outlined,
                  currentPage == DrawerSections.settings ? true : false),
              menuItem(4, "Notifications", Icons.notifications_outlined,
                  currentPage == DrawerSections.notifications ? true : false),
              logout('Logout', Icons.logout)
            ],
          ),
        ),
        // logoutbutton("Logout", Icons.logout),
        // Container(
        //   margin: EdgeInsets.only(top: 50),
        //   child: RaisedButton.icon(
        //       onPressed: () {
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => Login()));
        //       },
        //       icon: Icon(Icons.logout),
        //       label: Text('Logout')),
        // )
      ],
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.myprofile;
            } else if (id == 2) {
              currentPage = DrawerSections.donations;
            } else if (id == 3) {
              currentPage = DrawerSections.settings;
            } else if (id == 4) {
              currentPage = DrawerSections.notifications;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logout(String title, IconData icon) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  myprofile,
  donations,
  settings,
  notifications,
  notes,
  volunteer_dashboard,
}
