import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'CalculatorGwech',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      // A widget which will be started on application startup
    );
  }
}

class MyHomePage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? hasil = 0, no1 = 0, no2 = 0;

  tambah() {
    setState(() {
      no1 = int.parse(controller1.text);
      no2 = int.parse(controller2.text);
      hasil = no1! + no2!;
    });
  }

  kurang() {
    setState(() {
      no1 = int.parse(controller1.text);
      no2 = int.parse(controller2.text);
      hasil = no1! - no2!;
    });
  }

  kali() {
    setState(() {
      no1 = int.parse(controller1.text);
      no2 = int.parse(controller2.text);
      hasil = no1! * no2!;
    });
  }

  bagi() {
    setState(() {
      no1 = int.parse(controller1.text);
      no2 = int.parse(controller2.text);
      hasil = no1! ~/ no2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Itung Itungan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Hasil : $hasil",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Masukkan nomor pertama",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Masukkan nomor kedua",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  tambah();
                  controller1.clear();
                  controller2.clear();
                },
                child: Text("Tambah")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  kurang();
                  controller1.clear();
                  controller2.clear();
                },
                child: Text("Kurang")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  kali();
                  controller1.clear();
                  controller2.clear();
                },
                child: Text("Kali")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  bagi();
                  controller1.clear();
                  controller2.clear();
                },
                child: Text("Bagi")),
          ],
        ),
      ),
    );
  }
}
