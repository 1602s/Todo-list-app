import 'package:flutter/material.dart';

class TaskInput extends StatelessWidget {
  final Function(String) onSubmit;
  final TextEditingController controller = TextEditingController();

  TaskInput({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Add new task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton.icon(
            onPressed: () {
              if (controller.text.trim().isNotEmpty) {
                onSubmit(controller.text);
                controller.clear();
              }
            },
            icon: Icon(Icons.add),
            label: Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
