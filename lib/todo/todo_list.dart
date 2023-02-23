import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return _createTodoList();
  }

  Widget _createTodoList() {
    return ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return _createTodoCard();
        }
        ,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 8.0,
            height: 8.0,
            color: Colors.transparent,
          );
        },
    );
  }

  Widget _createTodoCard() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: _createTodoItemRow()
      ),
    );
  }

  Widget _createTodoItemRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _createTodoItemContentWidget(),
        Icon(Icons.keyboard_arrow_right, color: Colors.green)
      ],
    );
  }

  Widget _createTodoItemContentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Todo Title",style: TextStyle(fontSize: 24.0, color: Colors.green)),
        Divider(
        thickness: 8.0,
          height: 8.0,
        color: Colors.transparent,),
        Text("2022.02.23",
        style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),)
      ],
    );
  }


}