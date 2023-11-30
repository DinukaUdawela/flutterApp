import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mytargetx/pages/target/create.dart';
import 'package:mytargetx/tabs/ChartPage.dart';
import 'package:mytargetx/tabs/Historypage.dart';
import 'package:mytargetx/tabs/HomePage.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

//


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Target',
        home: Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int index = 0;
  late List<Widget> tabs = [HomePage(), ChartPage(), HistoryPage()];
  Widget? page;

  @override
  void initState() {
    super.initState();
    // Initialize tabs here
    tabs = [HomePage(), ChartPage(), HistoryPage()];
  }
//
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Target"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            page = const TargetCreate();
          });
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Dinuka Udawela"),
              accountEmail: Text("dinukaudawela@gmail.com"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: Colors.white,
              //   child: Text(
              //     "J",
              //     style: TextStyle(fontSize: 40.0),
              //   ),
              // ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/D5603AQEAjoBvALdIEQ/profile-displayphoto-shrink_200_200/0/1677137747328?e=2147483647&v=beta&t=6FtNCidJV0U5ytGCHlleAvs5nay4cqTxy0zMxIfaAWY'),
              ),
              // Optionally, you can also provide a background image for the header
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                // Update the state of the app when clicked
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                // Update the state of the app when clicked
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            // Add more ListTiles for other drawer items
          ],
        ),
      ),
      body: (page == null) ? tabs[index] : page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
            page = null; //error here
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "CHARTS"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "HISTORY"),
        ],
      ),
    );
  }
}

