import 'package:flutter/material.dart';

class TextPage extends StatelessWidget{
  const TextPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('text page'),
      ),
      body: const Center(child: Text('テキスト'),),
    );
  }
}  