import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 22,
          ),
          CustomTextField(
            hint: 'title',
          ),
          CustomTextField(
            hint: 'Contet',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}