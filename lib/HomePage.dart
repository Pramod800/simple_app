// ignore: file_names
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 245, 223),
        appBar: AppBar(
          elevation: 50,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor:
                Color.fromARGB(255, 192, 49, 56), // Navigation bar
            statusBarColor: Color.fromARGB(255, 85, 138, 24), // Status bar
          ),
          leading: IconButton(
              onPressed: () {}, iconSize: 35, icon: const Icon(Icons.menu)),
          title: const Center(
            child: Text("UI/Design"),
          ),

          // backgroundColor: Theme.of(context).primaryColor,
          shadowColor: const Color.fromARGB(0, 0, 0, 0),
          actions: [
            IconButton(
                icon: const Icon(Icons.search_rounded),
                iconSize: 35,
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.person),
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }),
          ],

          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.green, Colors.red]))),
          // bottom: TabBar(
          //   onTap: (index) {
          //     print("selected tab is $index");
          //   },
          //   tabs: const [
          //     Tab(icon: Icon(Icons.home), text: "Home"),
          //     Tab(icon: Icon(Icons.star), text: "Star"),
          //     Tab(icon: Icon(Icons.face), text: "Face")
          //   ],
          // ),

          //background color of appbar
        ),
        body: SafeArea(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.red],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add_circle)),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
              height: 65,
              decoration: BoxDecoration(
                gradient:
                    const LinearGradient(colors: [Colors.red, Colors.green]),
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
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: pageIndex == 0
                          ? const Icon(
                              Icons.home_filled,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                            ),
                      iconSize: 35,
                      color: const Color.fromARGB(255, 248, 247, 247)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: pageIndex == 1
                          ? const Icon(
                              Icons.work_rounded,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.work_outline_rounded,
                              color: Colors.white,
                            ),
                      iconSize: 35,
                      color: Colors.white),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: pageIndex == 2
                          ? const Icon(
                              Icons.widgets_rounded,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.widgets_outlined,
                              color: Colors.white,
                            ),
                      iconSize: 35,
                      color: Colors.white),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? const Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.settings_cell_rounded,
                            color: Colors.white,
                          ),
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
