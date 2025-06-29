import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      {"title": "Sunday"},
      {"title": "Monday"},
      {"title": "Tuesday"},
      {"title": "Wednesday"},
      {"title": "Thursday"},
      {"title": "Friday"},
      {"title": "Saturday"}
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: index == 0 ? 0 : 20),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: index == 0 ? 0 : 20),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan,
                    ),
                    alignment: Alignment.center,
                    child: Text('Item ${data[index]['title']}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
