import 'package:bottom_navigation_bar/pages/addinformation.dart';
import 'package:bottom_navigation_bar/pages/chat.dart';
import 'package:bottom_navigation_bar/pages/dashboard.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';
import 'package:bottom_navigation_bar/pages/setting.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> pages = [
    const Dashboard(),
    const Chat(),
    const Profile(),
    const Setting()
  ];
  final PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentPage = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: pageStorageBucket,
        child: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddInformation(),
            ),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).primaryColor,
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0
                              ? const Color.fromRGBO(100, 236, 199, 1)
                              : Colors.white,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: currentTab == 0
                                ? const Color.fromRGBO(100, 236, 199, 1)
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1
                              ? const Color.fromRGBO(100, 236, 199, 1)
                              : Colors.white,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab == 1
                                ? const Color.fromRGBO(100, 236, 199, 1)
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const Profile();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 2
                              ? const Color.fromRGBO(100, 236, 199, 1)
                              : Colors.white,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 2
                                ? const Color.fromRGBO(100, 236, 199, 1)
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const Setting();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 3
                              ? const Color.fromRGBO(100, 236, 199, 1)
                              : Colors.white,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            color: currentTab == 3
                                ? const Color.fromRGBO(100, 236, 199, 1)
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
