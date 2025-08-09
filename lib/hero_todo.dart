// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TodoPageWidget()));
}

class TodoPageWidget extends StatefulWidget {
  const TodoPageWidget({super.key});

  @override
  State<TodoPageWidget> createState() => _TodoPageWidgetState();
}

class _TodoPageWidgetState extends State<TodoPageWidget> {
  @override
  Widget build(BuildContext context) {
    List<TodoItem> list = [
      TodoItem(title: '운동하기', subTitle: '달리기하기 '),
      TodoItem(title: '플러터 과제', subTitle: '장바구니 구현 '),
      TodoItem(title: 'git 배우기', subTitle: ''),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            var todo = list[index];

            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodoDetailWidget(todo: todo),
                  ),
                );
              },
              leading: Hero(
                tag: 'tag_${todo.title}',
                child: CircleAvatar(radius: 20, child: Text(todo.title[0])),
              ),
              title: Text(todo.title),
              subtitle: Text(todo.subTitle),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}

class TodoDetailWidget extends StatelessWidget {
  TodoItem todo;
  TodoDetailWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'tag_${todo.title}',
              child: CircleAvatar(radius: 50, child: Text(todo.title[0])),
            ),
            Text(todo.title),
            Text(todo.subTitle),
          ],
        ),
      ),
    );
  }
}

class TodoItem {
  String title;
  String subTitle;
  TodoItem({required this.title, required this.subTitle});
}
