import 'package:flutter/material.dart';
import 'package:flutter_routing/sliver_appbar.dart';
import 'package:flutter_routing/sliver_appbar_tab.dart';

/*
 Kustomisasi Scaffold:
  - AppBar memiliki berbagai attribut
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Belajar AppBar',
      home: MySliverAppBarTab(),
      debugShowCheckedModeBanner: false, // Kelas yang pertama kali di buka
    );
  }
}

class CustomBarApp extends StatelessWidget {
  const CustomBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom AppBar'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                print('Menekan Home');
              },
              icon: const Icon(Icons.home)),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  print('Menekan Setting');
                },
                icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  print('Menekan Gallery');
                },
                icon: const Icon(Icons.camera_alt))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.green, Colors.blue])),
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[Text('Belajar mengkustom AppBar')])));
  }
}
