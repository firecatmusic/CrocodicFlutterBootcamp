import 'package:flutter/material.dart';
import 'package:flutter_hw/model/Profile.dart';
import 'package:flutter_hw/ui/detailprofile.dart';
import 'package:flutter_hw/widget/ItemProfile.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 10;
  }

  @override
  Widget build(BuildContext context) {
    final profiles = [
      Profile(name: "Crocodic Studio", role: "Android Engineer"),
      Profile(name: "Crocodic Studio 2", role: "iOS Engineer"),
      Profile(name: "Crocodic Studio 3", role: "Web Engineer"),
      Profile(name: "Crocodic Studio 4", role: "Marketing")
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Week 1",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(padding: EdgeInsets.all(16), child: Icon(Icons.notifications)),
          ],
        ),
        body: Container(
            color: Colors.green[50],
            child: ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (BuildContext context, int index) => ItemProfile(
                data: profiles[index],
                onClick: (data) => Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (builder) => DetailProfile(data: data))),
              ),
              padding: const EdgeInsets.all(8),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
        ));
  }
}
