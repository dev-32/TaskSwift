import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/add_list.dart';
import 'package:todolist/list_item.dart';

class TodoList extends StatefulWidget{
  const TodoList({super.key});
  @override
  State<TodoList> createState() {
    return _TodoListState();
  }
}

class _TodoListState extends State<TodoList>{
  final List<ListItem> _addedList = [];
   Color _color = Colors.green;
  void _addItem() async{
    final newItem = await Navigator.of(context).push(MaterialPageRoute(builder: (ctx)
    => const AddList()));
    if(newItem == null) {
      return;
    }
    setState(() {
      _addedList.add(newItem);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        backgroundColor: Colors.blueGrey,

        actions: [
          IconButton(
          onPressed: _addItem, icon:
          const Icon(Icons.add_box_outlined
            ,size: 30,
          ))
        ],
      ),
      body:

      ListView.builder(
          itemCount: _addedList.length,
          itemBuilder: (context, index) {
        final item = _addedList[index];
        if(item.level == 'High') {
          _color = Colors.red;
        }
        if(item.level == 'Medium') {
          _color = Colors.orangeAccent;
        }
        if(item.level == 'Low'){
          _color = Colors.green;
        }
        String formattedDate = DateFormat.yMMMd().format(item.date);
        return ListTile(
          leading: Container(
            height: 19,
            width: 19,
            color:_color
          ),
          title: Text(item.name),
          subtitle: Text(formattedDate),
        );
      },

    )
  );
  }
}
