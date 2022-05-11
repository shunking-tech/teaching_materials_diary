import 'package:flutter/material.dart';

class EditDiaryPage extends StatefulWidget {
  const EditDiaryPage({Key? key}) : super(key: key);

  @override
  State<EditDiaryPage> createState() => _EditDiaryPageState();
}

class _EditDiaryPageState extends State<EditDiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("編集"),
      ),
    );
  }
}