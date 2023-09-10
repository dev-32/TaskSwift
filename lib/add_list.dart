import 'package:flutter/material.dart';
import 'package:todolist/categories.dart';
import 'package:todolist/list_item.dart';

import 'category.dart';

class AddList extends StatefulWidget{
  const AddList({super.key});
  @override
  State<AddList> createState() {
    return _AddListState();
  }
}

class _AddListState extends State<AddList>{
  final _formKey = GlobalKey<FormState>();
  String? _nameTask;
  String? _priority ;
  Color? _color ;

  void _addItem() {
    final isValid = _formKey.currentState!.validate();
    if(!isValid){
      return;
    }
   _formKey.currentState!.save();
    print(_nameTask);
    print(_priority);

    _formKey.currentState!.dispose();
    Navigator.of(context).pop(
      ListItem(name: _nameTask!, date: DateTime.now(), level: _priority!)
    );



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Add new tasks"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50 ||
                      int.tryParse(value) != null) {
                    return 'Must be between 1 and 50 characters.';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                onSaved: (value) {
                      _nameTask =value ;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: DropdownButtonFormField(

                      decoration: const InputDecoration(
                        label: Text("Priority"),
                      ),
                        items: [
                          for (final category in categories.entries)
                            DropdownMenuItem  (
                              value: category.value.title,
                              child: Row(
                                children: [
                                  Container(
                                    width: 17,
                                    height: 17,
                                    color: category.value.color,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(category.value.title)
                                ],
                              ),
                            )
                        ],
                        onChanged: (value) {
                          _priority = value;
                        }),
                  ),
                  const SizedBox(
                    width: 260,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed:  () {
                        _formKey.currentState!.reset();
                      },
                      child: const Text('Reset')),
                  ElevatedButton(
                      onPressed: _addItem,
                      child: const Text('Add Item'))

                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}