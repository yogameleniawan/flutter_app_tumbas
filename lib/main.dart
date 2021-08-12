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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFFFF6E4E),
                  size: 14,
                ),
                Text(" Malang, Indonesia",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
              ],
            ),
          ),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Category",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Text("tes"),
                    Text("tes"),
                    Text("tes"),
                    Text("tes"),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
