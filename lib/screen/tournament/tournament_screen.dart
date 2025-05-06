import 'package:flutter/material.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Tabbar view'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () => Navigator.of(context).pop(),
          ),
          bottom: const TabBar(
            padding: EdgeInsets.zero,
            labelColor: Colors.purple,
            indicatorColor: Colors.purple,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.zero,
            tabs: [
              Tab(child: Text('Tab 1')),
              Tab(child: Text('Tab 2')),
              Tab(child: Text('Tab 3')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const Text('1'),
                InkWell(
                  onTap: () {
                    print('object');
                  },
                  child: Container(color: Colors.red, width: 300, height: 300),
                ),
              ],
            ),
            Column(
              children: [
                const Text('2'),
                Container(color: Colors.blue, width: 300, height: 300),
              ],
            ),
            Column(
              children: [
                const Text('3'),
                Container(color: Colors.yellow, width: 300, height: 300),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
