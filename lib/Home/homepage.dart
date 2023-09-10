import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meeting {
  final String title;
  final String date;
  final String time;
  Meeting(this.title, this.date, this.time);
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Meeting> upcomingMeetings = [
    Meeting('physics', '15-09-2003', '9:00 AM'),
    Meeting('chemistry', '17-09-2003', '2:30 PM'),
  ];

  final List<Meeting> pastMeetings = [
    Meeting('Maths', '10-09-2003', '10:00 AM'),
    Meeting('English', '08-09-2003', '11:00 AM'),
    Meeting('History', '07-09-2003', '08:00 AM'),
    Meeting('Hindi', '05-09-2003', '7:00 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 225, 199),
        centerTitle: true,
        title: const Text(
          "Meeting app",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: MediaQuery.of(context).size.width * 0.08,
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          // shadowColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 158, 225, 199),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              ListTile(
                leading: Icon(
                  Icons.library_books,
                  color: Colors.black,
                ),
                title: Text("Logs"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  CupertinoIcons.bell_solid,
                  color: Colors.black,
                ),
                title: Text("Notifications"),
                onTap: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Upcoming Meetings',
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 158, 225, 199),
                    ),
                    child: ListView.builder(
                      itemCount: upcomingMeetings.length,
                      itemBuilder: (BuildContext context, int index) {
                        final meeting = upcomingMeetings[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * 0.6),
                          ),
                          elevation: 10.0,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 8.0),
                          child: ListTile(
                            title: Text(meeting.title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('DATE: ${meeting.date}'),
                                Text('Time: ${meeting.time}'),
                              ],
                            ),
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Past Meetings',
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 158, 225, 199),
                    ),
                    child: ListView.builder(
                      itemCount: pastMeetings.length,
                      itemBuilder: (BuildContext context, int index) {
                        final meeting = pastMeetings[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * 0.6),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          elevation: 10.0,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 8.0),
                          child: ListTile(
                            title: Text(meeting.title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('DATE: ${meeting.date}'),
                                Text('Time: ${meeting.time}'),
                              ],
                            ),
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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



      // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Column(
        //       children: [
        //         Container(
        //           height: 200,
        //           width: 300,
        //           color: Colors.deepPurple[50],
        //         ),
        //         Container(
        //           height: 200,
        //           width: 300,
        //           color: Colors.deepPurple[200],
        //         ),
        //         Container(
        //           height: 200,
        //           width: 300,
        //           color: Colors.deepPurple[100],
        //         ),
        //       ],
        //     ),
        //   ],
        // ),