import 'package:bloc_project/cubit/todo_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              hintText: 'Title'
            ),
          ),
          ElevatedButton(onPressed: (){
            BlocProvider.of<TodoCubit>(context).addTodo(textEditingController.text.toString());
            Navigator.pop(context);

          }, child: const  Text("Add"))

        ],
      ),
    );
  }
}
