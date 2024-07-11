import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // httpパッケージのインポート

class HttpPage extends StatefulWidget {
  @override
  _HttpState createState() => _HttpState();
}

class _HttpState extends State<HttpPage> {
  // メソッドの定義
  String _httpStateNum = '';

  Future<void> getRepo() async {
    var domain = 'api.github.com';
    var subDir = 'users/kaneko-hiromichi/repos';
    // https()の引数は第１がドメイン、第２がサブディレクトリ
    var url = Uri.https(domain, subDir);
    var response = await http.get(url);

    setState(() {
      _httpStateNum = response.statusCode.toString();
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
              child: Text('取得'),
            ),
            SizedBox(height: 20),
            Text('HTTP Status Code: $_httpStateNum'), // ステータスコードを表示
            Text('↑200が出たら正常↑'),
          ],
        ),
      ),
    );
  }
}
