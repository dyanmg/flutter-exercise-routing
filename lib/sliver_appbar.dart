import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    backgroundColor: Colors.green,
                    leading: IconButton(
                        onPressed: () => print('Menekan home'),
                        icon: const Icon(Icons.home)),
                    actions: <Widget>[
                      IconButton(
                          onPressed: () => print('Menekan setting'),
                          icon: const Icon(Icons.settings))
                    ],
                    expandedHeight: 250,
                    floating: false,
                    snap: false,
                    pinned: true,
                    flexibleSpace: const FlexibleSpaceBar(
                        centerTitle: true,
                        title: Text(
                          'Sliver AppBar',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        background: Image(
                            image: AssetImage('assets/images/image_4.jpg'),
                            fit: BoxFit.cover)))
              ];
            },
            body: Center(
              child: Column(
                children: const <Widget>[Text('Belajar Custom SliverAppBar')],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )));
  }
}
