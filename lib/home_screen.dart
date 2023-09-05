import 'package:flutter/material.dart';
import 'list_screen.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("To-do List",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        )),
        const SizedBox(height: 50,),
        Image.asset("assets/images/todo.png",
          height: 200, width: 200,),
        const SizedBox(height: 50,),
        ElevatedButton.icon(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListScreen()),
          );
        }
        ,
          icon: const Icon(Icons.arrow_circle_right),
        label:const Text("Start"),
        )

      ],
    );
  }
}