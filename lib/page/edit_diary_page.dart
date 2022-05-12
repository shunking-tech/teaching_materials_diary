import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditDiaryPage extends StatefulWidget {
  const EditDiaryPage({Key? key}) : super(key: key);

  @override
  State<EditDiaryPage> createState() => _EditDiaryPageState();
}

class _EditDiaryPageState extends State<EditDiaryPage> {
  DateTime date = DateTime.now();
  double satisfactionLevel = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("編集"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: Size.infinite.width,
              height: 30,
              child: ElevatedButton(
                child: Text(
                  DateFormat('yyyy/MM/dd').format(date),
                  style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                onPressed: () {
                  showDatePicker(
                      context: context,
                      locale: const Locale("ja"),
                      initialDate: date,
                      firstDate: DateTime(2020),
                      lastDate: DateTime.now().add(const Duration(days: 365))
                  ).then((picked) {
                    if (picked != null) {
                      date = picked;
                      setState(() {});
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                    primary: Colors.grey
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.only(top: 16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const Align(alignment: Alignment.centerLeft, child: Text("1日の満足度")),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            satisfactionLevel.toInt().toString() + "%",
                            style: const TextStyle(fontSize: 24.0,),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      label: satisfactionLevel.toInt().toString() + "%",
                      min: 0,
                      max: 100,
                      value: satisfactionLevel,
                      divisions: 20,
                      onChanged: (value) {
                        satisfactionLevel = value;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}