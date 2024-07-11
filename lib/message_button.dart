import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  void _showMessage(BuildContext context) {
    const snackBar = SnackBar(content: Text("message"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  MessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("message")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMessage(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // 背景色
            foregroundColor: Colors.white, // テキスト色
          ),
          child: const Text('Show Message'),
        ),
      ),
    );
  }
}
