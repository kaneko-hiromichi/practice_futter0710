import 'package:flutter/material.dart';

class TextSendPage extends StatefulWidget {
  @override
  _TextSendState createState() => _TextSendState();
}

class _TextSendState extends State<TextSendPage> {
  String _inputText = ""; // 状態を保持する変数
  String _sendText = "";

  void _updateText(String input) {
    setState(() {
      _inputText = input; // テキストフィールドの内容を状態に保持
    });
  }

  void _send() {
    setState(() {
      _sendText = _inputText; // テキストフィールドの内容を送信状態に保持
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextSend'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: _updateText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _send,
              child: Text('送信'),
            ),
            SizedBox(height: 20),
            Text(
              '$_sendText',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
