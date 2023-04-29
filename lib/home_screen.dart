import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var titlearray = [
    'Raees',
    'Ali',
    'Ahad',
    'Mohit',
    'Gohar',
    'Abdullah',
    'Shahzad',
    'Umair',
    'Nauman',
    'Ahmed',
  ];
  var subarray = [
    'Where are You',
    'Who are You',
    'Is there any issue',
    'I wanna talk to You',
    'Sir Can i get your some time',
    'Sir i wanna appointment from you',
    'Nope',
    'Yup',
    'This Could be precious',
    'No one can beat you'
  ];
  var trailing = [
    '9:45 AM',
    '6:10 AM',
    '10:49 AM',
    '9:45 AM',
    '11:09 AM',
    '9:45 AM',
    '9:45 AM',
    '9:45 AM',
    '9:45 AM',
    '9:45 AM',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: false,
          title: Text('Whatsapp'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text('Privacy')),
                      PopupMenuItem(child: Text('Settings')),
                      PopupMenuItem(child: Text('Logout')),
                    ])
          ],
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt,
                color: Colors.grey,
                size: 50,
              ),
            ],
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage(index % 2 == 0
                        ? 'images/raees.jpg'
                        : 'images/background.jpg')),
                title: Text(titlearray[index]),
                subtitle: Text(subarray[index]),
                trailing: Text(trailing[index]),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.green),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                        backgroundImage: AssetImage(index % 2 == 0
                            ? 'images/raees.jpg'
                            : 'images/background.jpg')),
                  ),
                  title: Text(titlearray[index]),
                  subtitle: Align(
                    alignment: Alignment.topLeft,
                    child: Text(trailing[index]),
                  ));
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(index % 2 == 0
                          ? 'images/raees.jpg'
                          : 'images/background.jpg')),
                  title: Text(titlearray[index]),
                  subtitle: Text(trailing[index]),
                  trailing:
                      Icon(index % 2 == 0 ? Icons.phone : Icons.video_call));
            },
          )
        ]),
      ),
    );
  }
}
