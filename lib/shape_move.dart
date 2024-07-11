import 'package:flutter/material.dart';

class ShapeMovePage extends StatefulWidget {
  @override
  _ShapeMoveState createState() => _ShapeMoveState();
}

class _ShapeMoveState extends State<ShapeMovePage> {
  // stateの定義
  MainAxisAlignment _alignment = MainAxisAlignment.center;

  // メソッドの定義
  void _changeAlignment(MainAxisAlignment alignment) {
    setState(() {
      _alignment = alignment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShapesMove'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: _alignment,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => _changeAlignment(MainAxisAlignment.start),
                child: Text('←'),
              ),
              ElevatedButton(
                onPressed: () => _changeAlignment(MainAxisAlignment.center),
                child: Text('Center'),
              ),
              ElevatedButton(
                onPressed: () => _changeAlignment(MainAxisAlignment.end),
                child: Text('→'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
