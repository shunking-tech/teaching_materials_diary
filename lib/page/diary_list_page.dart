import 'package:flutter/material.dart';
import 'package:teaching_materials_diary/page/edit_diary_page.dart';

class DiaryListPage extends StatelessWidget {
  const DiaryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const EditDiaryPage()
          ));
        },
      ),
    );
  }
}
