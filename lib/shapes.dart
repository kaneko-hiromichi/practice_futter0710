import 'package:flutter/material.dart';

class ShapesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Shapes Page'),
      ),
      body:Center(
        child: Column(
          //Columnは縦に並べる
          //MainAxisAlignment.centerで縦の中央に寄せる
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.black)
                ),
                SizedBox(
                width: 10
                ),
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.black)
                ),
              ],
            ),
            Row(
              // MainAxisAlignment.centerで横(Row)の中央に寄せる
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.red)
                ),
                SizedBox(
                width: 10
                ),
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.red)
                ),
              ],
            ),
            Row(
              // MainAxisAlignment.endで横(Row)の右に寄せる
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.blue)
                ),
                SizedBox(
                width: 10
                ),
                SizedBox(height: 50,
                width: 50,
                child: ColoredBox(color: Colors.blue)
                ),
              ],
            )
          ],
        ),
      )

    );
  }
}