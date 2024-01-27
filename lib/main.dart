import 'package:bloc_project/bloc/counter_bloc.dart';
import 'package:bloc_project/cubit/counter_cubit.dart';
import 'package:bloc_project/cubit/todo_cubit.dart';
import 'package:bloc_project/todo_page/add_todo.dart';
import 'package:bloc_project/todo_page/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
        create: (_)=> CounterCubit()),
        BlocProvider(create: (_)=>CounterBloc()),
        BlocProvider(create: (_)=>TodoCubit())

      ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          //home: const MyHomePage(title: 'Flutter Demo Home Page'),
          initialRoute: '/',
          routes: {
            '/':(_)=> const TodoList(),
            '/add-todo':(_)=> const AddTodo()
          },
        ),
      );
  }
}

