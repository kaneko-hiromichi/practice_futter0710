import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldPage> {
  String _inputText = '';

  void _updateText(String newText) {
    print('プリント');
    setState(() {
      _inputText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    // UIを構築する
    return Scaffold(
      appBar: AppBar(
        title: Text('テキストフィールド'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: _updateText, // テキストが変更されたときに呼び出されるメソッド
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'テキスト入力',
              ),
            ),
            SizedBox(height: 20),
            Text(
              '出力: $_inputText', // 状態を表示
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
