import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/add_noteButtom_shet.dart';
import 'package:notes_app/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.amberAccent,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
