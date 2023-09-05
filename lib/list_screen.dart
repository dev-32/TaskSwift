import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget{
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Todo List"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle),
            onPressed:(){},
            tooltip: 'insert a new item',
          ),
          IconButton(
            icon: const Icon(Icons.remove_circle),
            onPressed:(){},
            tooltip: 'remove the selected item',
          ),
        ],
      ),
        body: Column());
  }
}