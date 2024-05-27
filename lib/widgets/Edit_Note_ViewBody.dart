import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class EditNoteViewbody extends StatefulWidget {
  const EditNoteViewbody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  State<EditNoteViewbody> creatState() => EditNoteViewBodyState();

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class EditNoteViewBodyState extends State<EditNoteViewbody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Title',
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChange: (value) {
              content = value;
            },
            hint: 'Contet',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
