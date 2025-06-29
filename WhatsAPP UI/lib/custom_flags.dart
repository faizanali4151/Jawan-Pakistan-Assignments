import 'package:flutter/material.dart';

class CustomFlags extends StatelessWidget {
  const CustomFlags({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          'Countries Flags',
        ),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSingleContainer(50, 170, Colors.red, () {}),
              _buildSingleContainer(50, 170, Colors.white, () {}),
              _buildSingleContainer(50, 170, Colors.red, () {}),
              SizedBox(
                height: 50,
              ),
              _buildSingleContainer(30, 170, Colors.red, () {}),
              _buildSingleContainer(90, 170, Colors.orange, () {}),
              _buildSingleContainer(30, 170, Colors.red, () {}),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  _buildSingleContainer(100, 58, Colors.green, () {}),
                  _buildSingleContainer(100, 58, Colors.white, () {}),
                  _buildSingleContainer(100, 58, Colors.red, () {}),
                ],
              )
            ],
          ),
          // SizedBox(
          //   width: 20,
          // ),
          Spacer(),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSingleContainer(50, 170, Colors.orange, () {}),
              _buildSingleContainer(50, 170, Colors.white, () {}),
              _buildSingleContainer(50, 170, Colors.green, () {}),
              SizedBox(
                height: 50,
              ),
              _buildSingleContainer(50, 170, Colors.black, () {}),
              _buildSingleContainer(50, 170, Colors.white, () {}),
              _buildSingleContainer(50, 170, Colors.yellow, () {}),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  _buildSingleContainer(100, 58, Colors.green, () {}),
                  _buildSingleContainer(100, 58, Colors.red, () {}),
                  _buildSingleContainer(100, 58, Colors.red, () {}),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildSingleContainer(
    height, width, color, VoidCallback onPressHandler) {
  return GestureDetector(
    onTap: onPressHandler,
    child: Container(
      height: height.toDouble(),
      width: width.toDouble(),
      decoration: BoxDecoration(
        color: color,
      ),
    ),
  );
}
