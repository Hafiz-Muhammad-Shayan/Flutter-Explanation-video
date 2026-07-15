import 'package:flutter/material.dart';

class GridviewExample extends StatelessWidget {
  const GridviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            //childAspectRatio: 0.5 ye property height width ko set karne ke liyen hoti he
            mainAxisSpacing: 10,    //top to bottom spacing
            crossAxisSpacing: 20,   //left to right spacing
          ),
        children: [
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
        ],
      ),
    );
  }
}
