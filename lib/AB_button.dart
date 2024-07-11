import 'package:flutter/material.dart';

class ABButton extends StatefulWidget {
  @override
  _ToggleTextPageState createState() => _ToggleTextPageState();
}

class _ToggleTextPageState extends State<ABButton> {
  bool isAText = true;

  void _toggleText() {
    setState(() {
      isAText = !isAText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Text Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              isAText ? 'A' : 'B',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleText,
              child: const Text('A⇔B'),
            ),
          ],
        ),
      ),
    );
  }
}