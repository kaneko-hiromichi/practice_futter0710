import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // jsonDecodeを使用するためのインポート

class HttpPage extends StatefulWidget {
  @override
  _HttpState createState() => _HttpState();
}

class _HttpState extends State<HttpPage> {
  // ステートの定義
  String _httpStateNum = '';
  Map<String, dynamic> _responseBody = {}; // Map型に変更

  Future<void> getRepo() async {
    var domain = 'api.github.com';
    var subDir = 'users/kaneko-hiromichi/repos';
    var url = Uri.https(domain, subDir);
    var response = await http.get(url);

    setState(() {
      _httpStateNum = response.statusCode.toString();
      try {
        _responseBody = jsonDecode(response.body) as Map<String, dynamic>; // JSON文字列をMapに変換
      } catch (e) {
        _responseBody = {'error': 'Failed to parse JSON'};
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getRepo(); // 非同期関数の呼び出し
              },
              child: Text('httpステータス取得'),
            ),
            SizedBox(height: 20),
            Text('HTTP Status Code: $_httpStateNum'), // ステータスコードを表示
            Text('↑200が出たら正常↑'),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text('Response Body: ${_responseBody.toString()}'), // Mapを文字列に変換して表示
              ),
            ),
          ],
        ),
      ),
    );
  }
}
