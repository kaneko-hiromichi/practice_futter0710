import 'package:flutter/material.dart';

class TheSimple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Simple'),
      ),
      body: const Center(
        child: Text('The Simple'),
      ),
    );
  }
}