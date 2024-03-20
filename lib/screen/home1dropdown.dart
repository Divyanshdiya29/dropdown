import 'package:dropdown/screen/nyprofile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String drop = "one";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DropdownButton(
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Container(
                      child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "James Quincey",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  )),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.person,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()),
                                    );
                                  },
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Account setting and more",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.list_alt,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Meetings",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Meetings details for sed inum",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 4,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.manage_search,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manage Interview",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Oraganize Interview and share detail",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              onChanged: (_value) => {print(_value.toString())},
              hint: Text(
                "James Quincey",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.85,
                width: MediaQuery.of(context).size.width * 0.20,
                child: Card(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            margin:
                                EdgeInsets.only(left: 12, right: 5, top: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 5, top: 10),
                            child: Text(
                              "Prepare for Assessment",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.red,
                        margin: EdgeInsets.only(left: 19),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.006,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(
                              left: 12,
                              right: 5,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 5,
                            ),
                            child: Text(
                              "System Setup",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.red,
                        margin: EdgeInsets.only(left: 19),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.006,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(
                              left: 12,
                              right: 5,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 5,
                            ),
                            child: Text(
                              "Start  Assessment",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.80,
              child: Card(
                  child: Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          "System Setup",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Sed prespiciants unde omanis iste natus error sit volumptatem accusantium doloremque laudantium, totaneum apperian eaque ipsa quae ab illo invetore veritantis et quasi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        height: MediaQuery.of(context).size.height * 0.40,
                        child: Row(
                          children: [
                            Container(
                              child: Image.network(
                                "https://cdn.onlinewebfonts.com/svg/img_574120.png",
                                fit: BoxFit.fill,
                              ),
                              margin: EdgeInsets.only(left: 30),
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 30),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(top: 30),
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.55,
                                    decoration: BoxDecoration(
                                        color: Colors.lightGreenAccent,
                                        border: Border.all(
                                            color: Colors.lime, width: 2)),
                                    child: Text(
                                      "Connecting the camera perfect",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white)),
                                      child: DropdownButton(
                                        items: [
                                          DropdownMenuItem(
                                            value: 1,
                                            child: Text(
                                              "Lenovo Easy Camera(O4f:24f241)",
                                              style: TextStyle(fontSize: 25),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                        onChanged: (_value) =>
                                            {print(_value.toString())},
                                        hint: Text(
                                          "Lenovo Easy Camera(O4f:24f241)",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      )),
                                  Container(
                                    padding: EdgeInsets.all(30),
                                    child: Text(
                                      "can you see yourself  in the camera? Make sure that your camera is will ajusted and thatyour face is seen clearly",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.ltr,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2)),
                              alignment: Alignment.center,
                              height: 30,
                              width: 90,
                              child: Text(
                                "Back",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              alignment: Alignment.center,
                              height: 30,
                              width: 90,
                              child: Text(
                                "Start",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
