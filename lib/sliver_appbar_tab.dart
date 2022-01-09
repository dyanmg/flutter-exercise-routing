import 'package:flutter/material.dart';

class MySliverAppBarTab extends StatelessWidget {
  const MySliverAppBarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            background: Image(
                                image: AssetImage('assets/images/image_4.jpg'),
                                fit: BoxFit.cover))),
                    SliverPadding(
                        padding: EdgeInsets.all(8),
                        sliver: SliverList(
                            delegate: SliverChildListDelegate(const [
                          TabBar(
                              labelColor: Colors.black87,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Tab(
                                    icon: Icon(Icons.audiotrack),
                                    text: 'Songs'),
                                Tab(
                                    icon: Icon(Icons.collections),
                                    text: 'Albums'),
                                Tab(icon: Icon(Icons.star), text: 'Favourites')
                              ])
                        ]))),
                  ];
                },
                body: Center(
                  child: Column(
                    children: const <Widget>[
                      Text('Belajar Custom SliverAppBar')
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ))));
  }
}
