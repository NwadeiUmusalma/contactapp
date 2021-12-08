// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listofContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("${myContacts[index]["image"]}"),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listofContacts = [
  {
    "name": "Salma Abu",
    "email": "nwadei@gmail.com",
    "Location": "Dondoli",
    "phone": "0558830019",
    "group": "National mobile app dev",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Saaka Sherif",
    "email": "saakasherif@gmail.com",
    "Location": "Kpaguri",
    "phone": "0558830400",
    "group": "Pretech",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Wasila",
    "email": "musah@gmail.com",
    "Location": "Dondoli",
    "phone": "0244330019",
    "group": "NGT",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Barata",
    "email": "nwadeibarata@gmail.com",
    "Location": "Dobili",
    "phone": "0507456322",
    "group": "Art D",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Esther",
    "email": "Dj@gmail.com",
    "Location": "upper West",
    "phone": "0557554712",
    "group": "Transition",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Abu",
    "email": "aaaa@gmail.com",
    "Location": "Accra",
    "phone": "0204334609",
    "group": "Family",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Honoble",
    "email": "musahumu@gmail.com",
    "Location": "Logu",
    "phone": "0248790993",
    "group": "Yourth",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Thomas",
    "email": "na@gmail.com",
    "Location": "Wapaani",
    "phone": "0546312699",
    "group": "Farm workers",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Salma",
    "email": "nwadeimusahumusalma@gmail.com",
    "Location": "Dondoli",
    "phone": "0558830019",
    "group": "Family",
    "image": "htt://picsum.photos/200/300?random="
  },
  {
    "name": "Umusalma",
    "email": "musahumusalma@gmail.com",
    "Location": "Magun",
    "phone": "0558866019",
    "group": "Ladies",
    "image": "htt://picsum.photos/200/300?random="
  }
];
