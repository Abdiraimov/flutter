import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson34_firebase_02/model.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  /////////////////////////////////
  Future<void> readData() async {
    final db = FirebaseFirestore.instance;
    await db.collection("todos").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
  }

  ///////////////////////////////////
  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
        title: _titleController.text,
        description: _descriptionController.text,
        isComplated: isCompleted,
        author: _authorController.text);
    await db.collection('todos').add(todos.toMap());
  }

  @override
  void initState() {
    readData();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 15,
          right: 10,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, write title';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Title',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, write description';
                  }
                  return null;
                },
                maxLines: 8,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Description',
                ),
              ),
              CheckboxListTile(
                  value: isCompleted,
                  onChanged: (v) {
                    setState(() {
                      isCompleted = v!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, write author';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Author',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return  SimpleDialog(
                              backgroundColor: Colors.white.withOpacity(0.5),
                              title: const Text(
                                'Сиздин маалыматыңыз жөнөтүлүүдө',
                                textAlign: TextAlign.center,),
                                
                              children: [
                                CupertinoActivityIndicator(
                                  radius: 20,
                                  color: Colors.blue.withOpacity(0.5),
                                )
                              ],
                            );
                          });
                      await addTodo();
                      Navigator.popUntil(context, (route) => route.isFirst);
                    } else {
                      null;
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Отправить',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
