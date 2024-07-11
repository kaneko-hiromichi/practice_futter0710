import 'shape_move.dart';
import 'shapes.dart';
import 'text_field.dart';
import 'text_send.dart';
import 'package:flutter/material.dart';
import 'AB_button.dart';
import 'message_button.dart';
import 'text.dart';
import 'the_simple.dart';
import 'counter_page.dart';
import 'todo_page.dart';
import 'form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },
              child: const Text('Counter Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToDoPage()),
                );
              },
              child: const Text('To-Do List Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: const Text('Form Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TheSimple()),
                );
              },
              child: const Text('TheSimple'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessageButton()),
                );
              },
              child: const Text('MessageButton'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ABButton()),
                );
              },
              child: const Text('ABButton'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextFieldPage()),
                );
              },
              child: const Text('TextFieldPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextSendPage()),
                );
              },
              child: const Text('TextSendPage'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextPage()),
                  );
                },
                child: const Text('TextPage')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShapesPage()),
                );
              },
              child: const Text('ShapesPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShapeMovePage()),
                );
              },
              child: const Text('ShapeMove'),
            ),
          ],
        ),
      ),
    );
  }
}
