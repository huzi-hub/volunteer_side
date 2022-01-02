// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volunteer_side/assigned_donations.dart';

class Voluntter_Home extends StatefulWidget {
  final username;
  final volunteerId;
  const Voluntter_Home(this.username, this.volunteerId);

  @override
  _Voluntter_HomeState createState() => _Voluntter_HomeState();
}

class _Voluntter_HomeState extends State<Voluntter_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 45,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  maxRadius: 40,
                                  backgroundImage:
                                      AssetImage('assets/images.png'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                                height: 80,
                                width: 190,
                                child: ListTile(
                                  title: Text(
                                    'Hello ${widget.username}',
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      color: Colors.blue[800],
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.64,
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 280,
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                              child: Container(
                                height: 130,
                                width: 280,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      height: 120,
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 90,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      'assets/pic2.jpg',
                                                    ))),
                                          ),
                                          InkWell(
                                            child: Text(
                                              'Donation Record',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return AssignedDonation(
                                                    widget.volunteerId);
                                              }));
                                            },
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    //food doation
                    // Container(
                    //   height: 150,
                    //   width: double.infinity,
                    //   child: Column(
                    //     children: [
                    //       Card(
                    //         color: Colors.white,
                    //         margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         // child: Container(
                    //         //   height: 130,
                    //         //   width: 280,
                    //         //   child: Column(
                    //         //     mainAxisAlignment: MainAxisAlignment.center,
                    //         //     children: [
                    //         //       Container(
                    //         //         padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    //         //         height: 120,
                    //         //         color: Colors.white,
                    //         //         width: 240,
                    //         //         child: Column(
                    //         //           mainAxisAlignment:
                    //         //               MainAxisAlignment.spaceBetween,
                    //         //           children: [
                    //         //             Container(
                    //         //               height: 90,
                    //         //               decoration: BoxDecoration(
                    //         //                   image: DecorationImage(
                    //         //                       fit: BoxFit.cover,
                    //         //                       image: AssetImage(
                    //         //                         'assets/pic3.jpg',
                    //         //                       ))),
                    //         //             ),
                    //         //             InkWell(
                    //         //               child: Text(
                    //         //                 'NGOs Record',
                    //         //                 style: TextStyle(
                    //         //                     fontWeight: FontWeight.bold),
                    //         //               ),
                    //         //               onTap: () {
                    //         //                 Navigator.push(
                    //         //                     context,
                    //         //                     MaterialPageRoute(
                    //         //                         builder: (context) =>
                    //         //                             NGORecords()));
                    //         //               },
                    //         //             )
                    //         //           ],
                    //         //         ),
                    //         //       )
                    //         //     ],
                    //         //   ),
                    //         // ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Column(
                      children: [
                        Card(
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 150,
                            width: 280,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  height: 120,

                                  //color if needed

                                  width: 240,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/pic.jpg',
                                                ))),
                                      ),
                                      InkWell(
                                        child: Text(
                                          'NGO Registration',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             NGO_Reg()));
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ), //book Donation
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
