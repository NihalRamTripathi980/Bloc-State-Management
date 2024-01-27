import 'package:bloc_project/cubit/todo_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/todo_model.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.pushNamed(context, '/add-todo');
      }
      ,
      child: const Icon(Icons.add),),
      body: BlocBuilder<TodoCubit,List<Todo>>(
        builder: (context,state) {
          return ListView.builder(
            itemCount: state.length,

              itemBuilder: (context,index){
              final todo =state[index];
              return ListTile(
                title: Text(todo.name),
                subtitle: Text(todo.createdAt.toString()),
              );

          });
        }
      ),
    );
  }
}
