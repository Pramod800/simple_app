import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue, // Navigation bar
            statusBarColor: Colors.lightGreen, // Status bar
          ),
          leading: IconButton(
              onPressed: () {}, iconSize: 35, icon: const Icon(Icons.menu)),
          title: const Center(
            child: Text("AppBar"),
          ),

          backgroundColor: Theme.of(context).primaryColor,
          shadowColor: const Color.fromARGB(22, 33, 39, 45),
          actions: [
            IconButton(
                icon: const Icon(Icons.camera), iconSize: 35, onPressed: () {}),

            IconButton(
                icon: const Icon(Icons.search), iconSize: 35, onPressed: () {}),

            //more widgets to place here
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.send))
              //more tabs here
            ],
          ),

          //background color of appbar
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10,
                        )
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: const Text("My name is pramod",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.add_circle)),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                      ),
                      iconSize: 35,
                      color: Color.fromARGB(255, 248, 247, 247)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 35,
                      color: Colors.white),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      iconSize: 35,
                      color: Colors.white),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    iconSize: 35,
                    color: Colors.white,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
