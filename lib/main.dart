import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabController? _tabController;
  TextEditingController _inputSearch = new TextEditingController();
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 115),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.account_box_sharp,
                  color: Color(0xFFFF6E4E),
                  size: 14,
                ),
                Text(" Hello, User!",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.filter_list_rounded,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: DefaultTabController(
          length: 6,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Category",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text("view all",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFFFF6E4E))),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TabBar(
                          onTap: onTabTapped,
                          controller: _tabController,
                          isScrollable: true,
                          indicatorColor: Colors.transparent,
                          unselectedLabelColor: Colors.black,
                          labelColor: Color(0xFFFF6E4E),
                          tabs: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 0
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.phone_android,
                                    color: _currentIndex == 0
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "Phones",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 1
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.computer,
                                    color: _currentIndex == 1
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "Computer",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 2
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.sports_motorsports,
                                    color: _currentIndex == 2
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "Bike",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 3
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.house,
                                    color: _currentIndex == 3
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "House",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 4
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.health_and_safety,
                                    color: _currentIndex == 4
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "Health",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Tab(
                                icon: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: _currentIndex == 5
                                      ? Color(0xFFFF6E4E)
                                      : Colors.white,
                                  child: Icon(
                                    Icons.tv_sharp,
                                    color: _currentIndex == 5
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                                text: "Electronic",
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextFormField(
                                controller: _inputSearch,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFFFF6E4E), width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    filled: true,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    hintText: "Type in your text",
                                    fillColor: Colors.white70,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Color(0xFFFF6E4E),
                                    )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xFFFF6E4E),
                                child: Icon(Icons.grid_view_sharp,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hot Sales",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text("see more",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFFF6E4E))),
                              )),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/banner.png")),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(16.0)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFFF6E4E),
                              child: Text(
                                "New",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 20),
                          child: Text("Iphone 12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 115, left: 20),
                          child: Text("Súper. Mega. Rápido.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 145, left: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 6, bottom: 6, left: 20, right: 20),
                                child: Text(
                                  "Buy now!",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
