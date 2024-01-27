import 'package:bloc_project/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>>{
  TodoCubit():  super([]);

  void addTodo(String title){
    final todo = Todo(name: title, createdAt: DateTime.now());
   // state.add(todo);
   // emit([...state]);
    emit([...state,todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {

    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }


}