import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Tab Bar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.red,
                indicatorColor: Colors.grey,
                tabs: const [
                  Tab(
                    text: "abdul kader",
                  ),
                  Tab(
                    text: "abdul kader",
                  ),
                  Tab(
                    text: "abdul kader",
                  ),
                ]),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                  child: Text("abdul kader"),
                ),
                Center(
                  child: Text("abdul kader"),
                ),
                Center(
                  child: Text("abdul kader"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
